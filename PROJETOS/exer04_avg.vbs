'C�lculo da M�dia
 
Option Explicit                  ' Obrigo a declarar todas as vari�veis antes de usar

dim inputNumber                  ' input de entrada dos n�meros
dim count                        ' contador de entradas do usu�rio
dim sum                          ' soma dos n�meros inseridos pelo usu�rio
dim avg                          ' m�dia dos n�meros inseridos pelo usu�rio

' Inicilizar vari�veis para evitar erros
count = 0
sum = 0
avg = 0

' Para todas as entradas de usu�rio, contamos e somamos os valores inseridos
do
   inputNumber = InputBox("Entre com um n�mero. Para sair digite um n�mero negativo.")

   ' Verifica se o n�mero inserido � n�merico
   if not IsNumeric(inputNumber) then
      MsgBox "Voc� deve inserir um valor num�rico, tente de novo.", vbOKOnly, "Dados Inv�lidos"
   else
      if inputNumber < 0 then
         exit do
      end if
      sum = sum + inputNumber
      count = count + 1
   end if
loop

' Calcular o valor da m�dia (m�dia = soma dos dados inseridos dividido pelo n�mero de dados inseridos)
' Desafio: Considerando as boas pr�ticas de programa��o, o c�lculo da m�dia deve ser feito em uma procedure
' separadamente. Tente passar isso para um Sub e/ou para uma Function.
if count <> 0 then
   avg = sum/count
else
   avg = 0
end if
MsgBox "N�mero de itens inseridos:  " & count & "  M�dia:  " & avg,  vbOKOnly, "Resultado"