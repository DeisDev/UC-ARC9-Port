ATT.PrintName = ARC9.UC.AttName("uc_ammo_jsp")
ATT.MenuCategory = "ARC9 - Urban Coalition"

ATT.SortOrder = 3
ATT.Icon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth")
ATT.Category = "uc_ammo"
ATT.PenetrationMult = 0.6
ATT.RangeMaxMult = 0.8
ATT.RangeMinMult = 1.8 * 0.8
ATT.UC_Compatible = function(wep)
    if ARC9.UC.IsShotgun(wep) then
        return false
    end
end
