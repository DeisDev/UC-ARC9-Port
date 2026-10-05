do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_fg_autotrigger")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.auto"] = "",
    }
    ATT.CustomCons = {
        ["uc.frcd_visrec"] = "",
    }
    ATT.ExcludeElements = {"needsmanual"}

    ATT.Icon = Material("entities/att/arccw_uc_forcedresettrigger.png", "mips smooth")
    ATT.Category = "uc_fg"
    ATT.SortOrder = 2
    ATT.UC_Compatible = function(wep)
        if ARC9.UC.IsManualAction(wep) or wep.TriggerDelay then return false end

        -- for i, v in pairs(wep.Firemodes) do
        --     if !v then continue end
        --     if !v.Mode then continue end
        --     if v.Mode == 2 then
        --         -- Not available if gun has automatic firemode
        --         return false
        --     -- elseif v.Mode < 0 then
        --     --     -- Use burst variant
        --     --     return false
        --     end
        -- end
    end
    ATT.Firemodes_Priority = 100
    ATT.Firemodes = {
        {
            Mode = -1,
            PrintName = ARC9:GetPhrase("fcg.frcd.abbrev"),
        }
    }
    ATT.RecoilRandomSideMult = 1.25
    ATT.VisualRecoilMult = 2
    ATT.MalfunctionMeanShotsToFailMult = .85
    ATT.InstallSound = "arccw_uc/common/gunsmith/internal_modification.ogg"

    ARC9.LoadAttachment(ATT, "uc_fg_autotrigger")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_fg_civvy")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["uc.semionly"] = "",
    }

    ATT.Icon = Material("entities/att/arccw_uc_fg_civvy.png", "smooth mips")
    ATT.Category = "uc_fg"
    ATT.UC_Compatible = function(wep)
        if ARC9.UC.IsShotgun(wep) or ARC9.UC.IsManualAction(wep) then
            return false
        end
        for i, v in pairs(wep.Firemodes) do
            if !v then continue end
            if v.Mode and v.ManualAction then
                return false
            end
        end
    end
    ATT.Firemodes = {
        {
            Mode = 1,
        }
    }
    ATT.Firemodes_Priority = 10
    ATT.RangeMaxMult = 1.25
    ATT.RangeMinMult = 1.25
    ATT.SpreadMult = 0.75
    ATT.RPMMult = 0.75
    ATT.MalfunctionMeanShotsToFailMult = 1.5
    ATT.InstallSound = "arccw_uc/common/gunsmith/internal_modification.ogg"

    ARC9.LoadAttachment(ATT, "uc_fg_civvy")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_fg_deeprifling")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/arccw_uc_deeprifling.png", "mips smooth")
    ATT.Category = "uc_fg"
    ATT.SortOrder = 1
    ATT.UC_Compatible = function(wep)
        if ARC9.UC.IsShotgun(wep) then
            return false
        end
    end
    ATT.PenetrationMult = 1.25
    ATT.InstallSound = "arccw_uc/common/gunsmith/internal_modification.ogg"

    ARC9.LoadAttachment(ATT, "uc_fg_deeprifling")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_fg_dualstage")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.dualstage.pro"] = "",
    }
    ATT.CustomCons = {
        ["uc.dualstage.con"] = "",
    }

    ATT.Icon = Material("entities/att/arccw_uc_dualstagetrigger.png", "mips smooth")
    ATT.Category = "uc_fg"
    ATT.SortOrder = 2
    ATT.UC_Compatible = function(wep)
        if ARC9.UC.IsManualAction(wep) then
            return false
        end
        for i, v in pairs(wep.Firemodes) do
            if !v then continue end
            if v.Mode and v.Mode != 1 and v.Mode != 0 then
                return
            end
        end
        return false
    end
    ATT.RPMMult = 1.1
    ATT.TriggerDelayTimeMult = 0
    -- +0.1s before the second shot outside semi-automatic
    ATT.RPMHookFirstShot = function(wep, rpm)
        if wep:GetCurrentFiremodeTable().Mode != 1 and (!wep:GetOwner():IsPlayer() or wep:GetOwner():KeyDown(IN_ATTACK)) then
            return 60 / (60 / rpm + 0.1)
        end
    end
    ATT.Hook_Think = function(wep)
        if wep:GetOwner():IsPlayer() and wep:GetOwner():KeyReleased(IN_ATTACK) and wep:GetBurstCount() == 0 and IsFirstTimePredicted() then
            wep:SetNextPrimaryFire((wep.TriggerDownTime or CurTime()) + 60 / wep:GetProcessedValue("RPM"))
        elseif wep:GetOwner():IsPlayer() and wep:GetOwner():KeyPressed(IN_ATTACK) and wep:GetBurstCount() == 0 and IsFirstTimePredicted() then
            wep.TriggerDownTime = CurTime()
        end
    end
    ATT.InstallSound = "arccw_uc/common/gunsmith/internal_modification.ogg"

    ARC9.LoadAttachment(ATT, "uc_fg_dualstage")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_fg_heavy")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/arccw_uc_heavybolt.png", "mips smooth")
    ATT.Category = "uc_fg"
    ATT.SortOrder = 3
    ATT.RecoilMult = 0.9
    ATT.RPMMult = 0.8
    ATT.CycleTimeMult = 1.1
    ATT.InstallSound = "arccw_uc/common/gunsmith/internal_modification.ogg"

    ARC9.LoadAttachment(ATT, "uc_fg_heavy")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_fg_light")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/arccw_uc_lightbolt.png", "mips smooth")
    ATT.Category = "uc_fg"
    ATT.SortOrder = 3
    ATT.RecoilMult = 1.25
    ATT.RPMMult = 1.1
    ATT.CycleTimeMult = 0.9
    ATT.InstallSound = "arccw_uc/common/gunsmith/internal_modification.ogg"

    ARC9.LoadAttachment(ATT, "uc_fg_light")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_fg_longrifling")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/arccw_uc_longrifling.png", "mips smooth")
    ATT.Category = {"uc_fg","uc_fg_singleshot"}
    ATT.SortOrder = 1
    ATT.UC_Compatible = function(wep)
        if ARC9.UC.IsShotgun(wep) then
            return false
        end
    end
    ATT.RangeMaxMult = 1.1
    ATT.RangeMinMult = 1.1
    ATT.InstallSound = "arccw_uc/common/gunsmith/internal_modification.ogg"

    ARC9.LoadAttachment(ATT, "uc_fg_longrifling")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_fg_loosesprings")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.loosesprings"] = "",
    }
    ATT.ActivateElements = {"ud_loosesprings"}
    ATT.ExcludeElements = {"ud_underload"}

    ATT.Icon = Material("entities/att/arccw_uc_loosesprings.png", "mpis smooth")
    ATT.Category = "uc_fg"
    ATT.ClipSizeHook = function(wep, cap)
        return math.max(cap + 1, math.floor(cap * 1.08))
    end
    ATT.UC_Compatible = function(wep)
        if wep.RejectMagSizeChange or wep:GetValue("ClipSize") == 1 then return false end
    end
    ATT.RPMMult = .85
    ATT.MalfunctionMeanShotsToFailMult = 0.9
    ATT.InstallSound = "arccw_uc/common/gunsmith/internal_modification.ogg"

    ARC9.LoadAttachment(ATT, "uc_fg_loosesprings")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_fg_lubedparts")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"technician"}
    ATT.ExcludeElements = {"lubedparts"}

    ATT.Icon = Material("entities/att/arccw_uc_lubedparts.png", "mips smooth")
    ATT.Category = "uc_fg"
    ATT.SortOrder = 3
    ATT.MalfunctionMeanShotsToFailMult = 2
    ATT.InstallSound = "arccw_uc/common/gunsmith/internal_modification.ogg"

    ARC9.LoadAttachment(ATT, "uc_fg_lubedparts")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_fg_match")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.match.1"] = "",
        ["uc.match.2"] = "",
    }

    ATT.Icon = Material("entities/att/arccw_uc_matchgradetrigger.png", "mips smooth")
    ATT.Category = {"uc_fg","uc_fg_singleshot"}
    ATT.SortOrder = 2
    ATT.UC_Compatible = function(wep)
        if ARC9.UC.IsManualAction(wep) then
            return false
        end
    end
    ATT.RecoilHook = ARC9.UC.ShotRecoil({[1] = 0.75})
    ATT.TriggerDelayTimeMult = 0.5
    ATT.InstallSound = "arccw_uc/common/gunsmith/internal_modification.ogg"

    ARC9.LoadAttachment(ATT, "uc_fg_match")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_fg_match_single")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/arccw_uc_matchgradetrigger.png", "mips smooth")
    ATT.Category = {"uc_fg_singleshot"}
    ATT.SortOrder = 2
    ATT.UC_Compatible = function(wep)
        if ARC9.UC.IsManualAction(wep) or ARC9.UC.IsShotgun(wep) then
            return false
        end
    end
    ATT.RecoilMult = .75
    ATT.InstallSound = "arccw_uc/common/gunsmith/internal_modification.ogg"
    ATT.Ignore = true

    ARC9.LoadAttachment(ATT, "uc_fg_match_single")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_fg_preciserifling")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/arccw_uc_precisionrifling.png", "mips smooth")
    ATT.Category = {"uc_fg","uc_fg_singleshot"}
    ATT.SortOrder = 1
    ATT.UC_Compatible = function(wep)
        if ARC9.UC.IsShotgun(wep) then
            return false
        end
    end
    ATT.SpreadMult = 0.75
    ATT.InstallSound = "arccw_uc/common/gunsmith/internal_modification.ogg"

    ARC9.LoadAttachment(ATT, "uc_fg_preciserifling")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_fg_sg_rifled")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"uc_fg_sg_rifled"}
    ATT.ExcludeElements = {"uc_choke_rifled"}
    ATT.RequireElements = {{"uc_slug"}}

    ATT.Icon = Material("entities/att/arccw_uc_precisionrifling.png", "mips smooth")
    ATT.Category = {"uc_fg","uc_fg_singleshot"}
    ATT.UC_Compatible = function(wep)
        if !ARC9.UC.IsShotgun(wep) then -- or wep:GetValue("Num") > 1
            return false
        end
    end
    ATT.SpreadMult = 0.5
    ATT.AimDownSightsTimeMult = 0.75
    ATT.SprintToFireTimeMult = 0.75
    ATT.UC_HipDispersionMult = 1.25
    ATT.InstallSound = "arccw_uc/common/gunsmith/internal_modification.ogg"

    ARC9.LoadAttachment(ATT, "uc_fg_sg_rifled")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_fg_slamfire")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.slam"] = "",
    }

    ATT.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
    ATT.Category = "uc_fg"
    ATT.UC_Compatible = function(wep)
        if !ARC9.UC.IsShotgun(wep) then
            return false
        end
        if ARC9.UC.IsManualAction(wep) then return end
        for i, v in pairs(wep.Firemodes) do
            if !v then continue end
            if v.Mode and v.ManualAction then
                return
            end
        end
        return false
    end
    ATT.RecoilMult = 1.2
    ATT.RecoilRandomSideMult = 1.5
    ATT.Firemodes = {
        {
            Mode = -1,
            PrintName = ARC9:GetPhrase("fcg.slam"),
            ManualAction = true,
        }
    }
    ATT.Firemodes_Priority = 11 -- higher than spas-12 manual
    ATT.InstallSound = "arccw_uc/common/gunsmith/internal_modification.ogg"

    ARC9.LoadAttachment(ATT, "uc_fg_slamfire")
end

do
    local ATT = {}

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

    ARC9.LoadAttachment(ATT, "uc_fg_underwater")
end
