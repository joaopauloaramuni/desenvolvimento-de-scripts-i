Option Explicit
Dim contador

contador = 1

WScript.Echo "Vamos contar at� 10 !!!"

'Loop ir� acontecer at� que a condi��o seja falsa
Do While contador <= 10
	WScript.Echo (contador)
	
	contador = contador +1
	
Loop

'Loop ir� acontecer at� que a condi��o seja falsa
'Do
	'WScript.Echo (contador)
	
	'contador = contador +1
	
'Loop While contador <= 10

'Loop ir� acontecer at� que a condi��o seja verdadeira
'Do Until contador = 10
	'WScript.Echo (contador)
	
	'contador = contador +1
'Loop
