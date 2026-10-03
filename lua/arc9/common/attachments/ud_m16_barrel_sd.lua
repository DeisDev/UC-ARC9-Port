ATT.PrintName = ARC9.UC.AttName("ud_m16_barrel_sd")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomCons = {
    ["uc.overheat"] = "",
}
ATT.ActivateElements = {"hg_sd", "sd", "ud_m16_rscompatible", "ud_m16_sd"}

ATT.Icon = Material("entities/att/acwatt_ud_m16_barrel_sd.png", "smooth mips")
ATT.Category = "ud_m16_blen"
ATT.AimDownSightsTimeMult = 1.05
ATT.SprintToFireTimeMult = 1.05
ATT.RangeMaxMult = 0.65
ATT.RangeMinMult = 0.65
ATT.RecoilMult = 1.15
ATT.SpreadMult = 1.5
ATT.RPMMult = 1.111
ATT.UC_HipDispersionMult = 0.75
ATT.BarrelLengthAdd = -10
ATT.PhysBulletMuzzleVelocityMult = 0.78
ATT.LHIK = true
ATT.Model = "models/weapons/arccw/atts/m4_lhik.mdl"
ATT.ShootVolumeMult = 0.65
ATT.Silencer = true
ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.Overheat = true
ATT.HeatLockout = false
ATT.HeatFix = false
ATT.HeatCapacity = 90
ATT.HeatDelayTime = 2
ATT.HeatDissipation = 7.5
ATT.RPMHook = function(wep, rpm)
    local heat = math.Clamp(wep:GetHeatAmount() / wep:GetProcessedValue("HeatCapacity"), 0, 1)
    if heat > 0.5 then
        return rpm / (1 + ((heat - 0.5) / 0.5) * 0.5)
    end
end
ATT.SpreadHook = function(wep, spread)
    local heat = math.Clamp(wep:GetHeatAmount() / wep:GetProcessedValue("HeatCapacity"), 0, 1)
    if heat > 0.5 then
        return spread * (1 + ((heat - 0.5) / 0.5))
    end
end
ATT.HookP_TranslateSound = function(wep, data)
    ARC9.UC.SubsonicTail(wep, data)
    if wep:GetUBGL() or !string.StartsWith(data.name, "shoot") then return end

    local heat = math.Clamp(wep:GetHeatAmount() / wep:GetProcessedValue("HeatCapacity"), 0, 1)
    if data.name != "shootdistant" and data.name != "shootdistantindoor" then
        data.level = data.level * (1 + heat * 0.25)
    end
    if heat > 0.5 then
        data.pitch = data.pitch * (1 - (heat - 0.5) / 0.5 * 0.15)
    end
    return data
end
