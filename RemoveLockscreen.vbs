set WshShell = CreateObject("WScript.Shell")
Sub acc()
WshShell.Run "cmd.exe /c RemoveLockscreen.bat"
WScript.Quit
End Sub
que=msgbox("Read This First Before Proceeding." + vbCrLf + vbCrLf + "You Must Have This Before Removing Lockscreen:" + vbCrLf + "  ** Root Access (Must Be Allowed For ADB Shell)" + vbCrLf + vbCrLf + "If You Do Not Have This, It Will Not Work Properly." + vbCrLf + "Press OK To Continue.", vbOkCancel + vbExclamation, "Zandroid Tool: Remove Lockscreen Security")
if que=vbOk then acc() else WScript.Quit
