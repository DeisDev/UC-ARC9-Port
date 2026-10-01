ATT.PrintName = ARC9.UC.AttName("uc_tac_laser_green")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomCons = {
    ["uc.base.con.light"] = "",
}

ATT.Icon = Material("entities/att/acwatt_uc_tac_flashlight2.png", "mips smooth")
ATT.Category = {"tac","tac_pistol"}
ATT.SortOrder = 29
ATT.Model = "models/weapons/arccw/atts/ud_flashlight_1.mdl"
ATT.ModelOffset = Vector(0,0,0)
ATT.ModelAngleOffset = Angle(0,0,180)
ATT.Scale = 1.2
ATT.Laser = false
ATT.LaserStrength = 2 / 5
ATT.LaserAttachment = 1
ATT.LaserColor = Color(0, 255, 0, 150)
ATT.ToggleStats = {
    {
        PrintName = "uc.toggle.on",
        Laser = true,
        SpreadMultHipFire = 0.8,
        SpreadMultMove = 0.8,
    },
    {
        PrintName = "uc.toggle.off",
        Laser = false,
    }
}
ATT.ToggleOnF = true
