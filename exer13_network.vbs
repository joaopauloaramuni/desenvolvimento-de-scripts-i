Set Rede = WScript.CreateObject("WScript.Network")
PropertyInfo = "Dom�nio do usu�rio" & vbTab & "= " & Rede.UserDomain & _
vbCrLf & "Computador" & vbTab & "= " & Rede.ComputerName & _
vbCrLf & "Nome do usu�rio" & vbTab & "= " & Rede.UserName & vbCrLf
MsgBox(PropertyInfo)
