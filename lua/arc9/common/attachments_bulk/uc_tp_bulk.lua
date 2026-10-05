do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_tp_bruiser")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/arccw_uc_tp_bruiser.png", "smooth mips")
    ATT.Category = "uc_tp"
    ATT.SortOrder = 19
    ATT.BashDamageMult = 1.35
    ATT.UC_MeleeTimeMult = .67
    ATT.AttNotForNPCs = true

    ARC9.LoadAttachment(ATT, "uc_tp_bruiser")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_tp_endurance")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/arccw_uc_tp_endurance.png", "smooth mips")
    ATT.Category = "uc_tp"
    ATT.SortOrder = 17
    ATT.SpeedMult = 1.1
    ATT.RecoilMult = 0.9
    ATT.RecoilRandomSideMult = 0.9
    ATT.AttNotForNPCs = true

    ARC9.LoadAttachment(ATT, "uc_tp_endurance")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_tp_fastreload")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/arccw_uc_tp_loading_drills.png", "smooth mips")
    ATT.Category = "uc_tp"
    ATT.SortOrder = 13
    ATT.ReloadTimeMult = 0.9
    ATT.AttNotForNPCs = true

    ARC9.LoadAttachment(ATT, "uc_tp_fastreload")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_tp_fullstroke")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/arccw_uc_tp_full_stroke.png", "smooth mips")
    ATT.Category = "uc_tp"
    ATT.SortOrder = 15
    ATT.CycleTimeMult = .9
    ATT.UC_Compatible = function(wep)
        if ARC9.UC.IsManualAction(wep) then return end
        for i, v in pairs(wep.Firemodes) do
            if !v then continue end
            if v.Mode and v.ManualAction then
                return
            end
        end
        return false
    end
    ATT.AttNotForNPCs = true

    ARC9.LoadAttachment(ATT, "uc_tp_fullstroke")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_tp_gang")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/arccw_uc_tp_homeboy.png", "smooth mips")
    ATT.Category = "uc_tp"
    ATT.SortOrder = 14
    ATT.UC_HipDispersionMult = 0.85
    ATT.UC_MoveDispersionMult = 0.75
    ATT.LHIK = true
    ATT.UC_HideLeftHand = true
    ATT.Hook_ModifyBodygroups = ARC9.UC.HideLeftHand
    ATT.ActivePos = Vector(0.500000, 0.000000, 0.866025)
    ATT.ActiveAng = Angle(0, 0, -60)
    ATT.ActivePos_Priority = 15
    ATT.ActiveAng_Priority = 15
    -- Recoil kicks diagonally up and to the left.
    ATT.UC_RecoilRoll = -45
    -- The gun is held tilted in the iron sights.
    ATT.IronSightsHook = function(wep, sights)
        local tilted = table.Copy(sights)
        tilted.Ang = (tilted.Ang or Angle()) + Angle(0, 0, -45)
        return tilted
    end
    ATT.UC_Compatible = function(wep, data)
        if ARC9.UC.IsManualAction(wep) and wep:GetValue("HoldType") ~= "pistol" and wep:GetValue("HoldType") ~= "revolver" then return false end
    end
    ATT.AttNotForNPCs = true

    ARC9.LoadAttachment(ATT, "uc_tp_gang")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_tp_gong")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/arccw_uc_tp_actionhero.png", "smooth mips")
    ATT.Category = "uc_tp"
    ATT.SortOrder = 20
    ATT.ShootWhileSprint = true
    ATT.UC_HipDispersionMult = 0.75
    ATT.RecoilMult = 1.5
    ATT.RecoilRandomSideMult = 2
    ATT.AimDownSightsTimeMult = 1.5
    ATT.SprintToFireTimeMult = 1.5
    ATT.SwayMult = 2
    ATT.SpeedMult = .95
    ATT.LHIK = true
    ATT.UC_HideLeftHand = true
    ATT.Hook_ModifyBodygroups = ARC9.UC.HideLeftHand
    ATT.HoldType = "pistol"
    ATT.HoldTypeSights = "pistol"
    ATT.HoldTypeHolstered = "normal"
    ATT.UC_Compatible = function(wep, data)
        if ARC9.UC.IsManualAction(wep) and wep:GetValue("HoldType") ~= "pistol" and wep:GetValue("HoldType") ~= "revolver" then return false end
    end
    ATT.AttNotForNPCs = true

    ARC9.LoadAttachment(ATT, "uc_tp_gong")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_tp_overload")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/arccw_uc_tp_overload.png", "smooth mips")
    ATT.Category = "uc_tp"
    ATT.SortOrder = 8
    ATT.ClipSizeAdd = 1
    ATT.UC_Compatible = function(wep)
        if wep.RejectMagSizeChange or wep:GetCapacity() == 1 then return false end
    end
    ATT.AttNotForNPCs = true

    ARC9.LoadAttachment(ATT, "uc_tp_overload")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_tp_pointman")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.pointman"] = "",
    }

    ATT.Icon = Material("entities/att/arccw_uc_tp_pointman.png", "smooth mips")
    ATT.Category = "uc_tp"
    ATT.SortOrder = 7
    ATT.BarrelLengthAdd = -10
    ATT.RPMHook = function(wep, rpm)
        if wep:GetCurrentFiremodeTable().Mode == 1 then
            return rpm * 1.15
        end
    end
    ATT.AttNotForNPCs = true

    ARC9.LoadAttachment(ATT, "uc_tp_pointman")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_tp_pointshoot")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/arccw_uc_tp_pointshooting.png", "smooth mips")
    ATT.Category = "uc_tp"
    ATT.SortOrder = 6
    ATT.UC_HipDispersionMult = 0.75
    ATT.AttNotForNPCs = true

    ARC9.LoadAttachment(ATT, "uc_tp_pointshoot")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_tp_quickdraw")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/arccw_uc_tp_quickdraw.png", "smooth mips")
    ATT.Category = "uc_tp"
    ATT.SortOrder = 5
    ATT.UC_DrawTimeMult = 0.5
    ATT.AimDownSightsTimeMult = 0.85
    ATT.SprintToFireTimeMult = 0.85
    ATT.AttNotForNPCs = true

    ARC9.LoadAttachment(ATT, "uc_tp_quickdraw")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_tp_runandgun")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.runandgun.jump"] = "",
        ["uc.runandgun.move"] = "",
    }

    ATT.Icon = Material("entities/att/arccw_uc_tp_run_and_gun.png", "smooth mips")
    ATT.Category = "uc_tp"
    ATT.SortOrder = 4
    ATT.UC_JumpDispersionMult = 0
    ATT.UC_MoveDispersionMult = 0.5
    ATT.AttNotForNPCs = true

    ARC9.LoadAttachment(ATT, "uc_tp_runandgun")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_tp_strafe")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.neverflinch"] = "",
    }

    ATT.Icon = Material("entities/att/arccw_uc_tp_strafe.png", "smooth mips")
    ATT.Category = "uc_tp"
    ATT.SortOrder = 2
    -- The weapon's own shooting slowdown is removed; other attachments still apply.
    ATT.SpeedHookShooting = function(wep, speed)
        return speed / (wep:GetTable().SpeedMultShooting or 1)
    end
    ATT.SpeedMultSights = 1.2
    ATT.AttNotForNPCs = true

    ARC9.LoadAttachment(ATT, "uc_tp_strafe")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_tp_sway")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/arccw_uc_tp_nerves_of_steel.png", "smooth mips")
    ATT.Category = "uc_tp"
    ATT.SortOrder = 11
    ATT.SwayMult = .5
    ATT.AttNotForNPCs = true

    ARC9.LoadAttachment(ATT, "uc_tp_sway")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_tp_technician")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.technician"] = "",
    }

    ATT.Icon = Material("entities/att/arccw_uc_tp_technician.png", "smooth mips")
    ATT.Category = "uc_tp"
    ATT.SortOrder = 1.5
    ATT.FixTimeMult = .65
    ATT.Ignore = true -- MalfunctionFixTime currently only works visually (8z fix pls)
    ATT.AttNotForNPCs = true

    ARC9.LoadAttachment(ATT, "uc_tp_technician")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_tp_underload")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["uc.underload"] = "",
    }
    ATT.ActivateElements = {"ud_underload"}
    ATT.ExcludeElements = {"ud_loosesprings"}

    ATT.Icon = Material("entities/att/arccw_uc_tp_underload.png", "smooth mips")
    ATT.Category = "uc_tp"
    ATT.SortOrder = 1
    ATT.ClipSizeHook = function(wep, cap)
        return math.max(math.floor(cap * (1 - 0.14)), 1)
    end
    ATT.UC_Compatible = function(wep)
        if wep.RejectMagSizeChange or wep:GetValue("ClipSize") == 1 then return false end
    end
    ATT.MalfunctionMeanShotsToFailMult = 1.25
    ATT.HeatCapacityMult = 1.25
    ATT.RPMMult = 1.05
    ATT.ReloadTimeMult = 0.95
    ATT.AttNotForNPCs = true

    ARC9.LoadAttachment(ATT, "uc_tp_underload")
end
