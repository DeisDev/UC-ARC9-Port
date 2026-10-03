ATT.PrintName = ARC9.UC.AttName("uc_fg_civvy")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomCons = {
    ["uc.semionly"] = "",
}

ATT.Icon = Material("entities/att/arccw_uc_fg_civvy.png", "smooth mips")
ATT.Category = "uc_fg"
ATT.UC_Compatible = function(wep)
    if ARC9.UC.IsShotgun(wep) or ARC9.UC.IsManualAction(wep) then
        return false
    end
    for i, v in pairs(wep.Firemodes) do
        if !v then continue end
        if v.Mode and v.ManualAction then
            return false
        end
    end
end
ATT.Firemodes = {
    {
        Mode = 1,
    }
}
ATT.Firemodes_Priority = 10
ATT.RangeMaxMult = 1.25
ATT.RangeMinMult = 1.25
ATT.SpreadMult = 0.75
ATT.RPMMult = 0.75
ATT.MalfunctionMeanShotsToFailMult = 1.5
ATT.InstallSound = "arccw_uc/common/gunsmith/internal_modification.ogg"
