ATT.PrintName = ARC9.UC.AttName("uc_tp_fullstroke")
ATT.MenuCategory = "ARC9 - Urban Coalition"

ATT.Icon = Material("entities/att/arccw_uc_tp_full_stroke.png", "smooth mips")
ATT.Category = "uc_tp"
ATT.SortOrder = 15
ATT.CycleTimeMult = .9
ATT.UC_Compatible = function(wep)
    if ARC9.UC.IsManualAction(wep) then return end
    for i, v in pairs(wep.Firemodes) do
        if !v then continue end
        if v.Mode and v.ManualAction then
            return
        end
    end
    return false
end
ATT.AttNotForNPCs = true
