; Note: This implementation assumes an en-US QWERTY layout.


SendMode Input
#NoEnv
#SingleInstance force


options := {delay: 150, timeout: 300, doublePress: -1, swap_backtick_escape: false}
loop %0% {
	arg := %A_Index%
	argSplit := StrSplit(arg, "=")
	option := argSplit[1]
	value := argSplit[2]
	options[option] := value
}


#Include <dual/dual>
dual := new Dual


#Include <dual/defaults>


#If options.swap_backtick_escape
*`::dual.comboKey({F22: "Escape"})
#If


#If true ; Override defaults.ahk. There will be "duplicate hotkey" errors otherwise.

*Space::
*Space UP::dual.combine("F22", A_ThisHotkey, {delay: options.delay, timeout: options.timeout, doublePress: options.doublePress})

*i::dual.comboKey({F22: "Up"})
*j::dual.comboKey({F22: "Left"})
*k::dual.comboKey({F22: "Down"})
*l::dual.comboKey({F22: "Right"})

*u::dual.comboKey({F22: "Home"})
*o::dual.comboKey({F22: "End"})
*h::dual.comboKey({F22: "PgUp"})
*n::dual.comboKey({F22: "PgDn"})

*BackSpace::dual.comboKey({F22: "Delete"})

*\::dual.comboKey({F22: "Insert"})

*b::dual.comboKey({F22: "Space"})

*1::dual.comboKey({F22: "F1"})
*2::dual.comboKey({F22: "F2"})
*3::dual.comboKey({F22: "F3"})
*4::dual.comboKey({F22: "F4"})
*5::dual.comboKey({F22: "F5"})
*6::dual.comboKey({F22: "F6"})
*7::dual.comboKey({F22: "F7"})
*8::dual.comboKey({F22: "F8"})
*9::dual.comboKey({F22: "F9"})
*0::dual.comboKey({F22: "F10"})
*-::dual.comboKey({F22: "F11"})
*=::dual.comboKey({F22: "F12"})

*p::dual.comboKey({F22: "PrintScreen"})
*[::dual.comboKey({F22: "ScrollLock"})
*]::dual.comboKey({F22: "Pause"})

*/::dual.comboKey({F22: "AppsKey"})

*m::dual.comboKey({F22: "``"})
*,::dual.comboKey({F22: "~"})

*e::dual.comboKey({F22: "Escape"})
*`::dual.comboKey("Escape", {F22: "``"})

#If
