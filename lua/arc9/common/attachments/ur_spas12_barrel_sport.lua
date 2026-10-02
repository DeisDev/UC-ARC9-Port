ATT.PrintName = ARC9.UC.AttName("ur_spas12_barrel_sport")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/ur_spas/barrel_comp.png", "smooth mips")
ATT.Category = "ur_spas12_barrel"
ATT.SortOrder = 22.5
ATT.Ignore = true
ATT.CustomCons = {
    ["uc.nomuzzle"] = "",
    ["ur.spas12.pump"] = "",
}

ATT.Firemodes = {
    {Mode = 1, PrintName = ARC9:GetPhrase("uc.base.fcg.pump"), ManualAction = true},
}
ATT.Firemodes_Priority = 1
ATT.BarrelLengthAdd = 1
ATT.RecoilRandomSideMult = 0.85
ATT.RecoilMult = 0.75
ATT.SwayMult = 1.2
ATT.SpreadMult = 0.85
ATT.RangeMinMult = 1.5
ATT.CycleTimeMult = 0.9
ATT.ActivateElements = {"nomuzzle"}
