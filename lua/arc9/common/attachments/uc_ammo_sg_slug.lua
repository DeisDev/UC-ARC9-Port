ATT.PrintName = ARC9.UC.AttName("uc_ammo_sg_slug")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.penetration.8"] = "",
}
ATT.ActivateElements = {"uc_slug"}

ATT.SortOrder = 1
ATT.Icon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth")
ATT.Category = {"ud_ammo_shotgun","uc_ammo"}
ATT.Num = 1
ATT.Num_Priority = 2
ATT.DamageMaxMult = .75
ATT.DamageMinMult = .5
ATT.SpreadMult = .3
ATT.PenetrationAdd = 8
ATT.RangeMinMult = 2 * 2.5
ATT.RangeMaxMult = 2.5
ATT.UC_HipDispersionMult = 2
ATT.HullSize = 0
ATT.DamageType = DMG_BULLET
ATT.UC_ShellColor = Color(0.2 * 255, 0.45 * 255, 0.2 * 255)
ATT.UC_Compatible = function(wep)
    if !ARC9.UC.IsShotgun(wep) or wep:GetValue("UC_Shotshell")  then
        return false
    end
end
