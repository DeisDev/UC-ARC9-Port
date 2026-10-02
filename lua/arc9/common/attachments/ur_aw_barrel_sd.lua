ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.PrintName = ARC9:GetPhrase("ur_aw_barrel_sd.printname")
ATT.CompactName = ARC9:GetPhrase("ur_aw_barrel_sd.compactname")
ATT.Icon = Material("entities/att/ur_aw/bar_sup.png", "mips smooth")
if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_aw_barrel_sd.printname.variant1") end
ATT.SortOrder = 28
ATT.Description = ARC9:GetPhrase("ur_aw_barrel_sd.description")
ATT.CustomCons = {
    ["uc.nomuzzle"] = "",
}

ATT.Category = "ur_aw_barrel"
ATT.Silencer = true
ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.ShootPitchMult = 1.1
ATT.ShootVolumeMult = 0.6
ATT.RangeMaxMult = .85
ATT.BarrelLengthAdd = 3
ATT.SpeedMultSights = 0.85
ATT.ExcludeElements = {"mag_338", "mag_300"}
ATT.RangeMinMult = .85
ATT.ActivateElements = {"ur_aw_barrel_sd", "barrel_sd"}
