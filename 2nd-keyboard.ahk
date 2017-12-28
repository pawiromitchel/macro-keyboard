; the lua script will call to this function
; key is the keypress from the second keyboard
~F24::
    FileRead, key, C:\Users\mpawirodinomo\Documents\keypressed.txt

    ; sticky window
    if (key = "s") {
        Winset, Alwaysontop, , A
        showToast("Autohotkey notification", "Sticky window activated/deactivated")
    }
Return