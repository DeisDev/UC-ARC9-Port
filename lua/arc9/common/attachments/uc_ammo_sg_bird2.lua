ATT.PrintName = ARC9.UC.AttName("uc_ammo_sg_bird2")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.pellet.8"] = "",
}
ATT.CustomCons = {
    ["uc.accuracy.10"] = "",
}

ATT.SortOrder = 4
ATT.Icon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth")
ATT.Category = {"ud_ammo_shotgun", "uc_ammo"}
ATT.InvAtt = "uc_ammo_sg_bird"
ATT.NumAdd = 8
ATT.DamageMaxMult = 0.9
ATT.DamageMinMult = 0.9
ATT.RecoilMult = 0.8
ATT.SpreadAdd = 10 * ARC9.UC.MOA
ATT.UC_ShellColor = Color(0.4 * 255, 0.6 * 255, 0.8 * 255)
ATT.UC_Compatible = function(wep)
    if !wep:GetValue("UC_Shotshell") then
        return false
    end
end
