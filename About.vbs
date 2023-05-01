set WshShell = CreateObject("WScript.Shell")
Sub acc()
WshShell.Run "http://shiyamrrc.blogspot.com"
WScript.Quit
End Sub
que=msgbox("Name	: ShiyamRRC" + vbCrLf + "Facebook	: Zhiyam Zhabri" + vbCrLf + "Twitter	: shiyamrrc" + vbCrLf + "Email	: shiyamrrc@gmail.com" + vbCrLf + "Website	: http://shiyamrrc.blogspot.com" + vbCrLf + vbCrLf + "Thanks To:" + vbCrLf + "    3DMapPlayer - Concept & Design" + vbCrLf + "    All Who Help Me For Develop This Tool")
if que=vbOk then acc() else WScript.Quit