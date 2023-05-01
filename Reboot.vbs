set WshShell = CreateObject("WScript.Shell")
request1=msgbox ("Do You Want To Reboot Device ?", vbYesNo + vbExclamation, "Reboot Device")
if request1=vbYes then accepted() else WScript.Quit
Sub accepted()
WshShell.Run "InvisibleADB.exe reboot"
End Sub