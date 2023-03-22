DarkMode(guiObj) {
    guiObj.BackColor := "171717"
    return guiObj
}
Gui.Prototype.DefineProp("DarkMode", {Call: DarkMode})

MakeFontNicer(guiObj, fontSize := 10) {
    guiObj.SetFont("s" fontSize " cC5C5C5", "Consolas")
    return guiObj
}
Gui.Prototype.DefineProp("MakeFontNicer", {Call: MakeFontNicer})

PressTitleBar(winTitle) {
    if Type(winTitle) = "Gui" {
        winTitle := winTitle.Hwnd
    }
    PostMessage(0xA1, 2,,, winTitle)
}
Gui.Prototype.DefineProp("PressTitleBar", {Call: PressTitleBar})

ToggleInfo(text) {
    g_ToggleInfo := Gui("AlwaysOnTop -Caption +ToolWindow").DarkMode().MakeFontNicer()
    g_ToggleInfo.Add("Text",, text)
    g_ToggleInfo.Show("W225 NA x1595 y1000")
    SetTimer(() => g_ToggleInfo.Destroy(), -1000)
    return g_ToggleInfo
}