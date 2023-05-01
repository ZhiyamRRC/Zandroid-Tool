set WshShell = CreateObject("WScript.Shell")
request1=msgbox ("Do You Want To Reboot Device To Download Mode ?", vbYesNo + vbExclamation, "Reboot To Download Mode")
if request1=vbYes then accepted() else WScript.Quit
Sub accepted()
WshShell.Run "InvisibleADB.exe reboot download"
End Sub