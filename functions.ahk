;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; AutoHotKey Custom functions
; 
; Changelog:
; 28-12-2017: Created file
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

;------------- Window Management -------------;

openApplication(exe_path, winTitle){
    Run, %exe_path%  
    winactivate, %winTitle%
    WinWaitActive, %winTitle%
}

goToDir(directory){
    SendInput, cd %directory% {Enter}
}

;------------- GIT Commands -------------;

updateSSH(){
    Send, eval "$(ssh-agent -s)";ssh-add ~/.ssh/id_rsa_alembo {Enter}
}

updateRepo(branch){
    SendInput, git pull --all {Enter}
}

; autocommit with 'auto commit' as the message
autoCommitRepo(branch, msg){
    ; git commit | when there is nothing to commit, it will leave th git repo untouched
    SendInput, git add . {Enter}
    SendInput, git commit -m 'auto commit' {Enter}
    SendInput, git push origin %branch% {Enter}
}

; create a windows notification toast
showToast(title, string){
    TrayTip, %title%, %string%, 20, 1
}