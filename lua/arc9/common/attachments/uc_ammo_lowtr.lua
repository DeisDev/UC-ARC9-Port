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
ATT.UC_HipDispersionMult = 0.9
ATT.TracerFinalMagHook = function(wep, final)
    return math.Clamp(math.ceil(wep:GetValue("ClipSize") * 0.2), 5, 20)
end
ATT.TracerNum = 5
ATT.TracerEffect = "arc9_uc_tracer"
ATT.Hook_PrimaryAttack = function(wep)
    if !IsFirstTimePredicted() or wep:GetUBGL() then return end
    -- This hook runs before ARC9 consumes the round.
    local clip = wep:Clip1() - wep:GetProcessedValue("AmmoPerShot", true)
    if clip <= 5 and clip > 0 then
        wep:EmitSound("physics/metal/metal_computer_impact_bullet3.wav", wep:GetProcessedValue("ShootVolume", true),
            wep:GetProcessedValue("ShootPitch", true) + (5 - clip) * 7, 0.2, CHAN_AUTO)
    end
end
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
ATT.UC_Compatible = function(wep)
    if ARC9.UC.IsShotgun(wep) then
        return false
    end
end
