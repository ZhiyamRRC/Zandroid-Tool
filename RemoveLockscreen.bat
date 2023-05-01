@echo off
mode con cols=32 lines=20
title Remove Lockscreen Security
echo Remove Lockscreen Security
echo.
echo Remove Lockscreen Security...
bin\adb.exe shell su -c "mount -o remount,rw /data"
bin\adb.exe shell su -c "rm /data/system/locksettings.db"
bin\adb.exe shell su -c "rm /data/system/locksettings.db-shm"
bin\adb.exe shell su -c "rm /data/system/locksettings.db-wal"
echo Done.
echo.
bin\adb.exe shell sleep 5
bin\adb reboot
exit