@echo off
mode con cols=32 lines=20
title Play Store Fix
echo Play Store Fix
echo.
echo Fixing Play Store...
bin\adb.exe shell su -c "mount -o remount,rw /system"
bin\adb.exe shell su -c "rm /system/etc/hosts"
echo Done.
bin\adb.exe shell sleep 5
exit


