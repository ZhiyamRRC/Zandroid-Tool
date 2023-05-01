set WshShell = CreateObject("WScript.Shell")
Sub acc()
WshShell.Run "cmd.exe /c FixPlayStore.bat"
WScript.Quit
End Sub
que=msgbox("Read This First Before Proceeding." + vbCrLf + vbCrLf + "You Must Have This Before Fixing Play Store:" + vbCrLf + "  ** Root Access (Must Be Allowed For ADB Shell)" + vbCrLf + vbCrLf + "If You Do Not Have This, It Will Not Work Properly." + vbCrLf + "Press OK To Continue.", vbOkCancel + vbExclamation, "Zandroid Tool: Fix Play Store 'No Connection'")
if que=vbOk then acc() else WScript.Quit
