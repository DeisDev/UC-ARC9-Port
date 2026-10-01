ATT.PrintName = ARC9.UC.AttName("uc_ammo_tmj")
ATT.MenuCategory = "ARC9 - Urban Coalition"

ATT.SortOrder = 2
ATT.Icon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth")
ATT.Category = "uc_ammo"
ATT.DamageMinMult = 1.2
ATT.DamageMaxMult = 0.9
ATT.UC_Compatible = function(wep)
    if ARC9.UC.IsShotgun(wep) then
        return false
    end
end
