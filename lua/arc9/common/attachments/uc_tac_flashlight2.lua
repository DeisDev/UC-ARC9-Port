ATT.PrintName = ARC9.UC.AttName("uc_tac_flashlight2")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.light"] = "",
}
ATT.CustomCons = {
    ["uc.base.con.light"] = "",
}

ATT.Icon = Material("entities/att/acwatt_uc_tac_flashlight2.png", "mips smooth")
ATT.Category = {"tac","tac_pistol"}
ATT.SortOrder = 30 + 2
ATT.Model = "models/weapons/arccw/atts/ud_flashlight_2.mdl"
ATT.UC_StackHeight = 1.8
ATT.Attachments = ARC9.UC.TacticalStackSlot()
ATT.ModelOffset = Vector(0,0,-.1)
ATT.Flashlight = false
ATT.FlashlightFOV = 50
ATT.FlashlightDistance = 1024 -- how far it goes
ATT.FlashlightColor = Color(255, 255, 255)
ATT.FlashlightMaterial = "effects/flashlight001"
ATT.FlashlightBrightness = 3
ATT.FlashlightAttachment = 1
ATT.ToggleStats = {
    {
        PrintName = "uc.toggle.on",
        Flashlight = true,
    },
    {
        PrintName = "uc.toggle.tight",
        Flashlight = true,
        FlashlightFOV = 30,
        FlashlightDistance = 1536,
        FlashlightBrightness = 5,
    },
    {
        PrintName = "uc.toggle.off",
        Flashlight = false,
    }
}
ATT.ToggleOnF = true
