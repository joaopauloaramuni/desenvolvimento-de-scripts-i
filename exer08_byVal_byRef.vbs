'Demonstrando a diferen�a entre o tipo byVal e o tipo ByRef

option explicit

dim a, b, c, d
a = 2
b = 3
c = 2
d = 3

call byValSub(a, b)
call byRefSub(c, d)

MsgBox "a = " & a & "  b = " & b & "  c = " & c & "  d = " & d

'----------------------------------------------------------------------------
' byValSub
' Os par�metros passados s�o copiados e, caso sejam mudamos, s�o mudados localmente na procedure,
' quando a procedure termina, estas vari�veis c�pias morrem, sem alterar os valores das vari�veis originais.
SUB byValSub(ByVal num1, ByVal num2)
   num1 = 10
   num2 = 20
end SUB

'----------------------------------------------------------------------------
' byRefSub
' Os par�metros s�o passados como refer�ncia na mem�ria e, caso sejam mudados, s�o mudados globalmente no programa,
' ou seja, s�o alterados os valores das vari�veis originais.
SUB byRefSub(ByRef num1, ByRef num2)
   num1 = 10
   num2 = 20
end SUB

'Em VBScript temos dois tipos de procedures:

' Sub procedure
' Function procedure

' As procedures do tipo Sub n�o retornam nenhum valor
' As procedures do tipo Function retornam valor

' Voc� pode ver um exemplo de retorno no exer10_fibonacci.sh

' Ou como abaixo:

' Function minhaFuncao()
  'Comandos...
  'minhaFuncao = Algum valor de retorno...pode ser do tipo inteiro ou string por exemplo,
  'n�o � necess�rio explicitar o tipo do retorno, ex:
  'minhaFuncao = 0
  'ou minhaFuncao = "Ol� Mundo"
' End Function