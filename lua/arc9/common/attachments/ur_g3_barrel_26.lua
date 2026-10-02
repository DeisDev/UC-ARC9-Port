ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.PrintName = ARC9:GetPhrase("ur_g3_barrel_26.printname")
ATT.CompactName = ARC9:GetPhrase("ur_g3_barrel_26.compactname")
if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_g3_barrel_26.printname.variant1") end
ATT.Icon = Material("entities/att/ur_g3/barrel_psg.png", "smooth mips")
ATT.Description = ARC9:GetPhrase("ur_g3_barrel_26.description")
ATT.Category = "ur_g3_barrel"
ATT.CustomCons = {
    ["uc.nofs"] = "",
}

ATT.SortOrder = 26
ATT.AimDownSightsTimeMult = 1.2
ATT.SprintToFireTimeMult = 1.2
ATT.BarrelLengthAdd = 6
ATT.SpeedMultSights = 0.85
ATT.RecoilMult = 0.75
ATT.SpreadMult = 0.5
ATT.RangeMaxMult = 1.25
ATT.RPMMult = 360 / 400
ATT.RangeMinMult = 2 * 1.25
ATT.ActivateElements = {"ur_g3_barrel_26", "g3_nohg", "g3_not8"}
ATT.UC_SightsDispersionHook = function(wep, dispersion) if not wep.Attachments[1].Installed then return dispersion + 250 * ARC9.UC.Dispersion end end
