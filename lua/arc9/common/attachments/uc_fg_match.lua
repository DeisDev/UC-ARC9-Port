ATT.PrintName = ARC9.UC.AttName("uc_fg_match")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.match.1"] = "",
    ["uc.match.2"] = "",
}

ATT.Icon = Material("entities/att/arccw_uc_matchgradetrigger.png", "mips smooth")
ATT.Category = {"uc_fg","uc_fg_singleshot"}
ATT.SortOrder = 2
ATT.UC_Compatible = function(wep)
    if ARC9.UC.IsManualAction(wep) then
        return false
    end
end
ATT.RecoilHook = ARC9.UC.ShotRecoil({[1] = 0.75})
ATT.TriggerDelayTimeMult = 0.5
ATT.InstallSound = "arccw_uc/common/gunsmith/internal_modification.ogg"
