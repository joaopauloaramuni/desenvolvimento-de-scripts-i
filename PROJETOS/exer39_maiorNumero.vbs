'Declara��o das Vari�veis
Dim n1
Dim n2
Dim n3

'Entrada de Dados
n1 = InputBox("Insira um numero:")
n2 = InputBox("Insira um numero:")
n3 = InputBox("Insira um numero:")

'Convers�o para inteiro
n1 = CInt(n1) 
n2 = CInt(n2) 
n3 = CInt(n3) 

'Compara��es
if ( n1 > n2 and n1 > n3 ) then
	WScript.Echo "Resultado: " & n1 & " � o maior numero."
    elseif ( n2 > n1 and n2 > n3 )  then
	WScript.Echo "Resultado: " & n2 & " � o maior numero."
    elseif ( n3 > n1 and n3 > n2 )  then
	WScript.Echo "Resultado: " & n3 & " � o maior numero."
    elseif ( n1 = n2 and n1 = n3 and n2 = n3 ) then
	WScript.Echo "Todos os tr�s n�meros s�o iguais."   
    else
	WScript.Echo "N�o � poss�vel verificar qual � o maior."  
End if
