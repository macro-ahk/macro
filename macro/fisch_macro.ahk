#Persistent
#SingleInstance Force
SetBatchLines, -1
CoordMode, Pixel, Screen
CoordMode, Mouse, Screen

shakeImage := A_ScriptDir "\shake_button.png"

running := false  ; Variable to control loop

F1::  ; Press F1 to start
    running := true
    Loop
    {
        if (!running)
            break

        ; Search for the Shake button in the lower half of the screen
        ImageSearch, x, y, 0, A_ScreenHeight//2, A_ScreenWidth, A_ScreenHeight, *100 %shakeImage%
        if (ErrorLevel = 0)  ; If the button is found
        {
            ToolTip, Found Shake at X: %x% Y: %y%  ; Debugging
            Sleep, 1500  ; Show tooltip for 1.5 seconds
            
            WinActivate, ahk_exe RobloxPlayerBeta.exe  ; Ensure game is active
            Sleep, 100

            MouseMove, %x%+10, %y%+10, 10  ; Move slightly inside the button
            Sleep, 200
            Click, Down  ; Simulate mouse press
            Sleep, 50
            Click, Up  ; Simulate mouse release

            Random, sleepTime, 200, 500
            Sleep, sleepTime  ; Randomized delay for human-like clicking
        }
        else
        {
            ToolTip, "Shake button NOT found. Error Level: " ErrorLevel
        }
        Sleep, 1000  ; Check for the button every second
    }
    ToolTip  ; Clear tooltip
Return

F2::  ; Press F2 to stop
    running := false
    ToolTip, "Macro Stopped"
Return

Esc::ExitApp  ; Press ESC to stop the script completely
