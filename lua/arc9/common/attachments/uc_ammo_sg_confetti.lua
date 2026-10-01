ATT.PrintName = ARC9.UC.AttName("uc_ammo_sg_confetti")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.confetti"] = "",
    ["uc.infiniteammo"] = "",
}
ATT.CustomCons = {
    ["uc.noprojectile"] = "",
}
ATT.ActivateElements = {"uc_manualonly"}

ATT.Icon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth")
ATT.Category = {"ud_ammo_shotgun","uc_ammo"}
ATT.SortOrder = -9001
ATT.AttNotForNPCs = true
ATT.RecoilMult = .2
ATT.Num = 0
ATT.Num_Priority = 9001
ATT.InfiniteAmmo = true
local path = ")^arccw_uc/common/"
ATT.ShootSound = {path .. "confetti-01.ogg", path .. "confetti-02.ogg", path .. "confetti-03.ogg", path .. "confetti-04.ogg", path .. "confetti-05.ogg", path .. "confetti-06.ogg"}
ATT.HookP_TranslateSound = ARC9.UC.NoDistantTail
ATT.UC_ShellColor = Color(255, 127, 182)
ATT.UC_Compatible = function(wep)
    if (!wep.ManualAction and !wep.UC_CanManualAction) or !ARC9.UC.IsShotgun(wep) or wep:GetValue("UC_Shotshell") then return false end
end
