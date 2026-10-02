ATT.PrintName = ARC9.UC.AttName("uc_ammo_sg_frag")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.explode"] = "",
}
ATT.CustomCons = {
    ["uc.alwaysphys"] = "",
}
ATT.ActivateElements = {"uc_manualonly", "uc_slug"}

ATT.Icon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth")
ATT.SortOrder = 2
ATT.Category = {"ud_ammo_shotgun", "uc_ammo"}
ATT.PenetrationMult = 0.1
ATT.DamageMaxMult = 0.75
ATT.DamageMinMult = 0.75
ATT.RangeMaxMult = .5
ATT.UC_HipDispersionMult = 1.5
ATT.Num = 1
ATT.Num_Priority = 99
ATT.HullSize = 0
ATT.AlwaysPhysBullet = true
ATT.PhysBulletGravityMult = 1.5
-- The slug explodes instead of hitting directly.
ATT.Hook_GetDamageAtRange = function(wep, data)
    data.dmg = 0
    return data
end
ATT.Hook_BulletImpact = function(wep, data)
    if SERVER then
        local tr = data.tr
        local delta = math.Clamp(data.range / wep:GetProcessedValue("RangeMax"), 0, 1)
        local dmg = Lerp(delta, wep:GetProcessedValue("DamageMax"), wep:GetProcessedValue("DamageMin"))

        util.BlastDamage(wep, wep:GetOwner(), tr.HitPos, 128, dmg)

        local eff = EffectData()
        eff:SetOrigin(tr.HitPos)
        eff:SetMagnitude(4)
        eff:SetScale(0.5)
        eff:SetRadius(4)
        util.Effect("Sparks", eff)
        util.Effect("Explosion", eff)
        util.Decal("Scorch", tr.HitPos - tr.HitNormal, tr.HitPos + tr.HitNormal, ents.GetAll())
    end
end
ATT.UC_ShellColor = Color(0.9 * 255, 0.7 * 255, 0.3 * 255)
ATT.UC_Compatible = function(wep)
    if (!wep.ManualAction and !wep.UC_CanManualAction) or !ARC9.UC.IsShotgun(wep) or wep:GetValue("UC_Shotshell") then return false end
end
