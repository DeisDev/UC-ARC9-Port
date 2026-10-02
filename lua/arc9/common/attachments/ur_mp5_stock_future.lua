ATT.PrintName = ARC9.UC.AttName("ur_mp5_stock_future")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/ur_mp5/stock_fish.png", "smooth mips")
ATT.Category = "ur_mp5_stock"
ATT.UC_ToggleSound = "arccw_uc/common/stockslide.ogg"

ATT.UC_MoveDispersionMult = .85
ATT.SwayMult = 1.5
ATT.AimDownSightsTimeMult = 1.2
ATT.SprintToFireTimeMult = 1.2
ATT.RecoilRandomSideMult = 1.15
ATT.UC_HipDispersionMult = 0.85

ATT.ToggleStats = {
    {
        PrintName = "uc.toggle.extended",
        ActivateElements = {"stock_future"},
    },
    {
        PrintName = "uc.toggle.collapsed",
        ActivateElements = {"stock_future_folded"},
        SpeedMultShooting = 1.15,
        BarrelLengthAdd = -4
    }
}

ATT.ActivateElements = {"ur_mp5_stock_future"}

ATT.ToggleAttSoundHook = ARC9.UC.ToggleSound
ATT.Hook_Think = ARC9.UC.ToggleSoundThink
