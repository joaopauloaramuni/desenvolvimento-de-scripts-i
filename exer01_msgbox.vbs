'Existem duas maneiras de se executar um aquivo com extens�o .vbs no WSH
'1 - Atrav�s do comando cscript arquivo.vbs no cmd
'2 - Clicando duas vezes sobre ele

Msgbox("Exemplo de MsgBox")

Dim result
result = MsgBox ("Beleza?", vbYesNo, "Sim/Nao")
Select Case result
    Case vbYes
		MsgBox("Eu tamb�m.")
    Case vbNo
        MsgBox("Relaxa...curta a aula!")
End Select