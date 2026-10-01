ATT.PrintName = ARC9.UC.AttName("ud_m16_stock_607")
ATT.MenuCategory = "ARC9 - Urban Coalition"

ATT.Icon = Material("entities/att/acwatt_ud_m16_stock_607.png", "smooth mips")
ATT.Category = "ud_m16_stock"
ATT.SortOrder = 5
ATT.SwayMult = 1.25
ATT.SpreadMultMove = 0.9
ATT.ToggleStats = {
    {
        PrintName = "uc.toggle.extended",
        ActivateElements = {"stock_607_ex"},
    },
    {
        PrintName = "uc.toggle.collapsed",
        ActivateElements = {"stock_607_in"},
        AimDownSightsTimeMult = 0.8,
        SprintToFireTimeMult = 0.8,
        RecoilMult = 1.15,
        BarrelLengthAdd = -4,
    }
}

ATT.UC_ToggleSound = "arccw_uc/common/stockslide.ogg"
ATT.ToggleAttSoundHook = ARC9.UC.ToggleSound
ATT.Hook_Think = ARC9.UC.ToggleSoundThink
