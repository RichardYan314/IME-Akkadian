On := true

^Numpad0::
if On {
    MsgBox "off"
    On := false
} else {
    MsgBox "on"
    On := true
}
return

#IF On
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
