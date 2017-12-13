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
#SingleInstance force

;------------- functions -------------;
openApplication(exe_path, winTitle){
    Run, %exe_path%  
    winactivate, %winTitle%
    WinWaitActive, %winTitle%
}

goToDir(directory){
    SendInput, cd %directory% {enter}
}

; GIT Management

updateSSH(){
    Send, eval "$(ssh-agent -s)";ssh-add ~/.ssh/id_rsa_alembo {enter}
}

updateRepo(branch){
    SendInput, git pull origin %branch% {enter}
}

autoCommitRepo(branch, msg){
    ; git commit | when there is nothing to commit, it will leave th git repo untouched
    SendInput, git add . {enter}
    SendInput, git commit -m 'auto commit' {enter}
    SendInput, git push origin %branch% {enter}
}

;------------- F24 from the lua script -------------;

~F24::
    FileRead, key, C:\Users\mpawirodinomo\Documents\keypressed.txt
    
    ; autoupdate web-deta
    If (key = "F1"){
        openApplication("C:\Program Files\Git\git-bash.exe", "MINGW64:/c/Users/mpawirodinomo/Desktop")
        goToDir("/c/Users/mpawirodinomo/Work/DETA_WEB")
        updateSSH()
        updateRepo("smithsonian_3")
        Sleep, 8000
        WinClose, "MINGW64:/c/Users/mpawirodinomo/Desktop"
    }
    
    ; autoupdate pentaho jobs
    if (key = "F2") {
        openApplication("C:\Program Files\Git\git-bash.exe", "MINGW64:/c/Users/mpawirodinomo/Desktop")
        goToDir("/c/Users/mpawirodinomo/Work/DETA_PENTAHO_JOBS")
        updateSSH()
        updateRepo("master")
        Sleep, 8000
        WinClose, "MINGW64:/c/Users/mpawirodinomo/Desktop"
    }
        
Return