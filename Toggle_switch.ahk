#NoEnv

#Persistent
#SingleInstance

;
;^ Ctrl
;! Alt
;+ Shift


Gui, +LastFound +AlwaysOnTop -SysMenu -Caption
WindowID := WinExist()

IsIconA := true
Menu, Tray, Icon, shell32.dll, 44  ; Icon1

F1::  ; This is the hotkey for F1
    IsIconA := !IsIconA
    If (IsIconA)
        Menu, Tray, Icon, shell32.dll, 44  ; Icon1
    Else
        Menu, Tray, Icon, shell32.dll, 46  ; Icon2
return

^F1::  ; This is the hotkey for Ctrl+F1
    If (IsIconA)
        Send, 0
    Else {
        Send, {ESC}
		sleep, 120
		Send, {Alt}8
		}
return

^F2::  ; This is the hotkey for Ctrl+F2
    If (IsIconA)
        Send, 0
    Else {
        MsgBox, Hello world
		}
return

^F3::  ;Group in Excel/ Numpad 7
    If (IsIconA)
        Send, 7
    Else {
		Send, +!{Right}
        ;Send, {ESC}
		;sleep, 120
		;Send, {Alt}5
		}
return

^F4::  ; UnGroup in Excel/ Numpad 7
    If (IsIconA)
        Send, 8
    Else {
		Send, +!{Left}
        ;Send, {ESC}
		;sleep, 120
		;Send, {Alt}6
		}
return

^F5::  ; This is the hotkey for Ctrl+F5
    If (IsIconA)
        Send, 9
    Else {
        Send, {ESC}
		sleep, 120
		Send, {Alt}9
		}
return

^F6::  ; This is the hotkey for Ctrl+F6
    If (IsIconA)
        Send, 4
    Else
        MsgBox, Hello world
return

^F7::  ; This is the hotkey for Ctrl+F7
    If (IsIconA)
        Send, 5
    Else
        MsgBox, Hello world
return

^F8::  ; This is the hotkey for Ctrl+F8
    If (IsIconA)
        Send, 6
    Else
        MsgBox, Hello world
return

^F9::  ; This is the hotkey for Ctrl+F9
    If (IsIconA)
        Send, 1
    Else
        MsgBox, Hello world
return

^F10::  ; This is the hotkey for Ctrl+F10
    If (IsIconA)
        Send, 2
    Else
        MsgBox, Hello world
return

^F11::  ; This is the hotkey for Ctrl+F11
    If (IsIconA)
        Send, 3
    Else
        Send, 00D8e000000RwwI
	Send, {TAB}
	Send, admin@dcs5.1v.com
	Send, {TAB}
	Send, Dotbcs01
	Send, {TAB}
	Send, j9eQ6gVX8iGoBcZWx9pDjmBA
return
