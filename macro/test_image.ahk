#Persistent
CoordMode, Pixel, Screen
CoordMode, Mouse, Screen

shakeImage := A_ScriptDir "\shake_button.png"

MsgBox, Starting ImageSearch...
ImageSearch, x, y, 0, 0, A_ScreenWidth, A_ScreenHeight, *150 %shakeImage%
if (ErrorLevel = 0)
{
    MsgBox, Image Found at %x%, %y%
    MouseMove, %x%, %y% ; Moves mouse to found position
}
else
{
    MsgBox, Image NOT Found! Error Level: %ErrorLevel%
}
ExitApp
