'O exemplo abaixo cria o diret�rio testePasta no drive C: e muda a localiza��o para este diret�rio.

Dim objShell

Set objShell = WScript.CreateObject ("WScript.shell")

objShell.run "cmd /K CD C:\ & mkdir \testePasta & cd testePasta"