@echo off
mkdir "%userprofile%\My Documents"
mkdir "%userprofile%\My Documents\Zandroid Tool"
mkdir "%userprofile%\My Documents\Zandroid Tool\Screenshot"
cls
title Zandroid Tool: Screenshot
:startexplorer
explorer "%userprofile%\My Documents\Zandroid Tool\Screenshot"
goto sideloadtime
exit