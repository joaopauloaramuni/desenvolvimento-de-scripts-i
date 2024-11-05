Function Ping( myHostName )
' A fun��o retorna Verdadeiro se o host especificado puder ser pingado com sucesso.
' O par�metro myHostName pode ser o nome de um computador ou o IP address.
' A classe Win32_PingStatus usada nessa fun��o requer Windows XP ou superior.

    ' Vari�veis
    Dim colPingResults, objPingResult, strQuery

    ' Define a query WMI
    strQuery = "SELECT * FROM Win32_PingStatus WHERE Address = '" & myHostName & "'"

    ' Executa a query WMI
    Set colPingResults = GetObject("winmgmts://./root/cimv2").ExecQuery( strQuery )

    For Each objPingResult In colPingResults
        If Not IsObject( objPingResult ) Then
            Ping = False
        ElseIf objPingResult.StatusCode = 0 Then
            Ping = True
        Else
            Ping = False
        End If
    Next

    Set colPingResults = Nothing
End Function

'Chamada da fun��o inserida dentro da mensagem:
WScript.Echo "www.google.com on-line: " & Ping( "www.google.com" )
