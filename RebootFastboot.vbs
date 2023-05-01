set WshShell = CreateObject("WScript.Shell")
request1=msgbox ("Do You Want To Reboot Device To Fastboot ?", vbYesNo + vbExclamation, "Reboot To Fastboot")
if request1=vbYes then accepted() else WScript.Quit
Sub accepted()
WshShell.Run "InvisibleADB.exe reboot fastboot"
End Sub