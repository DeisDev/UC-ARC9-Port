ATT.PrintName = ARC9.UC.AttName("uc_ammo_lowtr")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.lowind"] = "",
}
ATT.CustomCons = {
    ["uc.tracer"] = "",
}

ATT.SortOrder = 1
ATT.Icon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth")
ATT.Category = "uc_ammo"
ATT.InvAtt = "uc_ammo_tr"
ATT.SpreadMultHipFire = 0.9
ATT.TracerFinalMagHook = function(wep, final)
    return math.Clamp(math.ceil(wep:GetValue("ClipSize") * 0.2), 5, 20)
end
ATT.TracerNum = 5
ATT.TracerEffect = "arc9_uc_tracer"
ATT.ToggleStats = {
    {
        PrintName = "uc.toggle.green",
        TracerColor = Color(100, 255, 100),
        TracerSize = 1.5,
    },
    {
        PrintName = "uc.toggle.red",
        TracerColor = Color(255, 100, 100),
        TracerSize = 1.5,
    },
    {
        PrintName = "uc.toggle.white",
        TracerColor = Color(255, 255, 255),
        TracerSize = 1.5,
    }
}
ATT.ToggleOnF = true
ATT.UC_Compatible = function(wep)
    if ARC9.UC.IsShotgun(wep) then
        return false
    end
end
