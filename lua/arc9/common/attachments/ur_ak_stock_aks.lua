ATT.PrintName = ARC9.UC.AttName("ur_ak_stock_aks")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/ur_ak/stock/fold.png", "mips smooth")
ATT.Category = {"ur_ak_stock"}
ATT.SortOrder = 1
ATT.UC_ToggleSound = "arccw_uc/common/stockslide.ogg"
ATT.ExcludeElements = {"mag_drum"}
ATT.ToggleStats = {
    {
        PrintName = "uc.toggle.extended",
        AimDownSightsTimeMult = .8,
        SprintToFireTimeMult = .8,
        RecoilRandomSideMult = 1.25,
        SwayMult = 1.2,
        SpeedMultSights = 1.05,
        ActivateElements = {"stock_aks"},
    },
    {
        PrintName = "ur.toggle.folded",
        AimDownSightsTimeMult = 0.6,
        SprintToFireTimeMult = 0.6,
        DeployTimeMult = 0.85,
        RecoilMult = 1.5,
        RecoilRandomSideMult = 2,
        SpeedMultSights = 1.2,
        SpeedMultShooting = 1.15,
        BarrelLengthAdd = -9,
        SwayMult = 3,
        ActivateElements = {"stock_aks_folded"},
    }
}

ATT.ToggleAttSoundHook = ARC9.UC.ToggleSound
ATT.Hook_Think = ARC9.UC.ToggleSoundThink
