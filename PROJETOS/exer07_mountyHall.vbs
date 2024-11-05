' Porta dos Desesperados

' Inicializa gerador rand�mico de n�meros
Randomize

dim portaEscolhida 
dim portaSemPremio 
dim portaComPremio 

'Caso a porta escolhida seja tamb�m a porta com pr�mio, sobrar� uma porta
dim portaQueSobrou

' O usu�rio saber� que uma das portas n�o possui pr�mio, e poder� escolher entre a porta premiada e a porta que j� havia escolhido.
' � claro, sem saber em qual das duas portas est� o pr�mio.
dim trocarPorta

' Sorteia a porta com o pr�mio
portaComPremio = Int( 3 * Rnd + 1 )

' Escolhe uma porta (33,3% de chance de acertar de cara)
portaEscolhida = InputBox("Escolha uma porta: [ 1 ] [ 2 ] [ 3 ]")

' Sorteia um n�mero de 1 a 3 at� que a condi��o seja atendida (ser o �nico n�mero n�o escolhido pelo usu�rio nem pelo sistema)
Do
	portaSemPremio = Int( 3 * Rnd + 1 )

' Para realizarmos os testes, � necess�rio converter as portas para inteiro, pois este � o tipo de dado gerado pela Randomize
Loop While Int(portaSemPremio) = Int(portaComPremio) or Int(portaSemPremio) = Int(portaEscolhida)

' Ok. Agora temos a porta com o pr�mio, a porta que o usu�rio escolheu, e a porta n�o escolhida que est� sem pr�mio

' Estat�sticamente falando, sua chance de acertar trocando a porta � de 66,6%, enquanto a chance de ganhar o pr�mio permanecendo
' na mesma porta escolhida ao in�cio, � de apenas 33,3%. A partir do momento que uma porta � revelada como sem pr�mio, uma nova
' informa��o � inserida no algoritmo, dobrando suas chances de vencer.

if Int(portaEscolhida) = Int(portaComPremio) Then
	Do
		portaQueSobrou = Int( 3 * Rnd + 1 )
	Loop While Int(portaQueSobrou) = Int(portaComPremio) or Int(portaQueSobrou) = Int(portaSemPremio)

	'Neste caso, o usu�rio est� com a porta com pr�mio, se trocar de porta ir� perder o pr�mio.
	trocarPorta = InputBox("A porta: [" & portaSemPremio & "] n�o tem pr�mio. Deseja trocar a porta [" & portaEscolhida & "] pela porta: [" & portaQueSobrou & "] ? S / N") 
	
	If trocarPorta = "S" Then
		portaEscolhida = portaQueSobrou

	End If

else
	
	'Neste caso, o usu�rio n�o est� com a porta com pr�mio, se trocar de porta ir� ganhar o pr�mio.
	trocarPorta = InputBox("A porta: [" & portaSemPremio & "] n�o tem pr�mio. Deseja trocar a porta [" & portaEscolhida & "] pela porta: [" & portaComPremio & "] ? S / N") 
	
	If trocarPorta = "S" Then
		portaEscolhida = portaComPremio
	End If
	
End If

'Dois jeitos de vencer, permanecendo com a porta ou trocando de porta
If Int(portaEscolhida) = Int(portaComPremio) and trocarPorta = "N" Then
	WScript.Echo ("VOC� GANHOU !!! O pr�mio estava na porta: [" & portaComPremio & "]. Deu sorte pois a chance de ganhar era de apenas 33,3% neste caso.")
Elseif Int(portaEscolhida)  = Int(portaComPremio) and trocarPorta = "S" Then
	WScript.Echo ("VOC� GANHOU !!! O pr�mio estava na porta: [" & portaComPremio & "]. Boa escolha ao trocar! A chance de ganhar era de 66,6% neste caso.")
'Dois jeitos de perder, permanecendo com a porta ou trocando de porta
Elseif Int(portaEscolhida) <> Int(portaComPremio) and trocarPorta = "N" Then
    WScript.Echo ("VOC� PERDEU !!! O pr�mio estava na porta: [" & portaComPremio & "]. Deveria ter trocado de porta pois a chance era de 66% neste caso.")
Elseif Int(portaEscolhida) <> Int(portaComPremio) and trocarPorta = "S" Then
	WScript.Echo ("VOC� PERDEU !!! O pr�mio estava na porta: [" & portaComPremio & "]. Se deu mal, n�o deveria ter trocado de porta, apesar de que as chances eram maiores, 66,6% de chance de ganhar. Voc� caiu nos outros 33,3%.")
Else
	WScript.Echo ("Erro! Dados foram inseridos incorretamente pelo usu�rio.")
End If