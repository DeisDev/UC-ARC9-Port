ATT.PrintName = ARC9.UC.AttName("ud_m16_stock_sopmod")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"stock_231_tube"}

ATT.Icon = Material("entities/att/acwatt_ud_m16_stock_sopmod.png", "smooth mips")
ATT.Category = {"go_stock", "ud_m16_stock"}
ATT.Model = "models/weapons/arccw/atts/stock_sopmod.mdl"
ATT.ModelOffset = Vector(-0.57, 0, 0.40)
ATT.Scale = 0.74
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.SortOrder = 6
ATT.SwayMult = 1.25
ATT.SpeedMultSights = 1.15
ATT.ToggleStats = {
    {
        PrintName = "uc.toggle.extended",
        ModelOffset = Vector(-1.5, 0, 0.40),
    },
    {
        PrintName = "uc.toggle.collapsed",
        ModelOffset = Vector(0, 0, 0.40),
        RecoilRandomSideMult = 1.5,
        BarrelLengthAdd = -4,
        SpeedMultShooting = 1.1,
        AimDownSightsTimeMult = 0.85,
        SprintToFireTimeMult = 0.85,
        UC_MoveDispersionMult = 1.15,
    }
}
ATT.ToggleOnF = true

ATT.UC_ToggleSound = "arccw_uc/common/stockslide.ogg"
ATT.ToggleAttSoundHook = ARC9.UC.ToggleSound
ATT.Hook_Think = ARC9.UC.ToggleSoundThink
