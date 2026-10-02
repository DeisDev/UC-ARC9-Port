ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.PrintName = ARC9:GetPhrase("ur_g3_barrel_8.printname")
ATT.CompactName = ARC9:GetPhrase("ur_g3_barrel_8.compactname")
if not ARC9:UseTrueNames() then
    ATT.PrintName = ARC9:GetPhrase("ur_g3_barrel_8.printname.variant1")
    ATT.CompactName = ARC9:GetPhrase("ur_g3_barrel_8.compactname.variant1")
end

ATT.Icon = Material("entities/att/ur_g3/barrel_51.png", "smooth mips")
ATT.Description = ARC9:GetPhrase("ur_g3_barrel_8.description")
ATT.Category = "ur_g3_barrel"
ATT.CustomPros = {
    ["ur.g3.8"] = "",
}

ATT.SortOrder = 8
ATT.AimDownSightsTimeMult = 0.85
ATT.SprintToFireTimeMult = 0.85
ATT.BarrelLengthAdd = -6
ATT.SpeedMultSights = 1.2
ATT.UC_HipDispersionMult = 0.75
ATT.SwayMult = 0.5
ATT.RecoilMult = 1.3
ATT.SpreadMult = 2
ATT.RangeMaxMult = 0.35
ATT.RPMMult = 1.2
ATT.RangeMinMult = 0.35
ATT.ActivateElements = {"ur_g3_barrel_8", "g3_hk51hg"}
