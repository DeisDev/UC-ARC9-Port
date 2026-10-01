ATT.PrintName = ARC9.UC.AttName("uc_fg_loosesprings")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.loosesprings"] = "",
}
ATT.ActivateElements = {"ud_loosesprings"}
ATT.ExcludeElements = {"ud_underload"}

ATT.Icon = Material("entities/att/arccw_uc_loosesprings.png", "mpis smooth")
ATT.Category = "uc_fg"
ATT.ClipSizeHook = function(wep, cap)
    return math.max(cap + 1, math.floor(cap * 1.08))
end
ATT.UC_Compatible = function(wep)
    if wep.RejectMagSizeChange or wep:GetValue("ClipSize") == 1 then return false end
end
ATT.RPMMult = .85
ATT.MalfunctionMeanShotsToFailMult = 0.9
ATT.InstallSound = "arccw_uc/common/gunsmith/internal_modification.ogg"
