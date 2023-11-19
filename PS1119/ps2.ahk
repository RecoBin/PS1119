#Persistent

; Check if both left and right mouse buttons are held down
~RButton & LButton::
    ; Loop to continuously move the cursor down
    while (GetKeyState("RButton", "P") && GetKeyState("LButton", "P")) {
        MouseMove, 0, 4, 0, R  ; Change 10 to adjust the speed of movement
        Sleep, 0  ; Adjust sleep time for desired speed
    }
return
