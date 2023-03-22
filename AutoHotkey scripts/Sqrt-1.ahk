#Requires AutoHotkey v2.0
#NoTrayIcon
#Include <gui>
ListLines False
KeyHistory 0
ToggleInfo("Activated")
DetectHiddenWindows True
; Hotstrings: https://www.autohotkey.com/docs/v2/Hotstrings.htm

; -----------------------------------------------------------------------------------------
; COPYPASTA 
; -----------------------------------------------------------------------------------------
#Hotstring c * ?

::;asked.::sorry i didnt now please fuck off before i block u fucker legit spaming asked asked asked after someone posts chutiya hai kya be saale sara mood kharab kardiya pagal ab ok likh dega saale ka keyboard hi kharab h
::;Asked.::I am sorry that I didn't, but please fuck off before I block you fucker spamming asked, asked, asked after someone posts saale chutiya hai kya be bc saara mood kharab kar diya aur ab ok likh dega; saale ka keyboard hi kharab h
::;ASKED.::SORRY I DIDNT NOW PLEASE FUCK OFF BEFORE I BLOCK YOU FUCKER LEGIT SPAMING ASKED ASKED ASKED AFTER SOMEONE POSTS CHUTIYA HAI KYA BE SAALE SARA MOOD KHARAB KARDIYA PAGAL AB OK LIKH DEGA SAALE KA KEYBOARD HI KHARAB H

::;badwords::aapko aise bad word words bolte hue sharam nahi aati? aapme manners nahi h? mummi papa ne tameez nahi sikhai? kuch toh sharam karo, thorhi toh tameez rakho.

::;sure::https://media.discordapp.net/attachments/913695901636255844/1063335780921122947/sure.webp

::;lorem::Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

; -------------------------------------------------------------------------------------------
; SCIENCE AND MATHS ; yeah mr. white! *science*!
; -------------------------------------------------------------------------------------------

::;po::°
::;p.::•
::;pn::ⁿ
::;^i::ⁱ ;conflicts with ;pi
::`,pi::ⁱ
::;p+::⁺
::;p-::⁻
::;p0::⁰
::;p1::¹
::;p2::²
::;p3::³
::;p4::⁴
::;p5::⁵
::;p6::⁶
::;p7::⁷
::;p8::⁸
::;p9::⁹

::;bo::ₒ
::;b0::₀
::;b1::₁
::;b2::₂
::;b3::₃
::;b4::₄
::;b5::₅
::;b6::₆

::;st;::ˢᵗ
::;nd;::ⁿᵈ
::;rd;::ʳᵈ
::;th;::ᵗʰ

::;1/2::½
::;1/3::⅓
::;2/3::⅔
::;1/4::¼
::;3/4::¾
::;alpha::α
::;beta::β
::;gamma::γ
::;Gamma::Γ
::;delta::δ
::;Delta::Δ
::;epsilon::ε
::;zeta::ζ
::;eta::η
::;theta::θ
::;kappa::κ
::;lambda::λ
::;Lambda::Λ
::;mu::μ
::;nu::ν
::;xi::ξ
::;Xi::Ξ
::;sigma::σ
::;Sigma::Σ
::;pi::π
::;Pi::∏
::;rho::ρ
::;tau::τ
::;phi::ϕ
::;phivar::φ
::;Phi::Φ
::;chi::χ
::;psi::ψ
::;Psi::Ψ
::;omega::ω
::;Omega::Ω

::;mho::℧

::+-::±
::-+::∓
::;-;::−
::;`.;::⋅
::;`*;::×
::;`/;::÷
::;sqrt::√
::;cbrt::∛
::;ftrt::∜
::;int::∫
::;<=::≤
::;>=::≥
::;<<::≪
::;>>::≫
::;/=::≠
::;approx::≈
::;~::≈
::;equiv::≡
::;f;::ƒ

::;>->::→
::;<-<::←
::;<->::↔
::;==>::⟹
::;<==::⇐
::;<=>::⇔
::;up::↑
::/\::↑
::\/::↓
::;down::↓
::;v::↓
::<>::⇌

::;hence::∴
::;therefore::∴
::;because::∵
::;since::∵
::;propto::∝
::;inf::∞
::;forall::∀
::;exists::∃
::;not::¬
::;inset::∈ ; member of
::;subset::⊂
::;cup::∪
::;union::∪
::;cap::∩

::;--::—

::;shrug::¯\_(ツ)_/¯

::;!::⚠️
::;#::░

; -------------------------------------------------------------------------------------------
; DIACRITIC COMBINERS 
; -------------------------------------------------------------------------------------------

::^^::{U+0302}  ; îĵk̂
::^_::{U+0305} ; √̅x
::^`:::{U+0308} ; ü

; -------------------------------------------------------------------------------------------
; SHORTCUTS 
; -------------------------------------------------------------------------------------------
CapsLock::Control
; https://www.autohotkey.com/docs/v2/Hotkeys.htm
; https://www.autohotkey.com/docs/v2/KeyList.htm
; ^ Ctrl
; ! Alt
; # Win
; + Shift
; < left key of the pair
; > right key of the pair
; a, b, c, (d), e, f, g, (h), (i), (j), (k), l, m, n, o, p, (q), r, s, (t), (u), (v), (w), (x), (y), (z).

#HotIf GetKeyState("RAlt", "P")
Space & l::CapsLock

Space & a::Run("C:\Program Files\Anki\anki.exe") ; anki
Space & b::Run("C:\Users\annu7\Sqrt-1\Applications\Sqrt-1.lnk")
Space & m::Run("C:\Users\annu7\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Morgen.lnk")
Space & n::Run("C:\Users\annu7\Music\Noise blocker.mp3") ; blockr
Space & c::Run("C:\Users\annu7\OneDrive\Documents\Desmos.html") ; calculator
Space & p::Run("https://www.youtube.com/playlist?list=PLnAhz9kAaSkJi1Yd-0xBUU06NB3TNQxy7") ; youtube study playlist

Space & f::Run("C:\Users\annu7\Sqrt-1") ; my main folder for stuff, now easily accessible
Space & g::Run("https://www.google.com/") ; google

Space & s::Run("C:\Users\annu7\Sqrt-1\putting the pro in programming\python stopwatch\stopwatch.pyw")

Space & r::{
	Send '^s'
	Sleep 100
	Reload
}
; removed shortcut for e::Edit to make it harder to waste my time

Space & e::Run("C:\Users\annu7\Sqrt-1\Applications\Excalidraw.lnk")

Space & o::{
	Run("C:\Users\annu7\Sqrt-1\Applications\Sqrt-1.lnk")
	Sleep 1000
	Run("C:\Program Files\Anki\anki.exe")
	Sleep 1000
	Run("C:\Users\annu7\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Morgen.lnk")
	Sleep 1000
	Run("C:\Users\annu7\Sqrt-1\putting the pro in programming\python stopwatch\stopwatch.pyw")
}

#HotIf

; -------------------------------------------------------------------------------------------
; TIME 
; -------------------------------------------------------------------------------------------

::;rn::
{
CurrentDate := FormatTime(, "yyyy'-'MM'-'dd' 'HH'.'mm'.'ss")
SendInput(CurrentDate)
return
}

; -------------------------------------------------------------------------------------------
; ANKI
; -------------------------------------------------------------------------------------------

::\xfrac::{Raw}{}^{\Large{1} }\!{\Large/}\!_{\!\Large{2} }
::\left(::\left(\right){left 7}
::\cfrac{::\cfrac{{}{}}{{}{}}{left 3}
::;cl::^+c

; --------------------------------------------------------------------------------------------
; VIM MODE
; --------------------------------------------------------------------------------------------

global vim := False
RAlt & LAlt::toggleVim()

toggleVim() {
	global
	vim := !vim
	position := vim ? "On" : "Off"
	ToggleInfo("Vim mode " position)
}
resetNo() {

}

#HotIf vim

Esc::toggleVim()
q::toggleVim()

i::toggleVim() ; insert
+i::{
Send '{Home}'
toggleVim()
}
a::{
	Send '{Right}'
	toggleVim()
}
+a::{ ; append
Send '{End}'
toggleVim()
}
o::{
Send '^{Down}'
Send '{Enter}'
Send '{Up}'
toggleVim()
}
+o::{ ; 'O'
Send '^{Up}'
Send '{Enter}'
Send '{Up}'
toggleVim() 
}

h::Left 
j::Down
k::Up
l::Right

w::^Right ; "word" moves you to the beginning of the next word: te|st test → test |test
b::^Left  ; "back" moves you to the beginning of the current word: test te|st → test |test

+6::Home ; "^" moves you to the start of the line
+4::End  ; "$" moves you to the end of the line

::{::^{Up}
::}::^{Down}

::gg::^{Home}
+g::^End

x::Delete
r::Delete

y::Send '^c'
::yy::{
	Send '+{Home}'
	Send '^c'
}
::Y::{
	Send '+{End}'
	Send '^c'
}
::p::{
	Send '^v'
}
::dd::{
	Send '+{Home}'
	Send '{Delete}'
}

u::{
	Send '^z'
}
#HotIf