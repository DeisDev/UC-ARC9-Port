ATT.PrintName = ARC9.UC.AttName("uc_ammo_sg_flech")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.pellet.8"] = "",
    ["uc.penetration.12"] = "",
}

ATT.SortOrder = 3
ATT.Icon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth")
ATT.Category = {"ud_ammo_shotgun","uc_ammo"}
ATT.NumAdd = 8
ATT.SpreadMult = .5
ATT.PenetrationAdd = 12
ATT.RangeMaxMult = .75
ATT.RangeMinMult = .75
ATT.DamageMaxMult = .8
ATT.HullSizeMult = 0.5
ATT.UC_ShellColor = Color(0.2 * 255, 0.2 * 255, 0.5 * 255)
ATT.UC_Compatible = function(wep)
    if !ARC9.UC.IsShotgun(wep) or wep:GetValue("UC_Shotshell") then
        return false
    end
end
