set WshShell = CreateObject("WScript.Shell")
request1=msgbox ("Do You Want To Restart ADB Server ?" + vbCrLf + "This Will Also Stop Operations Like Sideload And Using Shell.", vbYesNo + vbExclamation, "Zandroid Tool: Restart ADB Server")
if request1=vbYes then accepted() else Wscript.Quit
Sub accepted()
WshShell.Run "RestartADB.bat"
End Sub