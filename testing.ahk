    ; ; autoupdate web-deta
    ; If (key = "F1"){    
    ;     Run, C:\Program Files\Git\git-bash.exe  
    ;     winactivate, MINGW64:/c/Users/mpawirodinomo/Desktop
    ;     WinWaitActive, MINGW64:/c/Users/mpawirodinomo/Desktop
    ;     goToDir("/c/Users/mpawirodinomo/Work/DETA_WEB")
    ;     updateSSH()
    ;     updateRepo("frankrijk_4")
    ;     Sleep, 8000
    ;     WinClose, "MINGW64:/c/Users/mpawirodinomo/Desktop"
    ; }
    
    ; ; autoupdate pentaho jobs
    ; if (key = "F2") {
    ;     openApplication("C:\Program Files\Git\git-bash.exe", "MINGW64:/c/Users/mpawirodinomo/Desktop")
    ;     goToDir("/c/Users/mpawirodinomo/Work/DETA_PENTAHO_JOBS")
    ;     updateSSH()
    ;     updateRepo("master")
    ;     Sleep, 8000
    ;     WinClose, "MINGW64:/c/Users/mpawirodinomo/Desktop"
    ; }

    ; if (key = "q") {
    ;     Send, crontab -e {Enter}
    ;     Sleep, 1000
    ;     Send, {Down}i{#}{Esc}:x{Enter}
    ; }