ATT.PrintName = ARC9.UC.AttName("uc_optic_annihilator")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomCons = {
    ["uc.base.con.beam"] = "",
}

ATT.Icon = Material("entities/att/acwatt_uc_optic_annihilator.png", "mips smooth")
ATT.Category = {"ur_deagle_tritium"} -- Deagle exclusive until we figure out the problem with the model
ATT.SortOrder = 998 -- Remove when att becomes universal
ATT.Model = "models/weapons/arccw/atts/ur_annihilator_laser.mdl"
ATT.ModelOffset = Vector(-6,0,-3.5) -- Will need to change when the model recompiles
ATT.Scale = 0.933
ATT.SwayMult = 1.5
ATT.AimDownSightsTimeMult = 1.25
ATT.SprintToFireTimeMult = 1.25
ATT.SpeedMult = 0.975
ATT.Sights = {
    {
        Pos = Vector(0, 14, -5.12),
        Ang = Angle(-.2, 0, 0),
        Magnification = 1,
    },
}
ATT.LaserStrength = 2
ATT.ToggleStats = {
    {
        PrintName = "uc.toggle.on",
        Laser = true,
        LaserAttachment = 1,
        LaserColor = Color(50, 255, 50),
        SpreadMultHipFire = 0.75,
        SpreadMultMove = 0.6,
        AimDownSightsTimeMult = 0.85,
        SprintToFireTimeMult = 0.85,
    },
    {
        PrintName = "uc.toggle.off",
        Laser = false,
    }
}
ATT.ToggleOnF = true
