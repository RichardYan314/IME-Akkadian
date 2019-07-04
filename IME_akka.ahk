On := true

GetKeyboardLanguage() {
    if !ThreadId := DllCall("user32.dll\GetWindowThreadProcessId", "Ptr", WinActive("A"), "UInt", 0, "UInt")
        Error := "GetWindowThreadProcessId Failed"
    else if !KBLayout := DllCall("user32.dll\GetKeyboardLayout", "UInt", ThreadId, "UInt")
        Error := "GetKeyboardLayout Failed"
        
    if Error
        MsgBox, % Error
    else
        ; MsgBox, % Format("Lang. 0x{:04X}, Prim. 0x{:04X}, Sub. 0x{:02X}", KBLayout & 0xFFFF, KBLayout & 0x03FF, (KBLayout & 0xFC00) >> 10)
        return KBLayout & 0xFFFF
}

^Numpad0::
if On {
    MsgBox "off"
    On := false
} else {
    MsgBox "on"
    On := true
}
return

#IF On && (GetKeyboardLanguage() == 0x0409)
#Hotstring O ? *
::a1::ā
::a2::â
::e1::ē
::e2::ê
::h1::ḥ
::h2::ḫ
::i1::ī
::i2::î
::o1::ō
::o2::ô
::s1::ṣ
::s2::š
::t1::ṭ
::u1::ū
::u2::û
::3::ʾ
::4::ʿ
