ATT.PrintName = ARC9.UC.AttName("ud_m16_stock_carbine")
ATT.MenuCategory = "ARC9 - Urban Coalition"

ATT.Icon = Material("entities/att/acwatt_ud_m16_stock_carbine.png", "smooth mips")
ATT.Category = "ud_m16_stock"
ATT.SortOrder = 6.5
ATT.SwayMult = 1.25
ATT.SpeedMultSights = 1.15
ATT.ToggleStats = {
    {
        PrintName = "uc.toggle.extended",
        ActivateElements = {"stock_carbine_ex"},
    },
    {
        PrintName = "uc.toggle.collapsed",
        ActivateElements = {"stock_carbine_in"},
        RecoilRandomSideMult = 1.5,
        BarrelLengthAdd = -4,
        SpeedMultShooting = 1.1,
        AimDownSightsTimeMult = 0.9,
        SprintToFireTimeMult = 0.9,
    }
}

ATT.UC_ToggleSound = "arccw_uc/common/stockslide.ogg"
ATT.ToggleAttSoundHook = ARC9.UC.ToggleSound
ATT.Hook_Think = ARC9.UC.ToggleSoundThink
