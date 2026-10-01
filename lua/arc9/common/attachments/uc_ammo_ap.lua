ATT.PrintName = ARC9.UC.AttName("uc_ammo_ap")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.api.1"] = "",
}

ATT.SortOrder = 5
ATT.Icon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth")
ATT.Category = "uc_ammo"
ATT.RangeMaxMult = 2
ATT.PenetrationMult = 2
ATT.DamageMaxMult = 0.9
ATT.DamageMinMult = 0.9
ATT.UC_Compatible = function(wep)
    if ARC9.UC.IsShotgun(wep) then
        return false
    end
end
ATT.Hook_BulletImpact = ARC9.UC.APBulletImpact
