dim palavra
dim palavraInvertida

palavra = InputBox("Insira a palavra:")
palavraInvertida = StrReverse(palavra)

if palavra = palavraInvertida then

	WScript.Echo "� pal�ndromo!"

else

	WScript.Echo "N�o � pal�ndromo!"

end if