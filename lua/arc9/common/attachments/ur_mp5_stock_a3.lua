ATT.PrintName = ARC9.UC.AttName("ur_mp5_stock_a3")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/ur_mp5/stock_colap.png", "smooth mips")
ATT.Category = "ur_mp5_stock"
ATT.UC_ToggleSound = "arccw_uc/common/stockslide.ogg"

ATT.RecoilRandomSideMult = 1.25
ATT.AimDownSightsTimeMult = 0.90
ATT.SprintToFireTimeMult = 0.90

ATT.DeployTimeMult = 0.85

ATT.UC_HipDispersionMult = 0.8

ATT.ToggleStats = {
    {
        PrintName = "uc.toggle.extended",
        ActivateElements = {"stock_a3"},
    },
    {
        PrintName = "uc.toggle.collapsed",
        ActivateElements = {"stock_a3_folded"},
        BarrelLengthAdd = -9,

        RecoilMult = 1.75,
        SwayMult = 2,
        SpeedMultShooting = 1.12,
        SpeedMultSights = 1.12,
    }
}

ATT.ActivateElements = {"ur_mp5_stock_a3"}

ATT.ToggleAttSoundHook = ARC9.UC.ToggleSound
ATT.Hook_Think = ARC9.UC.ToggleSoundThink
