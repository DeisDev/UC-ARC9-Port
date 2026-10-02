ATT.PrintName = ARC9.UC.AttName("ur_mp5_stock_pdw")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/ur_mp5/stock_pdw.png", "smooth mips")
ATT.Category = "ur_mp5_stock"
ATT.UC_ToggleSound = "arccw_uc/common/stockslide.ogg"

ATT.UC_MoveDispersionMult = .85
ATT.RecoilMult = 1.15
ATT.RecoilRandomSideMult = 1.25

ATT.UC_HipDispersionMult = 0.75
ATT.DeployTimeMult = 0.85

ATT.ToggleStats = {
    {
        PrintName = "uc.toggle.extended",
        ActivateElements = {"stock_pdw"},
    },
    {
        PrintName = "ur.toggle.folded",
        ActivateElements = {"stock_pdw_folded"},
        BarrelLengthAdd = -12,
        RecoilMult = 1.15 * 1.75,
        SpeedMultShooting = 1.20,
        SpeedMultSights = 1.20,
        SwayMult = 3,
    }
}

ATT.ActivateElements = {"ur_mp5_stock_pdw"}

ATT.ToggleAttSoundHook = ARC9.UC.ToggleSound
ATT.Hook_Think = ARC9.UC.ToggleSoundThink
