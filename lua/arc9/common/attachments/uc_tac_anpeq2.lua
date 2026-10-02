ATT.PrintName = ARC9.UC.AttName("uc_tac_anpeq2")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.light"] = "",
}
ATT.CustomCons = {
    ["uc.base.con.light"] = "",
}

ATT.Icon = Material("entities/att/acwatt_uc_tac_anpeq2.png", "mips smooth")
ATT.Category = {"tac"}
ATT.SortOrder = 20 + 3
ATT.Model = "models/weapons/arccw/atts/uc_anpeq2.mdl"
ATT.ModelOffset = Vector(0, 0.01, 0.35)
ATT.ModelAngleOffset = Angle(0, 0,180)
ATT.Scale = 1.2
ATT.ModelSkin = 1
ATT.Laser = false
ATT.LaserStrength = 3.5 / 5
ATT.LaserAttachment = 2
ATT.LaserColor = Color(255, 0, 0, 150)
ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1
ATT.SpeedMultSights = 0.9
ATT.SpeedMult = 1
ATT.Flashlight = false
ATT.FlashlightFOV = 50
ATT.FlashlightDistance = 512 -- how far it goes
ATT.FlashlightColor = Color(255, 235, 229)
ATT.FlashlightMaterial = "effects/flashlight001"
ATT.FlashlightBrightness = 2
ATT.FlashlightAttachment = 2
ATT.ToggleStats = {
    {
        PrintName = "uc.toggle.laser",
        Laser = true,
        UC_HipDispersionMult = 0.7,
        UC_MoveDispersionMult = 0.8,
        AimDownSightsTimeMult = .9,
        SprintToFireTimeMult = .9,
        SpeedMultSights = .75,
    },
    {
        PrintName = "uc.toggle.both",
        Laser = true,
        Flashlight = true,
        UC_HipDispersionMult = 0.7,
        UC_MoveDispersionMult = 0.8,
        AimDownSightsTimeMult = .9,
        SprintToFireTimeMult = .9,
        SpeedMultSights = .75,
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
