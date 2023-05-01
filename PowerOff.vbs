set WshShell = CreateObject("WScript.Shell")
request1=msgbox ("Do You Want To Power Off Device ?", vbYesNo + vbExclamation, "Power Off Device")
if request1=vbYes then accepted() else WScript.Quit
Sub accepted()
WshShell.Run "InvisibleADB.exe shell reboot -p"
End Sub