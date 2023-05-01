@echo off
title Zandroid Tool: Shell
echo Welcome To Shell
echo Connecting To Device...
adb shell
if "%errorlevel%"=="0" goto deviceok
wscript shellerr.vbs
echo ERROR: No Device Detected.
exit
:deviceok
echo Disconnected
exit