ATT.PrintName = ARC9.UC.AttName("uc_fg_match_single")
ATT.MenuCategory = "ARC9 - Urban Coalition"

ATT.Icon = Material("entities/att/arccw_uc_matchgradetrigger.png", "mips smooth")
ATT.Category = {"uc_fg_singleshot"}
ATT.SortOrder = 2
ATT.UC_Compatible = function(wep)
    if ARC9.UC.IsManualAction(wep) or ARC9.UC.IsShotgun(wep) then
        return false
    end
end
ATT.RecoilMult = .75
ATT.InstallSound = "arccw_uc/common/gunsmith/internal_modification.ogg"
ATT.Ignore = true
