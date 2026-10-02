ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.PrintName = ARC9:GetPhrase("ur_g3_stock_collapsible.printname")
ATT.CompactName = ARC9:GetPhrase("ur_g3_stock_collapsible.compactname")
if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_g3_stock_collapsible.printname.variant1") end
ATT.Icon = Material("entities/att/ur_g3/stock_colap.png", "smooth mips")
ATT.Description = ARC9:GetPhrase("ur_g3_stock_collapsible.description")
ATT.Category = {"ur_g3_stock"}
ATT.SortOrder = 10
ATT.AimDownSightsTimeMult = 0.75
ATT.SprintToFireTimeMult = 0.75
ATT.UC_ToggleSound = "arccw_uc/common/stockslide.ogg"
ATT.ToggleStats = {
    {
        PrintName = "uc.toggle.extended",
        ActivateElements = {"stock_g3_collapsible"},
        RecoilMult = 1.2,
    },
    {
        PrintName = "uc.toggle.collapsed",
        ActivateElements = {"stock_g3_collapsed"},
        UC_HipDispersionMult = .8,
        DeployTimeMult = 0.85,
        SpeedMultShooting = 1.15,
        BarrelLengthAdd = -5,
        RecoilMult = 1.5,
        RecoilRandomSideMult = 1.25,
        SwayMult = 3,
    }
}

ATT.ActivateElements = {"ur_g3_stock_collapsible"}
ATT.ToggleAttSoundHook = ARC9.UC.ToggleSound
ATT.Hook_Think = ARC9.UC.ToggleSoundThink
