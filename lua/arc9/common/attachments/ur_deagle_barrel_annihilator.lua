ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.PrintName = ARC9:GetPhrase("ur_deagle_barrel_annihilator.printname")
ATT.CompactName = ARC9:GetPhrase("ur_deagle_barrel_annihilator.compactname")
if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_deagle_barrel_annihilator.printname.variant1") end
ATT.Icon = Material("entities/att/acwatt_ur_deagle_barrel_annihilator.png", "smooth mips")
ATT.Description = ARC9:GetPhrase("ur_deagle_barrel_annihilator.description")
ATT.Category = "ur_deagle_barrel"
ATT.CustomCons = {
    ["ur_deagle_barrel_annihilator.cons0"] = "",
}

ATT.SortOrder = 6
ATT.RecoilMult = 0.8
ATT.RecoilRandomSideMult = 0.6
ATT.VisualRecoilMult = 2.5
ATT.ShootVolumeMult = 1.2
ATT.RangeMaxMult = 0.8
ATT.ShootPitchMult = 0.95
ATT.SpeedMultSights = 1.05
ATT.SpreadMult = 1.15
ATT.RPMMult = .8
ATT.RangeMinMult = 0.8
ATT.ActivateElements = {"ur_deagle_barrel_annihilator", "barrel_annihilator"}
