ATT.PrintName = ARC9.UC.AttName("uc_tac_tlr2hl")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.light"] = "",
}
ATT.CustomCons = {
    ["uc.base.con.light"] = "",
}

ATT.Icon = Material("entities/att/acwatt_uc_tac_tlr2hl.png", "mips smooth")
ATT.Category = {"tac","tac_pistol"}
ATT.SortOrder = 20 + 4
ATT.Model = "models/weapons/arccw/atts/uc_tlr2hl.mdl"
ATT.ModelOffset = Vector(0.75, 0, -0.1)
ATT.ModelAngleOffset = Angle(0,0,0)
ATT.Scale = 0.75
ATT.Laser = false
ATT.LaserStrength = 2 / 5
ATT.LaserAttachment = 2
ATT.LaserColor = Color(255, 0, 0, 150)
ATT.AimDownSightsTimeMult = 1.05
ATT.SprintToFireTimeMult = 1.05
ATT.SpeedMultSights = 0.95
ATT.SpeedMult = 1
ATT.Flashlight = false
ATT.FlashlightFOV = 50
ATT.FlashlightDistance = 1024 -- how far it goes
ATT.FlashlightColor = Color(255, 235, 229)
ATT.FlashlightMaterial = "effects/flashlight001"
ATT.FlashlightBrightness = 0.5
ATT.FlashlightAttachment = 2
ATT.ToggleStats = {
    {
        PrintName = "uc.toggle.laser",
        Laser = true,
        UC_HipDispersionMult = 0.8,
        UC_MoveDispersionMult = 0.8,
    },
    {
        PrintName = "uc.toggle.both",
        Laser = true,
        Flashlight = true,
        UC_HipDispersionMult = 0.8,
        UC_MoveDispersionMult = 0.8,
    },
    {
        PrintName = "uc.toggle.light",
        Flashlight = true,
    },
    {
        PrintName = "uc.toggle.off",
    }
}
ATT.ToggleOnF = true
