@echo off
mode con cols=1 lines=2
mkdir "%userprofile%\My Documents"
mkdir "%userprofile%\My Documents\Zandroid Tool"
mkdir "%userprofile%\My Documents\Zandroid Tool\Screenshot"
copy "ZTool-Device-Screenshot.png" "%userprofile%\My Documents\Zandroid Tool\Screenshot"
echo Done.
exit