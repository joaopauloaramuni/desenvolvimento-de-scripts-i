'Script para listar os processos em execu��o e salvar essa lista em um arquivo txt.

Dim objWMIService, colProcess, objProcess, stringProcess, caminhoArquivoTxt

'Caminho para salvar o arquivo
caminhoArquivoTxt = "C:\Users\Public\processosAbertos.txt"   'Edite essa linha para mudar o caminho do arquivo

'Objeto WMI
Set objWMIService = GetObject("WinMgmts:")

'Obtendo os processos em execu��o - Classe Win32_Process
Set colProcess = objWMIService.ExecQuery("Select * from Win32_Process")
  stringProcess = stringProcess & "Informa��es dos Processos:" & vbCrLf & vbCrLf
  'Loop para iterar na lista de objetos
  For Each objProcess in colProcess 
    stringProcess = stringProcess & "Processo: " & objProcess.Caption & vbCrLf
    stringProcess = stringProcess & "Caminho do execut�vel: " & objProcess.ExecutablePath & vbCrLf
    stringProcess = stringProcess & "ID do processo: " & objProcess.ProcessID & vbCrLf & "____________________________________________________" & vbCrLf & vbCrLf
	'Inserimos um tra�o ao final para separar um processo do outro no arquivo .txt
  Next
  
'Limpando os objetos - Opcional
Set colProcess = Nothing
Set objWMIService = Nothing

'Gravando no arquivo .txt
Dim FSO, arquivoTxt
Set FSO = CreateObject("Scripting.FileSystemObject")
Set arquivoTxt = FSO.CreateTextFile(caminhoArquivoTxt, True)
arquivoTxt.Write stringProcess
arquivoTxt.Close

'Mensagem de sucesso
MsgBox "Feito."