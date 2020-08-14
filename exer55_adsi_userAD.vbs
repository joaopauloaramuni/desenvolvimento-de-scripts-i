' O ADSI (Active Directory Services Interfaces) � um conjunto de bibliotecas que podem ser utilizadas
' para manipular informa��es contidas em bases Active Directory. Com o VBScript, podemos utilizar o ADSI
' para manipular as informa��es do AD diretamente, de forma totalmente personalizada.

' Entre as possibilidades com a utiliza��o das bibliotecas ADSI est�o, por exemplo, a verifica��o de informa��es sobre
' os usu�rios cadastrados, a altera��o de propriedades e a remo��o de entradas n�o mais necess�rias.

' O exemplo de script a seguir armazena em um arquivo todos os usu�rios cadastrados no Active Directory

' Criar arquivo para escrita
' Arquivo que ser� utilizado para armazenar as informa��es obtidas do Active Directory
set objFSO = createObject ("Scripting.FileSystemObject")
const arquivoEscrita = ".\usuarios.txt"
set arqUsuarios = objFSO.createTextFile(arquivoEscrita, True)

' Contar os usu�rios encontrados
contar = 0

' Criar o objeto que ser� usado para acessar os registros do Active Directory
' A fun��o getObject("WinNT://exemplo") considera todo o dom�nio exemplo.local
set objADSI = getObject("WinNT://exemplo")

' O m�todo filter() faz com que sejam considerados apenas os registros de usu�rio do AD
' (Outras possibilidades s�o registros de grupos e registros de computadores)
objADSI.filter = Array("User")

' Bloco de repeti��o que ir� percorrer toda a estrutura do AD e escrever no arquivo usuarios.txt
' A propriedade "fullname" corresponde ao nome completo do usu�rio
' J� a propriedade "name" corresponde ao login de rede desse usu�rio
for each objUser in objADSI
	arqUsuarios.write objUser.fullname & "-"
	arqUsuarios.write objUser.name & ";" & vbCrlf & vbCrlf
	contar = contar + 1 
next

' Fechando o objeto
arqUsuarios.close

WScript.Echo "N�mero de usu�rios encontrados: " & contar

' O arquivo gerado ap�s a execu��o desse script teria uma forma semelhante �:

' Jo�o Francisco de Assis-joaofrancisco;
' Fernando Fernandino-fernando;
' Maria Emilia Boneca-mariaemilia;
' Hugo Quico Chavez-hugo;

' Principais propriedades referentes a usu�rios cadastros no AD:
' (H� outros atributos que podem estar presentes, uma vez que o Active Directory pode ser 
' facilmente estendido para abrigar novas funcionalidades )

' accountDisabled - true se aconta est� desabilitada, false caso contr�rio
' description - Descri��o do usu�rio
' fullname - Nome completo do usu�rio
' homeDirectory - Diret�rio home do usu�rio
' isAccountLocked - true se a conta est� bloqueada, false caso contr�rio
' loginHours - Hor�rios que o usu�rio pode se logar
' loginScript - Script de login
' minPasswordLength - Tamanho m�nimo da senha de login
' maxPasswordAge - Tempo em que senha de login � v�lida
' maxPasswordLength - Tamanho m�ximo de senha de login
' name - Login dos usu�rios
' passwordHistoryLength - N�mero de senhas diferentes que devem ser utilizadas antes de ocorrer uma repeti��o
' profile - Verificar perfil do usu�rio
' sAMAccountName - Login dos usu�rios (pr� Windows 2000)
' userWorkstations - Esta��o em que o usu�rio pode se logar
