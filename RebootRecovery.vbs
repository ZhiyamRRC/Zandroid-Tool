set WshShell = CreateObject("WScript.Shell")
request1=msgbox ("Do You Want To Reboot Device To Recovery Mode ?", vbYesNo + vbExclamation, "Reboot To Recovery")
if request1=vbYes then accepted() else WScript.Quit
Sub accepted()
WshShell.Run "InvisibleADB.exe reboot recovery"
End Sub