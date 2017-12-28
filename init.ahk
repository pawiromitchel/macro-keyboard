;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;
; Some fast reference
;   
;   Keys:
;   # => windows logo key
;   ! => Alt
;   ^ => Ctrl
;   + => Shift
;
;   Specials:
;   winactivate => makes window active based on title
;   WinWaitActive => waits for the window to be active
;   Run => run a specific program based on path
;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#NoEnv
#SingleInstance force

; custom functions
#Include, functions.ahk

; hotstrings, this will autocomplete any word to the desired word
#Include, hotstrings.ahk

; listen to keys and run the function from the second keyboard
#Include, 2nd-keyboard.ahk

; Ctrl+Shift+Up: Toggle "AlwaysOnTop" on the focussed window
+^Up:: 
    Winset, Alwaysontop, , A
    showToast("Autohotkey notification", "Sticky window activated/deactivated")
Return

; Ctrl+Shift+T: open cmd from the explorer
#IfWinActive ahk_class CabinetWClass
    +^t::
        ClipSaved := ClipboardAll
        Send !d
        Sleep 10
        Send ^c
        Run, cmd /K "cd `"%clipboard%`""
        Clipboard := ClipSaved
        ClipSaved =
    Return
#IfWinActive