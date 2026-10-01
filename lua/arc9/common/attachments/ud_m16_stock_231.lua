ATT.PrintName = ARC9.UC.AttName("ud_m16_stock_231")
ATT.MenuCategory = "ARC9 - Urban Coalition"

ATT.Icon = Material("entities/att/acwatt_ud_m16_stock_231.png", "smooth mips")
ATT.Category = "ud_m16_stock"
ATT.SortOrder = 3
ATT.AimDownSightsTimeMult = 0.75
ATT.SprintToFireTimeMult = 0.75
ATT.RecoilMult = 1.25
ATT.BarrelLengthAdd = -4
ATT.DeployTimeMult = 0.75
ATT.ToggleStats = {
    {
        PrintName = "uc.toggle.extended",
        ActivateElements = {"stock_231_ex"},
    },
    {
        PrintName = "uc.toggle.collapsed",
        SpreadMultHipFire = 0.6,
        SpreadMultMove = 0.6,
        RecoilRandomSideMult = 2,
        ActivateElements = {"stock_231_in"},
    }
}

ATT.UC_ToggleSound = "arccw_uc/common/stockslide.ogg"
ATT.ToggleAttSoundHook = ARC9.UC.ToggleSound
ATT.Hook_Think = ARC9.UC.ToggleSoundThink
