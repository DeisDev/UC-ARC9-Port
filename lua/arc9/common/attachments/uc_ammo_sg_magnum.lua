ATT.PrintName = ARC9.UC.AttName("uc_ammo_sg_magnum")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomCons = {
    ["uc.pellet.0.75"] = "",
    ["uc.accuracy.10"] = "",
}

ATT.SortOrder = 5
ATT.Icon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth")
ATT.Category = {"ud_ammo_shotgun","uc_ammo"}
ATT.NumMult = 0.75
ATT.DamageMaxMult = 1.25
ATT.RangeMaxMult = 0.5
ATT.RangeMinMult = 2
ATT.RecoilMult = 1.3
ATT.SpreadAdd = 10 * ARC9.UC.MOA
ATT.HullSizeMult = 1.5
ATT.UC_ShellColor = Color(0.8 * 255, 0.8 * 255, 0.8 * 255)
ATT.UC_Compatible = function(wep)
    if !ARC9.UC.IsShotgun(wep) or wep:GetValue("UC_Shotshell") then
        return false
    end
end
