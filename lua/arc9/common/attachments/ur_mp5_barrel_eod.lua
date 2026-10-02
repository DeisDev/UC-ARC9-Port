ATT.PrintName = ARC9.UC.AttName("ur_mp5_barrel_eod")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/ur_mp5/upper_eod.png", "smooth mips")
ATT.CustomCons = {
    ["uc.nomuzzle"] = "",
    ["uc.nohg"] = "",
}

ATT.Category = "ur_mp5_barrel"

ATT.SortOrder = 11

ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1
ATT.SwayMult = 1.15
ATT.RangeMaxMult = 1.25
ATT.RangeMinMult = 1.25
ATT.RecoilMult = 0.8
ATT.SpreadMult = 0.75
ATT.UC_HipDispersionMult = 1.2
ATT.BarrelLengthAdd = 4

ATT.ActivateElements = {"ur_mp5_barrel_eod", "barrel_eod"}

ATT.Hook_PrimaryAttack = function(wep)
    if wep:GetUBGL() or !IsFirstTimePredicted() then return end
    wep:EmitSound("weapons/arccw_ur/mp5/eod" .. math.random(1, 5) .. ".ogg", 70, math.Rand(98, 102), 1, CHAN_STATIC)
    wep:EmitSound("weapons/arccw_ur/mp5/eo2" .. math.random(1, 6) .. ".ogg", 70, 100, 0.5, CHAN_STATIC)
end
