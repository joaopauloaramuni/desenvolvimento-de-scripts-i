' Suponha que voc� comece com 1 real e v� dobrando seu dinheiro todos os dias. Quantos dias iriam levar para
' voc� juntar 1 milh�o de reais?

 
Option Explicit                  ' must declare every variables before use

const MAXAMOUNT = 1000000
dim dobro                        ' current amount of money
dim sum                          ' total sum of accumulated money
dim days                         ' number of days

' initialize 
dobro = 1
sum = 0
days = 0

'Outra forma de fazer loops
do until sum > MAXAMOUNT 

   sum = sum + dobro  '1 3 7 15 31...
   dobro = 2 * dobro '2 4 8 16..
   days = days + 1 	   
   
   WScript.Echo "Dia: " & days & _
   vbCrLf  & "Total no dia: " & sum   

loop

MsgBox "Come�ando com 1 real e dobrando seu dinheiro todos os dias, levaria " _
       & days & " dias para ter R$ " & sum & " reais." 