'Script VBS � Pingar IP's lidos de um arquivo .txt
'Vari�vel que representa um ip
dim ip
'Constante que ser� passada como par�metro para o m�todo openTextFile da classe FSO
const ForReading = 1

'fso - obj da classe FileSystemObject
set fso = CreateObject("Scripting.FileSystemObject")
'fileTxt - obj que representa o arquivo texto .txt 
'O arquivo texto ser� retornado atrav�s do m�todo openTextFile da classe FSO
set fileTxt = fso.openTextFile("U:\ips.txt",ForReading)
'objShell - obj da classe Shell para acessarmos o m�todo run
Set objShell = WScript.CreateObject("WScript.Shell")

'Loop para ler o arquivo txt at� o final
Do until fileTxt.AtEndOfStream	
	'Leitura da linha do txt que possui cada ip
	ip = fileTxt.readLine
	'Execu��o do comando ping
	objShell.run "ping " & ip
	'Aguardando comando ping ser executado por completo
	Wscript.Sleep 4000
loop
