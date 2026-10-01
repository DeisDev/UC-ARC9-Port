ATT.PrintName = ARC9.UC.AttName("uc_fg_underwater")
ATT.MenuCategory = "ARC9 - Urban Coalition"

ATT.Icon = Material("entities/att/acwatt_uc_sealedbolt.png", "smooth mips")
ATT.Category = {"uc_fg", "uc_fg_singleshot"}
ATT.SortOrder = 3
ATT.CanFireUnderwater = true
local function Underwater(wep)
    local owner = wep:GetOwner()
    return IsValid(owner) and owner:WaterLevel() >= 3
end

ATT.Hook_PrimaryAttack = function(wep)
    if !IsFirstTimePredicted() or wep:GetUBGL() or !Underwater(wep) then return end
    wep:EmitSound("weapons/underwater_explode" .. math.random(3, 4) .. ".wav", 70, math.random(60, 80), 0.5, CHAN_AUTO)
end

-- No muzzle effects and a lower report underwater.
ATT.NoMuzzleEffectHook = function(wep, noeffect)
    if Underwater(wep) then return true end
end
ATT.ShootPitchHook = function(wep, pitch)
    if Underwater(wep) then return pitch * 0.6 end
end
-- ARC9 caches these values, so refresh them when going under or surfacing.
ATT.Hook_Think = function(wep)
    local under = Underwater(wep)
    if under != wep.UC_Underwater then
        wep.UC_Underwater = under
        wep:InvalidateCache()
    end
end
ATT.InstallSound = "arccw_uc/common/gunsmith/internal_modification.ogg"
