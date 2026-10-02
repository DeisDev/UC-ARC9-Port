ATT.PrintName = ARC9.UC.AttName("uc_ammo_tr")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomCons = {
    ["uc.tracer"] = "",
}

ATT.SortOrder = 1
ATT.Icon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth")
ATT.Category = "uc_ammo"
ATT.UC_HipDispersionMult = 0.85
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
ATT.TracerEffect = "arc9_uc_tracer"
ATT.UC_Compatible = function(wep)
    if ARC9.UC.IsShotgun(wep) then
        return false
    end
end
