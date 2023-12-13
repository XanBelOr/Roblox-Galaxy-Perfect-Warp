#Persistent  ; Keeps the script running
SetTimer, UpdateTooltip, 1  ; Update the tooltip position every 1 millisecond

; Function to update the tooltip
UpdateTooltip:
    MouseGetPos, mouseX, mouseY  ; Get current mouse position
    ToolTip, Press Ctrl+J once your mouse cursor is hovering over the Green Warp Button that says "Activate (V)".`nMake sure you're hovering over the green color and not the white text.`nPress Esc to exit., mouseX + 20, mouseY + 20  ; Show the tooltip to the side of the mouse cursor
return

^j::  ; Ctrl+J hotkey
    SetTimer, UpdateTooltip, Off  ; Turn off the tooltip update
    MouseGetPos, posX, posY  ; Get the X and Y coordinates of the mouse
    IniWrite, %posX%, coordinates.ini, MouseCoordinates, X  ; Write X coordinate to ini file
    IniWrite, %posY%, coordinates.ini, MouseCoordinates, Y  ; Write Y coordinate to ini file
    ToolTip  ; Hide the tooltip
    MsgBox, Sucess! Your script is now ready for use.  ; Show success message
    ExitApp  ; Exit the script
return

Esc::  ; Esc key hotkey
    SetTimer, UpdateTooltip, Off  ; Turn off the tooltip update
    ToolTip  ; Hide the tooltip before exiting
    ExitApp  ; Exit the script
return
