ATT.PrintName = ARC9.UC.AttName("uc_ammo_sg_bird")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.pellet.2x"] = "",
}
ATT.CustomCons = {
    ["uc.accuracy.20"] = "",
}

ATT.SortOrder = 4
ATT.Icon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth")
ATT.Category = {"ud_ammo_shotgun", "uc_ammo"}
ATT.NumMult = 2
ATT.DamageMaxMult = 0.85
ATT.DamageMinMult = 0.85
ATT.RecoilMult = 0.8
ATT.SpreadAdd = 20 * ARC9.UC.MOA
ATT.HullSizeMult = 0.1
ATT.UC_ShellColor = Color(0.4 * 255, 0.6 * 255, 0.8 * 255)
ATT.UC_Compatible = function(wep)
    if !ARC9.UC.IsShotgun(wep) or wep:GetValue("UC_Shotshell") then
        return false
    end
end
