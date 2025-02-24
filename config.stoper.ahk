; Basic AutoHotkey Script Example

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for faster and more reliable input.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Hotkey: Win+Alt+C to open Calculator
#!c::  
    Run, calc.exe
return

; Hotkey: Win+Alt+N to open Notepad
#!n::  
    Run, notepad.exe
return

; Hotkey: Win+Alt+W to close the active window
#!w::  
    WinClose, A
return
