@echo off
REN Setup window
mode con cols=50 lines=10
cls
title Zandroid Tool: Screenshot
echo.
if exist "ZTool-Device-Screenshot.png" goto delsnap
goto startsnap
:startsnap
echo  - Taking Screenshot... Please Wait...
bin\adb.exe shell screencap -p /data/local/tmp/ZTool-Device-Screenshot.png
bin\adb.exe pull /data/local/tmp/ZTool-Device-Screenshot.png
bin\adb.exe shell rm /data/local/tmp/ZTool-Device-Screenshot.png
echo  - Done. Loading preview..
if exist "ZTool-Device-Screenshot.png" goto preview
copy "bin\screencap_error.png" "%cd%"
ren "screencap_error.png" "ZTool-Device-Screenshot.png"
goto preview
:preview
mshta "%cd%\ScreenPreview.hta"
echo  - Closing Window...
exit
:delsnap
echo  - Removing Last Screenshot...
del ZTool-Device-Screenshot.png
goto startsnap
exit