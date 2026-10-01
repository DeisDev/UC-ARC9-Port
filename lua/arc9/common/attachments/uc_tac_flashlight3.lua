ATT.PrintName = ARC9.UC.AttName("uc_tac_flashlight3")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.light"] = "",
}
ATT.CustomCons = {
    ["uc.base.con.light"] = "",
}

ATT.Icon = Material("entities/att/acwatt_uc_tac_flashlight3.png", "mips smooth")
ATT.Category = {"tac"}
ATT.SortOrder = 30 + 3
ATT.Model = "models/weapons/arccw/atts/uc_flashlight.mdl"
ATT.ModelOffset = Vector(0.5,0,-0.07)
ATT.ModelAngleOffset = Angle(0,0,0)
ATT.Scale = 0.75
ATT.Flashlight = false
ATT.FlashlightFOV = 40
ATT.FlashlightDistance = 1536 -- how far it goes
ATT.FlashlightColor = Color(255, 229, 200)
ATT.FlashlightMaterial = "effects/flashlight001"
ATT.FlashlightBrightness = 4
ATT.FlashlightAttachment = 1
ATT.ToggleStats = {
    {
        PrintName = "uc.toggle.on",
        Flashlight = true,
    },
    {
        PrintName = "uc.toggle.off",
        Flashlight = false,
    }
}
ATT.ToggleOnF = true
