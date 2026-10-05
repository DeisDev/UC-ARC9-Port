ATT.PrintName = ARC9.UC.AttName("uc_tac_flashlight1")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.light"] = "",
}
ATT.CustomCons = {
    ["uc.base.con.light"] = "",
}

ATT.Icon = Material("entities/att/acwatt_uc_tac_flashlight1.png", "mips smooth")
ATT.Category = {"tac","tac_pistol"}
ATT.SortOrder = 30 + 1
ATT.Model = "models/weapons/arccw/atts/ud_flashlight_1.mdl"
ATT.UC_StackHeight = 1.8
ATT.Attachments = ARC9.UC.TacticalStackSlot()
ATT.ModelOffset = Vector(0,0,0)
ATT.ModelAngleOffset = Angle(0,0,180)
ATT.Scale = 1.2
ATT.Flashlight = false
ATT.FlashlightFOV = 50
ATT.FlashlightDistance = 1024 -- how far it goes
ATT.FlashlightColor = Color(255, 242, 229)
ATT.FlashlightMaterial = "effects/flashlight001"
ATT.FlashlightBrightness = 3
ATT.FlashlightAttachment = 1
ATT.ToggleStats = {
    {
        PrintName = "uc.toggle.on",
        Flashlight = true,
    },
    {
        PrintName = "uc.toggle.wide",
        Flashlight = true,
        FlashlightFOV = 80,
        FlashlightDistance = 768,
        FlashlightBrightness = 1,
    },
    {
        PrintName = "uc.toggle.off",
        Flashlight = false,
    }
}
ATT.ToggleOnF = true
