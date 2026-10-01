ATT.PrintName = ARC9.UC.AttName("uc_tp_underload")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomCons = {
    ["uc.underload"] = "",
}
ATT.ActivateElements = {"ud_underload"}
ATT.ExcludeElements = {"ud_loosesprings"}

ATT.Icon = Material("entities/att/arccw_uc_tp_underload.png", "smooth mips")
ATT.Category = "uc_tp"
ATT.SortOrder = 1
ATT.ClipSizeHook = function(wep, cap)
    return math.max(math.floor(cap * (1 - 0.14)), 1)
end
ATT.UC_Compatible = function(wep)
    if wep.RejectMagSizeChange or wep:GetValue("ClipSize") == 1 then return false end
end
ATT.MalfunctionMeanShotsToFailMult = 1.25
ATT.HeatCapacityMult = 1.25
ATT.RPMMult = 1.05
ATT.ReloadTimeMult = 0.95
ATT.AttNotForNPCs = true
