ATT.PrintName = ARC9.UC.AttName("ur_mp5_stock_ump")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/ur_mp5/stock_ump.png", "smooth mips")
ATT.Category = "ur_mp5_stock"
ATT.UC_ToggleSound = "arccw_uc/common/stockslide.ogg"

ATT.DeployTimeMult = 1.1
ATT.SpeedMultSights = 0.85
ATT.SpeedMultShooting = 0.85
ATT.RecoilRandomSideMult = 0.75

ATT.ToggleStats = {
    {
        PrintName = "uc.toggle.extended",
        ActivateElements = {"stock_ump"},
        UC_HipDispersionMult = .75,
    },
    {
        PrintName = "ur.toggle.folded",
        ActivateElements = {"stock_ump_folded"},
        BarrelLengthAdd = -12,
        RecoilMult = 1.75,
        SwayMult = 2.5,
    }
}

ATT.ActivateElements = {"ur_mp5_stock_ump"}

ATT.ToggleAttSoundHook = ARC9.UC.ToggleSound
ATT.Hook_Think = ARC9.UC.ToggleSoundThink
