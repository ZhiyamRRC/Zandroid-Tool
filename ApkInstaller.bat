@echo off
mkdir "%userprofile%\My Documents"
mkdir "%userprofile%\My Documents\Zandroid Tool"
mkdir "%userprofile%\My Documents\Zandroid Tool\APKs"
cls
title Zandroid Tool: APK Installer
color 07
mode con cols=79 lines=40
:sideloadtime
cls
echo.
echo.
echo   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ APK Installer ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo      ~~~~~~~~~~~~~~~~~~~~~~ Developed By ShiyamRRC ~~~~~~~~~~~~~~~~~~~~~~~
echo   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo    Put Your APKs In:
echo    %userprofile%\My Documents\Zandroid Tool\APKs
echo.
echo   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo    Files In Folder:
echo.
dir /b "%userprofile%\My Documents\Zandroid Tool\APKs"
echo   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo    1. Refresh List.
echo    2. Open "APKs" Directory.
echo.              OR
echo    Type File Name To Install. (Case Sensitive)
echo.
set /p filename= ~~Select Your Choice:
if "%filename%"=="1" goto sideloadtime
if "%filename%"=="2" goto startexplorer
if "%filename%"=="" goto sideloadtime
if exist "%userprofile%\My Documents\Zandroid Tool\APKs\%filename%" goto startsideload
wscript NoApk.vbs
goto sideloadtime
:startexplorer
explorer "%userprofile%\My Documents\Zandroid Tool\APKs"
goto sideloadtime
:startsideload
cls
echo.
echo    Installing Apk %filename%...
bin\adb.exe install "%userprofile%\My Documents\Zandroid Tool\APKs\%filename%"
echo    Installation Complete.
timeout /T 3 >nul
goto sideloadtime