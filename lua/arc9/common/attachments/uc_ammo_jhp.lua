ATT.PrintName = ARC9.UC.AttName("uc_ammo_jhp")
ATT.MenuCategory = "ARC9 - Urban Coalition"

ATT.SortOrder = 4
ATT.Icon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth")
ATT.Category = "uc_ammo"
ATT.RangeMinMult = 0.5
ATT.PenetrationMult = 0.25
ATT.DamageMaxMult = 1.17
ATT.DamageMinMult = 0.85
ATT.UC_Compatible = function(wep)
    if ARC9.UC.IsShotgun(wep) then
        return false
    end
end
