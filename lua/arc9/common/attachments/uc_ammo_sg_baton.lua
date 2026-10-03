ATT.PrintName = ARC9.UC.AttName("uc_ammo_sg_baton")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.baton"] = "",
}
ATT.CustomCons = {
    ["uc.alwaysphys"] = "",
}
ATT.ActivateElements = {"uc_manualonly", "needsmanual"}

ATT.SortOrder = 0
ATT.Icon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth")
ATT.Category = {"ud_ammo_shotgun","uc_ammo"}
ATT.Num = 1
ATT.Num_Priority = 2
ATT.RecoilMult = .5
local path = ")^arccw_uc/common/"
-- Hit players and NPCs may drop their weapon, more likely up close.
ATT.Hook_BulletImpact = function(wep, data)
    if CLIENT then return end
    local tr = data.tr
    local ent = tr.Entity

    if IsValid(ent) and (ent:IsPlayer() or ent:IsNPC()) and IsValid(ent:GetActiveWeapon()) then
        local delta = math.Clamp(data.range / wep:GetProcessedValue("RangeMax"), 0, 1)
        local dmgmax = wep:GetProcessedValue("DamageMax")
        local dmg = Lerp(delta, dmgmax, wep:GetProcessedValue("DamageMin")) -- one day I will understand this math
        local chance = math.random() * dmgmax

        if chance <= dmg * .5 then -- Chance for a weapon drop increases the closer the shooter is to the target, but is never guaranteed
            ent:DropWeapon()
            if ent:IsPlayer() then
                ent:ScreenFade(1, Color(128, 0, 0, 64), .5, 0)
                ent:ViewPunch(Angle(3, 0, 0))
            end
        end
        if ent:IsNPC() then
            ent:SetSchedule(SCHED_FLINCH_PHYSICS)
        end
    end
end
ATT.ShootSound = {path .. "shotgun-lesslethal-01.ogg", path .. "shotgun-lesslethal-02.ogg"}
ATT.HookP_TranslateSound = ARC9.UC.NoDistantTail
ATT.DamageMaxMult = .2
ATT.DamageMinMult = .2
ATT.PenetrationMult = 0
ATT.RangeMaxMult = .33
ATT.RangeMinMult = .33 * .33
ATT.DamageType = DMG_CLUB
ATT.AlwaysPhysBullet = true
ATT.PhysBulletMuzzleVelocityMult = 0.5
ATT.PhysBulletGravityMult = 2
ATT.UC_ShellColor = Color(0.6 * 255, 0.2 * 255, 0.6 * 255)
ATT.UC_Compatible = function(wep)
    if (!wep.ManualAction and !wep.UC_CanManualAction) or !ARC9.UC.IsShotgun(wep) or wep:GetValue("UC_Shotshell") then return false end
end
