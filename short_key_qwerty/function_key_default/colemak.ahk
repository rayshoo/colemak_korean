;Created by rayshoo / github.com/dfnk5516
SendMode Input
#NoEnv
#InstallKeybdHook

Menu, Tray, Icon, main.cpl, 8

iniRead, SXCoordinate, Data\Save.ini, Coordinate, SXCoordinate
iniRead, SYCoordinate, Data\Save.ini, Coordinate, SYCoordinate
CoordMode, ToolTip, Screen

Colemak:=true
SetTimer, alertColemak, 0

#space::
Suspend, Permit
Suspend, toggle
if(Colemak=true)
{
	Colemak:=false
	SetTimer, alertColemak, Off
	SetTimer, disappearColemak, Off
	SetTimer, alertQwerty, 0	
}
else
{
	Colemak:=true
	SetTimer, alertQwerty, Off
	SetTimer, disappearQwerty, Off
	SetTimer, alertColemak, 0
}
return

alertColemak:
ToolTip,colemak,%SXCoordinate%,%SYCoordinate%,1
SetTimer, disappearColemak, 3000
SetTimer, alertColemak, Off
return

disappearColemak:
ToolTip,,,,1
SetTimer, disappearColemak, Off
return

alertQwerty:
ToolTip,qwerty,%SXCoordinate%,%SYCoordinate%,1
SetTimer, disappearQwerty, 3000
SetTimer, alertQwerty, Off
return

disappearQwerty:
ToolTip,,,,1
SetTimer, disappearQwerty, Off
return

;q::
;w::

e::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, F
	}
	if capstate=U
	{
		Send, f
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}e
	}
	if capstate=U
	{
		Send, e
	}
	Suspend Off
}
return

+e::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, f
	}
	if capstate=U
	{
		Send, F
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}+e
	}
	if capstate=U
	{
		Send, +e
	}
	Suspend Off
}
return


r::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, P
	}
	if capstate=U
	{
		Send, p
	}
	Suspend Off

}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}r
	}
	if capstate=U
	{
		Send, r
	}
	Suspend Off
}
return

+r::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, p
	}
	if capstate=U
	{
		Send, P
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}+r
	}
	if capstate=U
	{
		Send, +r
	}
	Suspend Off
}
return

t::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, G
	}
	if capstate=U
	{
		Send, g
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}t
	}
	if capstate=U
	{
		Send, t
	}
	Suspend Off
}
return

+t::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, g
	}
	if capstate=U
	{
		Send, G
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}+t
	}
	if capstate=U
	{
		Send, +t
	}
	Suspend Off
}
return

y::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, J
	}
	if capstate=U
	{
		Send, j
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}y
	}
	if capstate=U
	{
		Send, y
	}
	Suspend Off
}
return

+y::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, j
	}
	if capstate=U
	{
		Send, J
	}
	Suspend Off

}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}y
	}
	if capstate=U
	{
		Send, y
	}
	Suspend Off
}
return

u::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, L
	}
	if capstate=U
	{
		Send, l
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}u
	}
	if capstate=U
	{
		Send, u
	}
	Suspend Off
}
return

+u::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, l
	}
	if capstate=U
	{
		Send, L
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}u
	}
	if capstate=U
	{
		Send, u
	}
	Suspend Off
}
return

i::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, U
	}
	if capstate=U
	{
		Send, u
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}i
	}
	if capstate=U
	{
		Send, i
	}
	Suspend Off
}
return

+i::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, u
	}
	if capstate=U
	{
		Send, U
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}i
	}
	if capstate=U
	{
		Send, i
	}
	Suspend Off
}
return

o::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, Y
	}
	if capstate=U
	{
		Send, y
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}o
	}
	if capstate=U
	{
		Send, o
	}
	Suspend Off
}
return

+o::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, y
	}
	if capstate=U
	{
		Send, Y
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}+o
	}
	if capstate=U
	{
		Send, +o
	}
	Suspend Off
}
return

p::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, +{SC027}
	}
	if capstate=U
	{
		Send, {SC027}
	}
	Suspend Off
}
else
{
	Suspend On
	Send, {SC027}
	Suspend Off
}
return

+p::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, {SC027}
	}
	if capstate=U
	{
		Send, +{SC027}
	}
	Suspend Off
}
else
{
	Suspend On
	Send, +{SC027}
	Suspend Off

}
return

;[::
;]::
;\::
;a::

s::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, R
	}
	if capstate=U
	{
		Send, r
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}s
	}
	if capstate=U
	{
		Send, s
	}
	Suspend Off
}
return

+s::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, r
	}
	if capstate=U
	{
		Send, R
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}+s
	}
	if capstate=U
	{
		Send, +s
	}
	Suspend Off
}
return

d::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, S
	}
	if capstate=U
	{
		Send, s
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}d
	}
	if capstate=U
	{
		Send, d
	}
	Suspend Off
}
return

+d::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, s
	}
	if capstate=U
	{
		Send, S
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}d
	}
	if capstate=U
	{
		Send, d
	}
	Suspend Off
}
return

f::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, T
	}
	if capstate=U
	{
		Send, t
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}f
	}
	if capstate=U
	{
		Send, f
	}
	Suspend Off
}
return

+f::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, t
	}
	if capstate=U
	{
		Send, T
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}f
	}
	if capstate=U
	{
		Send, f
	}
	Suspend Off
}
return

g::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, D
	}
	if capstate=U
	{
		Send, d
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}g
	}
	if capstate=U
	{
		Send, g
	}
	Suspend Off
}
return

+g::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, d
	}
	if capstate=U
	{
		Send, D
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}g
	}
	if capstate=U
	{
		Send, g
	}
	Suspend Off
}
return

;h::

j::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, N
	}
	if capstate=U
	{
		Send, n
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}j
	}
	if capstate=U
	{
		Send, j
	}
	Suspend Off
}
return

+j::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, n
	}
	if capstate=U
	{
		Send, N
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}j
	}
	if capstate=U
	{
		Send, j
	}
	Suspend Off
}
return

k::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, E
	}
	if capstate=U
	{
		Send, e
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}k
	}
	if capstate=U
	{
		Send, k
	}
	Suspend Off
}
return

+k::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, e
	}
	if capstate=U
	{
		Send, E
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}k
	}
	if capstate=U
	{
		Send, k
	}
	Suspend Off
}
return

l::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, I
	}
	if capstate=U
	{
		Send, i
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}l
	}
	if capstate=U
	{
		Send, l
	}
	Suspend Off
}
return

+l::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, i
	}
	if capstate=U
	{
		Send, I
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}l
	}
	if capstate=U
	{
		Send, l
	}
	Suspend Off
}
return

SC027::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, O
	}
	if capstate=U
	{
		Send, o
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}p
	}
	if capstate=U
	{
		Send, p
	}
	Suspend Off
}
return

+SC027::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, o
	}
	if capstate=U
	{
		Send, O
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}+p
	}
	if capstate=U
	{
		Send, +p
	}
	Suspend Off
}
return

;SC028::
;z::
;x::
;c::
;v::
;b::

n::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, K
	}
	if capstate=U
	{
		Send, k
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}n
	}
	if capstate=U
	{
		Send, n
	}
	Suspend Off
}
return

+n::
ret:=IME_CHECK("A")
if(ret=0)
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		Send, k
	}
	if capstate=U
	{
		Send, K
	}
	Suspend Off
}
else
{
	Suspend On
	GetKeyState, capstate, CapsLock, T
	if capstate=D
	{
		SetKeyDelay -1
		Send, {Blind}n
	}
	if capstate=U
	{
		Send, n
	}
	Suspend Off
}
return

#+m::#+m
#m::#m
;,::
;.::
;/::


Capslock::BackSpace
+Capslock::Capslock
; +Capslock::
; SetStoreCapsLockMode, Off
; Send, {CapsLock}
; return
!Capslock::
SetStoreCapsLockMode, Off
Send, !{Capslock}
return
#Capslock::
SetStoreCapsLockMode, Off
Send, #{Capslock}
return
+!Capslock::
SetStoreCapsLockMode, Off
Send, +!{Capslock}
return
^+Capslock::
SetStoreCapsLockMode, Off
Send, ^+{Capslock}
return
^!Capslock::
SetStoreCapsLockMode, Off
Send, ^!{Capslock}
return
^!+Capslock::
SetStoreCapsLockMode, Off
Send, ^!+{Capslock}
return

; F1::Left
; +F1::F1
; F2::Down
; +F2::F2
; F3::Up
; +F3::F3
; F4::Right
; +F4::F4
; F7::F2
; +F7::F7
; F9::Home
; +F9::F9
; F10::End
; +F10::F10
IME_CHECK(WinTitle) 
{
	WinGet,hWnd,ID,%WinTitle% 
	Return Send_ImeControl(ImmGetDefaultIMEWnd(hWnd),0x005,"") 
}



Send_ImeControl(DefaultIMEWnd, wParam, lParam) 
{
	DetectSave := A_DetectHiddenWindows
	DetectHiddenWindows,ON 
	SendMessage 0x283, wParam,lParam,,ahk_id %DefaultIMEWnd% 
	if (DetectSave <> A_DetectHiddenWindows) 
	DetectHiddenWindows,%DetectSave% 
	return ErrorLevel 
} 



ImmGetDefaultIMEWnd(hWnd) 
{ 
	return DllCall("imm32\ImmGetDefaultIMEWnd", Uint,hWnd, Uint) 
}

;CapsLock::		; CapsLock
;+CapsLock::	; Shift+CapsLock
;!CapsLock::	; Alt+CapsLock
;^CapsLock::		; Ctrl+CapsLock
;#CapsLock::		; Win+CapsLock
;^!CapsLock::	; Ctrl+Alt+CapsLock
;^!#CapsLock::	; Ctrl+Alt+Win+CapsLock
;............	; You can add whatever you want to block
;return			; Do nothing, return
