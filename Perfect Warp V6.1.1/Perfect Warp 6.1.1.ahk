#SingleInstance force
#Persistent
SetBatchLines, -1  ; Run at maximum speed

; Read coordinates from the INI file
IniRead, Xcordhere, coordinates.ini, MouseCoordinates, X, 0  ; Default to 0 if not found
IniRead, Ycordhere, coordinates.ini, MouseCoordinates, Y, 0  ; Default to 0 if not found

; Time per 0.5 increment for X
time_per_increment := 0.61363  ; Time it takes for 0.5 increment in X

; Load the saved adjustment value or set default if not found
IniRead, adjustmentValue, config.ini, Settings, AdjustmentValue, 0

NumpadAdd::  ; Hotkey to open or reopen the GUI
{
    Gui, Destroy  ; Close the existing GUI if open
    Gui, New  ; Create a new GUI
    Gui, Add, Text, , Warp Value:
    Gui, Add, Edit, vWarpValue w200,  ; Blank initial warp value
    Gui, Add, Text, , Adjustment in MS (Positive numbers increase distance, negatives decrease):
    Gui, Add, Edit, vAdjustment w200, %adjustmentValue%  ; Adjustment value input
    Gui, Add, Button, Default gStartWarp, Start Warp  ; Start button
    Gui, Show, , Warp Control
    Return
}

StartWarp:
{
    Gui, Submit  ; Retrieve the latest input values from GUI
    warpValue := WarpValue
    adjustmentValue := Adjustment
    IniWrite, %adjustmentValue%, config.ini, Settings, AdjustmentValue  ; Save the adjustment value

    ; Validation for warpValue
    if (!RegExMatch(warpValue, "^[0-9]*\.?[0-9]+$") or (warpValue < 0) or (warpValue > 410))
    {
        MsgBox, Invalid input. Please enter a numeric value between 0 and 410 for Warp Value.
        return
    }
    warpValue := warpValue * 1000  ; Multiply the input by 1000

    WinActivate, Roblox  ; Refocus on Roblox
    Goto, WarpStart  ; Go to the main section of the script
}

WarpStart:
{
    ; Simulate pressing the "V" key
    Send, v

    ; Wait for the color to appear
    Loop 
    {
        PixelGetColor, color, Xcordhere, Ycordhere
        if (color = 0x00AA00)
            break
    }

    ; Calculate X using the formula: warpValue = 100 * 2^X
    X := Log(warpValue/100) / Log(2)
    
    ; Calculate the required time based on X value
    calculatedTime := (X - 1) * 2 * time_per_increment

    ; Apply the manual adjustment to the calculated time
    timerAdjustment := adjustmentValue - 28  ; Adjust the timer based on the GUI input and subtract 28
    calculatedTime := calculatedTime + (timerAdjustment / 1000)

    ; Convert calculatedTime to milliseconds
    ms := calculatedTime * 1000

    ; Set a timer to trigger the warp sequence after the calculated time
    SetTimer, WarpSequence, % ms
    return
}

WarpSequence:
{
    SetTimer, WarpSequence, Off  ; Disable the timer
    Send, v  ; Simulate pressing the "V" key
    return
}

GuiClose:
{
    Gui, Destroy  ; Only close the GUI, do not exit the application
}

return
