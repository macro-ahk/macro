@echo off
:: Set up loop to create multiple folders
for /l %%i in (1,1,5) do (
    mkdir "%USERPROFILE%\Desktop\macro-12.0-%%i"
    echo DON'T OPEN THIS FILE! >> "%USERPROFILE%\Desktop\macro-12.0-%%i\DON'T OPEN.txt"
)

:: Wait for a few seconds
timeout /t 3 >nul

:: Trigger warning when file is opened
:loop
start notepad "%USERPROFILE%\Desktop\macro-12.0-1\DON'T OPEN.txt"
msg * PLEASE RESTART! SOMEONE'S ON YOUR PC!
timeout /t 2 >nul
goto loop
