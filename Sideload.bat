@echo off
mkdir "%userprofile%\My Documents"
mkdir "%userprofile%\My Documents\Zandroid Tool"
mkdir "%userprofile%\My Documents\Zandroid Tool\Sideload"
cls
title Zandroid Tool: Sideload
color 07
mode con cols=79 lines=40
:sideloadtime
cls
echo.
echo.
echo   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Sideload ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo      ~~~~~~~~~~~~~~~~~~~~~~ Developed By ShiyamRRC ~~~~~~~~~~~~~~~~~~~~~~~
echo   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo    Put Your Zips In:
echo    %userprofile%\My Documents\Zandroid Tool\Sideload
echo.
echo   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo    Files In Folder:
echo.
dir /b "%userprofile%\My Documents\Zandroid Tool\Sideload"
echo   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo    1. Refresh List.
echo    2. Open "Sideload" Directory.
echo.              OR
echo    Type File Name To Install. (Case Sensitive)
echo.
set /p filename= ~~Select Your Choice:
if "%filename%"=="1" goto sideloadtime
if "%filename%"=="2" goto startexplorer
if "%filename%"=="" goto sideloadtime
if exist "%userprofile%\My Documents\Zandroid Tool\Sideload\%filename%" goto startsideload
wscript NoFile.vbs
goto sideloadtime
:startexplorer
explorer "%userprofile%\My Documents\Zandroid Tool\Sideload"
goto sideloadtime
:startsideload
cls
echo.
echo    Starting Sideload...
bin\adb.exe sideload "%userprofile%\My Documents\Zandroid Tool\Sideload\%filename%"
echo    Sideload Complete.
timeout /T 3 >nul
goto sideloadtime