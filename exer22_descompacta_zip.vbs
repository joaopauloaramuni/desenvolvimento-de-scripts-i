'Arquivo zipado a ser descompactado
ZipFile="C:\testevbs\teste.zip"
'Pasta onde ser� extra�do o arquivo
ExtractTo="C:\testevbs\top"

'Se o local de extra��o ainda n�o foi criado:
Set fso = CreateObject("Scripting.FileSystemObject")
If NOT fso.FolderExists(ExtractTo) Then
   fso.CreateFolder(ExtractTo)
End If

'Extrai o conte�do do arquivo zip:
set objShell = CreateObject("Shell.Application")
set FilesInZip=objShell.NameSpace(ZipFile).items
objShell.NameSpace(ExtractTo).CopyHere(FilesInZip)
Set fso = Nothing
Set objShell = Nothing