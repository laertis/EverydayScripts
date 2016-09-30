;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                                                 ;;
;; This is a a simple AutoHotkey scripts that remaps your Win+E    ;;
;; hotkey to "C:\Users\%username%"                                 ;;
;; Care! This is different from %userprofile% since %userprofile%  ;;
;; is a link to the windows system folder and not the full path    ;;
;; although for some reason opening it with explorer.exe sends you ;;
;; to the full path                                                ;;
;;                                                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#e::
        Run, explorer.exe "C:\Users\%A_Username%" ; opens user profile with full path
        ;Run, explorer.exe "%userprofile%" ; requires #GetEnv if #NoEnv is disabled
        
        ; ALT ;
        ;Run, explore "C:\Users\%A_Username%" ; opens user profile with link
        ;Run, explore %userprofile% ; same but doesn't work with #NoEnv option
        ;Run, %userprofile% ; same
        ;Run, "C:\Users\%A_UserName%" ; same
        
        ;; Global unique identifiers, GUID or CLSID are direct links to system folders
        ;; folders so all of the rest do the same
        ;Run, explorer.exe ::{59031a47-3f72-44a7-89c5-5595fe6b30ee}
        ;Run, explorer ::{59031a47-3f72-44a7-89c5-5595fe6b30ee}
        ;Run, ::{59031a47-3f72-44a7-89c5-5595fe6b30ee}
                
        ; DEBUG ; 
        ;MsgBox, %A_UserName%
Return

;refs:
;http://www.tenforums.com/tutorials/3123-clsid-key-guid-shortcuts-list-windows-10-a.html
;http://superuser.com/questions/398936/shortcut-to-user-home-folder
;https://www.autohotkey.com/docs/Variables.htm#BuiltIn
;https://www.autohotkey.com/docs/commands/Run.htm#verbs
;https://www.autohotkey.com/docs/misc/CLSID-List.htm
;https://autohotkey.com/boards/viewtopic.php?t=7356 ; env variable %userprofile% missing
;https://autohotkey.com/board/topic/49181-win-xp-vista-userprofile-problemresolved/ ; #NoEnv with #EnvGet

