'Ligue os alto-falantes antes de executar o script.
Dim message, sapi
message = InputBox("Digite uma frase que ser� lida pelo sistema em voz alta: ","Speak Message")
Set sapi = CreateObject("sapi.spvoice")
sapi.Speak message