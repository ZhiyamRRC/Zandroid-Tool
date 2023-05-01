@echo off
title RESTARTING ADB SERVER
mode con cols=50 lines=6
echo Restarting ADB Server...
taskkill /f /im InvisibleADB.exe
taskkill /f /im adb.exe
adb start-server