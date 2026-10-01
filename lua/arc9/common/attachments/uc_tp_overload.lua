ATT.PrintName = ARC9.UC.AttName("uc_tp_overload")
ATT.MenuCategory = "ARC9 - Urban Coalition"

ATT.Icon = Material("entities/att/arccw_uc_tp_overload.png", "smooth mips")
ATT.Category = "uc_tp"
ATT.SortOrder = 8
ATT.ClipSizeAdd = 1
ATT.UC_Compatible = function(wep)
    if wep.RejectMagSizeChange or wep:GetCapacity() == 1 then return false end
end
ATT.AttNotForNPCs = true
