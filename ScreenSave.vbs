Sub doit()
WshShell.Run "cmd.exe /c ScreenSave.bat"
x=msgbox("Screenshot Saved." + vbCrLf + "Click 'Open Folder' So You Can Find The File.", 0+vbInformation, "Save Screenshot")
End Sub
set WshShell = CreateObject("WScript.Shell")
que=msgbox("Do You Sure To Save The Screenshot ?", vbYesNo+vbExclamation, "Save Screenshot")
if que=vbYes then doit() else WScript.Quit