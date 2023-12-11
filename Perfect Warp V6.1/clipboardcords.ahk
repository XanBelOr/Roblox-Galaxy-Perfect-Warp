

SetTimer, ShowToolTip, 10
ShowToolTip:
ToolTip, Press x to copy the x coordinate and y to copy the y coordinate. Press esc to exit.

x::
MouseGetPos, MouseX, MouseY
CoordMode, Pixel, Screen
Clipboard := MouseX
return

y::
MouseGetPos, MouseX, MouseY
CoordMode, Pixel, Screen
Clipboard := MouseY
return

Esc::ExitApp