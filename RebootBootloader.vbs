set WshShell = CreateObject("WScript.Shell")
request1=msgbox ("Do You Want To Reboot Device To Bootloader ?", vbYesNo + vbExclamation, "Reboot To Bootloader")
if request1=vbYes then accepted() else WScript.Quit
Sub accepted()
WshShell.Run "InvisibleADB.exe reboot-bootloader"
End Sub