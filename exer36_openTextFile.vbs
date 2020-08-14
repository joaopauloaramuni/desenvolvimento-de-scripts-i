' Abrir arquivo de texto com o VBScript e exibir seu conte�do na tela

' Documenta��o da Microsoft sobre o FileSystemObject:
' https://msdn.microsoft.com/en-us/library/6tkce7xa(v=vs.84).aspx
Set objFSO = CreateObject("Scripting.FileSystemObject")

' M�todo OpenTextFile
' iomode - Op��o 1: Voc� ir� apenas ler o conte�do do arquivo, n�o podendo escrever no mesmo.
Set objFile = objFSO.OpenTextFile("C:\teste.txt", 1)
conteudoArquivo = objFile.ReadAll
Wscript.Echo conteudoArquivo
objFile.Close