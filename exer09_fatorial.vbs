n = InputBox("Digite um n�mero:")

dim f 
f=1 
if n<0 then 
	Msgbox "N�mero inv�lido!" 
	elseif n=0 or n=1 then 
	MsgBox "O fatorial do n�mero "&n&" � :"&f 
	else 

	for i=n to 2 step -1 
		f=f*i 
	next 

	MsgBox "O fatorial do n�mero "&n&" � :"&f 

end if 