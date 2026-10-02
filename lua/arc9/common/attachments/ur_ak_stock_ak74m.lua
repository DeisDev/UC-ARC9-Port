ATT.PrintName = ARC9.UC.AttName("ur_ak_stock_ak74m")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/ur_ak/stock/n.png", "mips smooth")
ATT.Category = {"ur_ak_stock"}
ATT.SortOrder = 1
ATT.UC_ToggleSound = "arccw_uc/common/stockslide.ogg"
ATT.ExcludeElements = {"mag_drum"}
ATT.ToggleStats = {
    {
        PrintName = "uc.toggle.extended",
        AimDownSightsTimeMult = 0.95,
        SprintToFireTimeMult = 0.95,
        SwayMult = 1.2,
        ActivateElements = {"stock_ak74m"},
    },
    {
        PrintName = "ur.toggle.folded",
        AimDownSightsTimeMult = 0.85,
        SprintToFireTimeMult = 0.85,
        DeployTimeMult = 0.9,
        RecoilMult = 1.25,
        RecoilRandomSideMult = 1.75,
        SpeedMultSights = 1.05,
        SpeedMultShooting = 1.05,
        BarrelLengthAdd = -9,
        SwayMult = 2.5,
        ActivateElements = {"stock_ak74m_folded"},
    }
}

ATT.ToggleAttSoundHook = ARC9.UC.ToggleSound
ATT.Hook_Think = ARC9.UC.ToggleSoundThink
