@echo off
mkdir "%userprofile%\My Documents"
mkdir "%userprofile%\My Documents\Zandroid Tool"
mkdir "%userprofile%\My Documents\Zandroid Tool\Backup"
mkdir "%userprofile%\My Documents\Zandroid Tool\Backup\System_Apps"
mkdir "%userprofile%\My Documents\Zandroid Tool\Backup\User_Apps"
cls
title Zandroid Tool: Backup Tool Kit
color 07
mode con cols=79 lines=40
:main
cls
echo.
echo   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Backup Tool Kit ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo      ~~~~~~~~~~~~~~~~~~~~~~ Developed By ShiyamRRC ~~~~~~~~~~~~~~~~~~~~~~~
echo   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo     1. Backup System Apps.
echo     2. Backup User Apps.
echo     3. Open "Backup" Directory.
echo.
set /p select= ~~Select Your Choice:
if "%select%"=="1" goto system
if "%select%"=="2" goto user
if "%select%"=="3" goto directory
if "%select%"=="" goto main
echo.
:system
echo.
echo     System Apps Are Backuping.....
echo.
bin\adb.exe pull /system/app "%userprofile%\My Documents\Zandroid Tool\Backup\System_Apps"
echo.
echo     System Apps Are Successfully Backuped.
echo.
timeout /T 3 >nul
goto main
:user
echo.
echo     User Apps Are Backuping.....
echo.
bin\adb.exe pull /data/app "%userprofile%\My Documents\Zandroid Tool\Backup\User_Apps"
echo.
echo     User Apps Are Successfully Backuped.
echo.
timeout /T 3 >nul
goto main
:directory
explorer "%userprofile%\My Documents\Zandroid Tool\Backup"
goto main