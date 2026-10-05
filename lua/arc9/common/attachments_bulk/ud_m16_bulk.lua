do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_barrel_10in")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"barrel_11", "mount_11", "blen_11", "barrel_short", "patr1"}
    ATT.ExcludeElements = {"hg_no11"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_barrel_10_5.png", "smooth mips")
    ATT.Category = "ud_m16_blen"
    ATT.AimDownSightsTimeMult = 0.85
    ATT.SprintToFireTimeMult = 0.85
    ATT.SpeedMult = 1.025
    ATT.SpeedMultSights = 1.1
    ATT.UC_HipDispersionMult = 0.7
    ATT.RPMMult = 1.15
    ATT.RecoilMult = 1.5
    ATT.SpreadMult = 2
    ATT.RangeMaxMult = 0.5
    ATT.RangeMinMult = 0.5
    ATT.SwayMult = 0.75
    ATT.BarrelLengthAdd = -10
    ATT.PhysBulletMuzzleVelocityMult = 0.729167
    ATT.BoxModel = "models/items/boxsrounds.mdl"

    ARC9.LoadAttachment(ATT, "ud_m16_barrel_10in")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_barrel_14in")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"barrel_14", "mount_14", "blen_14", "barrel_short"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_barrel_14_5.png", "smooth mips")
    ATT.Category = "ud_m16_blen"
    ATT.AimDownSightsTimeMult = 0.85
    ATT.SprintToFireTimeMult = 0.85
    ATT.SpeedMultSights = 1.1
    ATT.UC_HipDispersionMult = 0.85
    ATT.RecoilMult = 1.25
    ATT.SpreadMult = 1.5
    ATT.RangeMaxMult = 0.75
    ATT.RangeMinMult = 0.75
    ATT.RPMMult = 1.111 --0.945
    ATT.SwayMult = 0.85
    ATT.BarrelLengthAdd = -6
    ATT.PhysBulletMuzzleVelocityMult = 0.833333
    ATT.BoxModel = "models/items/boxsrounds.mdl"

    ARC9.LoadAttachment(ATT, "ud_m16_barrel_14in")
end

do
    local ATT = {}

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
    ATT.MuzzleParticle = "uc_muzzleflash_suppressed"
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

    ARC9.LoadAttachment(ATT, "ud_m16_barrel_sd")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_charm_ch")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_m16_upper_charm", "ud_m16_retro"}
    ATT.ExcludeElements = {"ud_m16_not_retro", "ud_m16_a1"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_charm_ch.png", "smooth mips")
    ATT.Category = "ud_m16_charm"
    ATT.Free = true
    ATT.UC_TopMount = 1
    ATT.SortOrder = 1001

    ARC9.LoadAttachment(ATT, "ud_m16_charm_ch")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_charm_ch2")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_m16_upper_charm2", "ud_m16_retro"}
    ATT.ExcludeElements = {"ud_m16_not_retro", "ud_m16_a1"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_charm_ch2.png", "smooth mips")
    ATT.Category = "ud_m16_charm"
    ATT.Free = true
    ATT.UC_TopMount = 3
    ATT.SortOrder = 1000

    ARC9.LoadAttachment(ATT, "ud_m16_charm_ch2")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_charm_fs")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ExcludeElements = {"ud_m16_a1", "sight_magpul", "ud_m16_sd"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_charm_fs.png", "smooth mips")
    ATT.Category = "ud_m16_charm"
    ATT.Free = true
    ATT.SortOrder = 999

    ARC9.LoadAttachment(ATT, "ud_m16_charm_fs")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_charm_tl")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"bravo_dicks_going_fart"}
    ATT.RequireElements = {{"tac"}}

    ATT.Icon = Material("entities/att/arccw_ud_pointshoot.png", "smooth mips")
    ATT.Category = "ud_m16_charm"
    ATT.Free = true
    ATT.Sights = {
        {
            Pos = Vector(0, 20, -3),
            Ang = Angle(0, 0, -25),
            UC_GlobalAng = true,
            Magnification = 1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
        }
    }
    ATT.SortOrder = 998
    ATT.UC_FrontSight = 1

    ARC9.LoadAttachment(ATT, "ud_m16_charm_tl")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_fs_3d")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_m16_rs"}
    ATT.RequireElements = {{"ud_m16_rscompatible"}}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_fs_3d.png", "mips smooth")
    ATT.SortOrder = 1
    ATT.Model = "models/weapons/arccw/atts/3d_fs.mdl"
    ATT.Scale = 0.7
    ATT.Category = {"ud_m16_fs"}
    ATT.Free = true
    ATT.Ignore = false
    ATT.UC_FrontSight = 1

    ARC9.LoadAttachment(ATT, "ud_m16_fs_3d")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_fs_kac")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_m16_rs"}
    ATT.RequireElements = {{"ud_m16_rscompatible"}}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_fs_kac.png", "mips smooth")
    ATT.SortOrder = 1
    ATT.Model = "models/weapons/arccw/atts/kac_fs.mdl"
    ATT.Scale = 0.7
    ATT.Category = {"ud_m16_fs"}
    ATT.Free = true
    ATT.UC_FrontSight = 1

    ARC9.LoadAttachment(ATT, "ud_m16_fs_kac")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_fs_magpul")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_m16_rs"}
    ATT.RequireElements = {{"ud_m16_rscompatible"}}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_fs_magpul.png", "mips smooth")
    ATT.SortOrder = 1
    ATT.Model = "models/weapons/arccw/atts/magpul_fs.mdl"
    ATT.Scale = 0.73
    ATT.Category = {"ud_m16_fs"}
    ATT.Free = true
    ATT.UC_FrontSight = 1

    ARC9.LoadAttachment(ATT, "ud_m16_fs_magpul")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_fs_sclr")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_m16_rs"}
    ATT.RequireElements = {{"ud_m16_rscompatible"}}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_fs_sclr.png", "mips smooth")
    ATT.SortOrder = 1
    ATT.Model = "models/weapons/arccw/atts/scalerworks_fs.mdl"
    ATT.ModelOffset = Vector(0, 0.01, -0.1)
    ATT.Scale = 0.95
    ATT.Category = {"ud_m16_fs"}
    ATT.Free = true
    ATT.UC_FrontSight = 1

    ARC9.LoadAttachment(ATT, "ud_m16_fs_sclr")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_fs_sig")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_m16_rs"}
    ATT.RequireElements = {{"ud_m16_rscompatible"}}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_fs_sig.png", "mips smooth")
    ATT.SortOrder = 1
    ATT.Model = "models/weapons/arccw/atts/sig_fs.mdl"
    ATT.Scale = 0.7
    ATT.Category = {"ud_m16_fs"}
    ATT.Free = true
    ATT.UC_FrontSight = 1

    ARC9.LoadAttachment(ATT, "ud_m16_fs_sig")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_fs_utg")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_m16_rs"}
    ATT.RequireElements = {{"ud_m16_rscompatible"}}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_fs_colt.png", "mips smooth")
    ATT.SortOrder = 1
    ATT.Model = "models/weapons/arccw/atts/colt_fs.mdl"
    ATT.Scale = 0.7
    ATT.Category = {"ud_m16_fs"}
    ATT.Free = true
    ATT.Ignore = false
    ATT.UC_FrontSight = 1

    ARC9.LoadAttachment(ATT, "ud_m16_fs_utg")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_grip_ergo")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"grip_ergo"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_grip_ergo.png", "smooth mips")
    ATT.Category = "ud_m16_grip"
    ATT.AimDownSightsTimeMult = 0.9
    ATT.SprintToFireTimeMult = 0.9
    ATT.SpeedMultSights = 0.95

    ARC9.LoadAttachment(ATT, "ud_m16_grip_ergo")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_grip_skel")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"grip_skel"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_grip_skel.png", "smooth mips")
    ATT.Category = "ud_m16_grip"
    ATT.RecoilRandomSideMult = 1.15
    ATT.SpeedMultSights = 1.05

    ARC9.LoadAttachment(ATT, "ud_m16_grip_skel")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_grip_wood")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"grip_wood"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_grip_default.png", "smooth mips")
    ATT.Category = "ud_m16_grip"
    ATT.RecoilRandomSideMult = 0.85
    ATT.SpeedMultSights = 0.95

    ARC9.LoadAttachment(ATT, "ud_m16_grip_wood")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_hg_a1")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"hg_m16a1", "hg_no11"}
    ATT.ExcludeElements = {"blen_11"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_hg_triangle.png", "smooth mips")
    ATT.Category = "ud_m16_hg"
    ATT.RecoilRandomSideMult = 1.35
    ATT.AimDownSightsTimeMult = 0.9
    ATT.SprintToFireTimeMult = 0.9
    ATT.UC_HipDispersionMult = 0.9
    ATT.LHIK = true
    ATT.Model = "models/weapons/arccw/atts/classic_lhik.mdl"
    ATT.BoxModel = "models/items/boxsrounds.mdl"
    ATT.ModelOffset = (Vector(0.41, 0, -1.63) - Vector(11.5, 2.8, -4.2))

    ARC9.LoadAttachment(ATT, "ud_m16_hg_a1")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_hg_adar")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_ud_m16_hg_adar.png", "smooth mips")
    ATT.Category = "ud_m16_hg"
    ATT.SwayMult = 0.9
    ATT.RecoilRandomSideMult = 0.85
    ATT.RecoilMult = 0.95
    ATT.SpeedMultSights = 0.95
    ATT.SpeedMultShooting = 0.95
    ATT.LHIK = true
    ATT.Model = "models/weapons/arccw/atts/adar_lhik.mdl"
    ATT.BoxModel = "models/items/boxsrounds.mdl"
    ATT.ModelOffset = (Vector(0.41, 0, -1.63) - Vector(11.5, 2.8, -4.2))

    ARC9.LoadAttachment(ATT, "ud_m16_hg_adar")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_hg_fpw")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"patr2"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_hg_fpw.png", "smooth mips")
    ATT.Category = "ud_m16_hg"
    ATT.HeatCapacityMult = 160 / 120
    ATT.RecoilMult = 1.1
    ATT.LHIK = true
    ATT.Model = "models/weapons/arccw/atts/m4_lhik.mdl"
    ATT.BoxModel = "models/items/boxsrounds.mdl"
    ATT.ModelOffset = (Vector(0.41, 0, -1.63) - Vector(11.5, 2.8, -4.2))

    ARC9.LoadAttachment(ATT, "ud_m16_hg_fpw")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_hg_heat")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"hg_m16a1", "hg_no11"}
    ATT.ExcludeElements = {"blen_11"}

    ATT.Category = "ud_m16_hg"
    ATT.RecoilRandomSideMult = 1.35
    ATT.AimDownSightsTimeMult = 0.9
    ATT.SprintToFireTimeMult = 0.9
    ATT.HeatDissipationMult = 2
    ATT.SpeedMultSights = 1.1
    ATT.LHIK = false
    ATT.Model = "models/weapons/arccw/atts/classic_lhik.mdl"
    ATT.BoxModel = "models/items/boxsrounds.mdl"

    ARC9.LoadAttachment(ATT, "ud_m16_hg_heat")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_hg_lmg")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["uc.noubs"] = "",
    }
    ATT.ActivateElements = {"hg_lmg", "m16_lmg", "hg_no11"}
    ATT.ExcludeElements = {"blen_11"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_hg_lmg.png", "smooth mips")
    ATT.Category = "ud_m16_hg"
    ATT.SpeedMult = 0.95
    ATT.SpeedMultSights = 0.8
    ATT.SwayMult = 1.5
    ATT.AimDownSightsTimeMult = 1.25
    ATT.SprintToFireTimeMult = 1.25
    ATT.RPMMult = 0.915
    ATT.RecoilMult = 0.7
    ATT.RecoilRandomSideMult = 0.5
    ATT.MalfunctionMeanShotsToFailMult = 2
    ATT.Bipod = true
    ATT.UC_BipodDispersionMult = 0.2
    ATT.SwayMultBipod = 0.2
    ATT.RecoilMultBipod = 0.15
    ATT.RecoilRandomSideMultBipod = 0.15
    ATT.LHIK = true
    ATT.Model = "models/weapons/arccw/atts/lmg_lhik.mdl"
    ATT.ModelOffset = (Vector(0.41, 0, -1.63) - Vector(11.5, 2.8, -4.2)) + Vector(-0.1, 0, 0)

    ARC9.LoadAttachment(ATT, "ud_m16_hg_lmg")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_hg_ru556")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"hg_ru556", "ud_m16_rscompatible"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_hg_ru556.png", "smooth mips")
    ATT.Category = "ud_m16_hg"
    ATT.SwayMult = .8
    ATT.SpeedMult = 1.05
    ATT.SpeedMultSights = 1.2
    ATT.UC_HipDispersionMult = 1.1
    ATT.RecoilMult = 1.175
    ATT.LHIK = true
    ATT.Model = "models/weapons/arccw/atts/ru556_lhik.mdl"
    ATT.BoxModel = "models/items/boxsrounds.mdl"
    ATT.ModelOffset = (Vector(0.41, 0, -2.8) - Vector(11.5, 2.8, -4.2))
    ATT.UC_ModelAngleOffset = Angle( 0, 5, 0 )
    ATT.ModelAngleOffset = ARC9.UC.AttachmentAngle(ATT.UC_ModelAngleOffset)

    ARC9.LoadAttachment(ATT, "ud_m16_hg_ru556")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_hg_tactical")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"mount_tactical", "ud_m16_rscompatible"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_hg_ris.png", "smooth mips")
    ATT.Category = "ud_m16_hg"
    ATT.SortOrder = 99
    ATT.Free = true
    ATT.LHIK = true
    ATT.Model = "models/weapons/arccw/atts/tactical_lhik.mdl"
    ATT.BoxModel = "models/items/boxsrounds.mdl"
    ATT.ModelOffset = (Vector(0.41, 0, -1.63) - Vector(11.5, 2.8, -4.2))

    ARC9.LoadAttachment(ATT, "ud_m16_hg_tactical")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_hg_wood")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"hg_m16a1_wood", "hg_no11"}
    ATT.ExcludeElements = {"blen_11"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_hg_triangle.png", "smooth mips")
    ATT.Category = "ud_m16_hg"
    ATT.SwayMult = 0.8
    ATT.RecoilRandomSideMult = 0.85
    ATT.RecoilMult = 0.9
    ATT.SpeedMultSights = 0.8
    ATT.SpeedMultShooting = 0.9
    ATT.LHIK = true
    ATT.Model = "models/weapons/arccw/atts/classic_lhik.mdl"
    ATT.BoxModel = "models/items/boxsrounds.mdl"
    ATT.ModelOffset = (Vector(0.41, 0, -1.63) - Vector(11.5, 2.8, -4.2))

    ARC9.LoadAttachment(ATT, "ud_m16_hg_wood")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_mag_100")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["uc.jam"] = "",
    }
    ATT.ActivateElements = {"ud_m16_mag_100", "patr5"}
    ATT.ExcludeElements = {"m16_usas", "m16_9mm", "m16_50beo"}

    ATT.SortOrder = 100
    ATT.Icon = Material("entities/att/acwatt_ud_m16_mag_100.png", "smooth mips")
    ATT.Category = "ud_m16_mag"
    ATT.ClipSize = 100
    ATT.AimDownSightsTimeMult = 1.5
    ATT.SprintToFireTimeMult = 1.5
    ATT.ReloadTimeMult = 1.5
    ATT.SwayMult = 3
    ATT.SpeedMult = 0.9
    ATT.SpeedMultShooting = 0.8
    ATT.DeployTimeMult = 1.25
    ATT.UC_HipDispersionMult = 1.5
    ATT.Malfunction = true
    ATT.MalfunctionMeanShotsToFailMult = 0.75
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if anim == "reload" or anim == "reload_empty" then
            return anim .. "_100"
        end
    end

    ATT.UC_MalfunctionVarianceMult = 1.5

    ARC9.LoadAttachment(ATT, "ud_m16_mag_100")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_mag_20")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_m16_mag_20"}
    ATT.ExcludeElements = {"m16_usas", "m16_9mm", "m16_50beo"}

    ATT.SortOrder = 20
    ATT.Icon = Material("entities/att/acwatt_ud_m16_mag_20.png", "smooth mips")
    ATT.Category = "ud_m16_mag"
    ATT.ClipSize = 20
    ATT.AimDownSightsTimeMult = 0.85
    ATT.SprintToFireTimeMult = 0.85
    ATT.ReloadTimeMult = 0.9
    ATT.SwayMult = 0.75
    ATT.SpeedMult = 1.025
    ATT.SpeedMultSights = 1.05
    ATT.SpeedMultShooting = 1.05
    ATT.MalfunctionMeanShotsToFailMult = 1.5
    ATT.UC_HipDispersionMult = 0.75
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if anim == "reload" or anim == "reload_empty" then
            return anim .. "_20"
        end
    end

    ARC9.LoadAttachment(ATT, "ud_m16_mag_20")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_mag_40")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_m16_mag_40"}
    ATT.ExcludeElements = {"m16_usas", "m16_9mm", "m16_50beo"}

    ATT.SortOrder = 40
    ATT.Icon = Material("entities/att/acwatt_ud_m16_mag_40.png", "smooth mips")
    ATT.Category = "ud_m16_mag"
    ATT.ClipSize = 40
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.ReloadTimeMult = 1.15
    ATT.SwayMult = 1.5
    ATT.SpeedMult = 0.975
    ATT.SpeedMultShooting = 0.95
    ATT.UC_HipDispersionMult = 1.15
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if anim == "reload" or anim == "reload_empty" then
            return anim .. "_40"
        end
    end

    ARC9.LoadAttachment(ATT, "ud_m16_mag_40")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_mag_50beo_12")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.RequireElements = {{"m16_50beo"}}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_mag_30.png", "smooth mips")
    ATT.Category = "ud_m16_mag"
    ATT.Free = true -- since this is just the standard mag
    ATT.SortOrder = 2
    ATT.ClipSize = 12
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.ReloadTimeMult = 1.15
    ATT.SwayMult = 1.5
    ATT.SpeedMult = 0.975
    ATT.UC_HipDispersionMult = 1.15

    ARC9.LoadAttachment(ATT, "ud_m16_mag_50beo_12")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_mag_50beo_15")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_m16_mag_40"}
    ATT.RequireElements = {{"m16_50beo"}}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_mag_40.png", "smooth mips")
    ATT.Category = "ud_m16_mag"
    ATT.InvAtt = "ud_m16_mag_40"
    ATT.SortOrder = 1
    ATT.ClipSize = 15
    ATT.AimDownSightsTimeMult = 1.2
    ATT.SprintToFireTimeMult = 1.2
    ATT.ReloadTimeMult = 1.3
    ATT.SwayMult = 2.25
    ATT.SpeedMult = 0.95
    ATT.UC_HipDispersionMult = 1.25
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if anim == "reload" or anim == "reload_empty" then
            return anim .. "_40"
        end
    end

    ARC9.LoadAttachment(ATT, "ud_m16_mag_50beo_15")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_mag_60")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["uc.jam"] = "",
    }
    ATT.ActivateElements = {"ud_m16_mag_60"}
    ATT.ExcludeElements = {"m16_usas", "m16_9mm", "m16_50beo"}

    ATT.SortOrder = 60
    ATT.Icon = Material("entities/att/acwatt_ud_m16_mag_60.png", "smooth mips")
    ATT.Category = "ud_m16_mag"
    ATT.ClipSize = 60
    ATT.AimDownSightsTimeMult = 1.2
    ATT.SprintToFireTimeMult = 1.2
    ATT.ReloadTimeMult = 1.3
    ATT.SwayMult = 2
    ATT.SpeedMult = 0.95
    ATT.SpeedMultShooting = 0.9
    ATT.DeployTimeMult = 1.15
    ATT.UC_HipDispersionMult = 1.25
    ATT.Malfunction = true
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if anim == "reload" or anim == "reload_empty" then
            return anim .. "_60"
        end
    end

    ATT.UC_MalfunctionVarianceMult = 1.25

    ARC9.LoadAttachment(ATT, "ud_m16_mag_60")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_mag_9mm_32")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_m16_9mm_mag_32"}
    ATT.RequireElements = {{"m16_9mm"}}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_9mm_32.png", "smooth mips")
    ATT.Category = "ud_m16_mag"
    ATT.ClipSize = 32
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.ReloadTimeMult = 1.15
    ATT.SwayMult = 1.25
    ATT.SpeedMultShooting = 0.95
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if anim == "reload" or anim == "reload_empty" then
            return anim .. "_9mm"
        end
    end

    ARC9.LoadAttachment(ATT, "ud_m16_mag_9mm_32")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_mag_pmag")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_m16_pmag"}
    ATT.ExcludeElements = {"m16_usas", "m16_9mm", "m16_50beo"}

    ATT.SortOrder = 40
    ATT.Icon = Material("entities/att/acwatt_ud_m16_mag_pmag.png", "smooth mips")
    ATT.Category = "ud_m16_mag"

    ARC9.LoadAttachment(ATT, "ud_m16_mag_pmag")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_mag_usas_20")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_m16_usas_mag_20"}
    ATT.RequireElements = {{"m16_usas"}}

    ATT.SortOrder = -1
    ATT.Icon = Material("entities/att/obsolete.png", "mips smooth")
    ATT.Category = "ud_m16_mag"
    ATT.ClipSize = 20
    ATT.AimDownSightsTimeMult = 1.25
    ATT.SprintToFireTimeMult = 1.25
    ATT.ReloadTimeMult = 1.25
    ATT.SpeedMult = 0.95
    ATT.SwayMult = 3
    ATT.Ignore = true
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if anim == "reload" or anim == "reload_empty" then
            return anim .. "_usas_20"
        end
        if string.StartsWith(anim, "fire") then
            return anim .. "_usas"
        end
    end

    ARC9.LoadAttachment(ATT, "ud_m16_mag_usas_20")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_muzzle_605")
    ATT.Description = ""
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.flashhider"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_ud_m16_muzzle_605.png", "mips smooth")
    ATT.Category = "ud_m16_muzzle"
    ATT.SortOrder = -101
    ATT.Model = "models/weapons/arccw/atts/fesiug_threeprong_605.mdl"
    ATT.ModelOffset = Vector(0.4, 0, 0)
    ATT.Scale = 1
    ATT.ModelAngleOffset = Angle(0, 0, 0)
    ATT.BarrelLengthAdd = 4
    ATT.SwayMult = 1.1
    ATT.UC_HipDispersionMult = 0.9
    ATT.ShootPitchMult = 1.1
    ATT.ShootVolumeMult = 0.75
    ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"

    ARC9.LoadAttachment(ATT, "ud_m16_muzzle_605")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_muzzle_607")
    ATT.Description = ""
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.flashhider"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_ud_m16_muzzle_607.png", "mips smooth")
    ATT.Category = "ud_m16_muzzle"
    ATT.SortOrder = -102
    ATT.Model = "models/weapons/arccw/atts/fesiug_moderator_607.mdl"
    ATT.ModelOffset = Vector(0.2, 0, 0)
    ATT.Scale = 1
    ATT.ModelAngleOffset = Angle(0, 0, 0)
    ATT.BarrelLengthAdd = 4
    ATT.SwayMult = 1.1
    ATT.UC_HipDispersionMult = 0.9
    ATT.ShootPitchMult = 1.1
    ATT.ShootVolumeMult = 0.75
    ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"

    ARC9.LoadAttachment(ATT, "ud_m16_muzzle_607")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_muzzle_xm177")
    ATT.Description = ""
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.flashhider"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_ud_m16_muzzle_xm177.png", "mips smooth")
    ATT.Category = "ud_m16_muzzle"
    ATT.SortOrder = -100
    ATT.Model = "models/weapons/arccw/atts/fesiug_moderator_xm177.mdl"
    ATT.ModelOffset = Vector(0.3, 0, 0)
    ATT.Scale = 1
    ATT.ModelAngleOffset = Angle(0, 0, 0)
    ATT.BarrelLengthAdd = 4
    ATT.SwayMult = 1.1
    ATT.UC_HipDispersionMult = 0.9
    ATT.ShootPitchMult = 1.1
    ATT.ShootVolumeMult = 0.75
    ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"

    ARC9.LoadAttachment(ATT, "ud_m16_muzzle_xm177")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_receiver_22lr")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/uc_bullets/22lr.png", "smooth mips")
    ATT.Category = "ud_m16_receiver"
    ATT.SortOrder = 3
    ATT.RPMMult = 1 / .85
    ATT.DamageMaxMult = ARC9.UC.CalConv("556", "22lr", "max")
    ATT.DamageMinMult = ARC9.UC.CalConv("556", "22lr", "min")
    ATT.PenetrationMult = ARC9.UC.CalConv("556", "22lr", "pen")
    ATT.RangeMaxMult = 0.5
    ATT.RangeMinMult = 0.5
    ATT.SpeedMultShooting = 1.2
    ATT.RecoilMult = 0.2
    ATT.VisualRecoilMult = 0.2
    ATT.ClipSizeMult = 1.2
    ATT.HeatCapacityMult = 2
    ATT.TracerColor = Color(255, 255, 255, 200)
    ATT.TracerSize = 0.5
    ATT.PhysBulletMuzzleVelocity = (375 / 0.8333) * ARC9.UC.Meter
    ATT.Ammo = "plinking"
    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.22_long_rifle")
    ATT.ShellModel = "models/weapons/arccw/uc_shells/22lr.mdl"
    ATT.ShellScale = 1
    ATT.ShellSounds = ARC9.TinyShellSoundsTable
    local path = "arccw_uc/common/"
    local fire22 = {path .. "fire-22-01.ogg",path .. "fire-22-02.ogg",path .. "fire-22-03.ogg",path .. "fire-22-04.ogg",path .. "fire-22-05.ogg",path .. "fire-22-06.ogg"}
    local fire22sup = {path .. "fire-22-sup-01.ogg",path .. "fire-22-sup-02.ogg",path .. "fire-22-sup-03.ogg",path .. "fire-22-sup-04.ogg",path .. "fire-22-sup-05.ogg",path .. "fire-22-sup-06.ogg"}
    ATT.ShootSoundSilenced = fire22sup
    ATT.ShootSound = fire22
    local fire22dist = {path .. "fire-22-dist-01.ogg", path .. "fire-22-dist-02.ogg", path .. "fire-22-dist-03.ogg", path .. "fire-22-dist-04.ogg", path .. "fire-22-dist-05.ogg", path .. "fire-22-dist-06.ogg"}
    ATT.DistantShootSound = fire22dist
    local fire22distint = {path .. "fire-dist-int-pistol-light-01.ogg", path .. "fire-dist-int-pistol-light-02.ogg", path .. "fire-dist-int-pistol-light-03.ogg", path .. "fire-dist-int-pistol-light-04.ogg", path .. "fire-dist-int-pistol-light-05.ogg", path .. "fire-dist-int-pistol-light-06.ogg"}
    ATT.DistantShootSoundIndoor = fire22distint

    ARC9.LoadAttachment(ATT, "ud_m16_receiver_22lr")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_receiver_300blk")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"cal_subsonic"}

    ATT.Icon = Material("entities/att/uc_bullets/300blackout.png", "smooth mips")
    ATT.Category = "ud_m16_receiver"
    ATT.SortOrder = 4
    ATT.DamageMaxMult = ARC9.UC.CalConv("556", "300blk", "max")
    ATT.DamageMinMult = ARC9.UC.CalConv("556", "300blk", "min")
    ATT.PenetrationMult = ARC9.UC.CalConv("556", "300blk", "pen")
    ATT.ShootVolumeMult = 105 / 120
    ATT.RangeMaxMult = 0.9
    ATT.RangeMinMult = 0.9
    ATT.HeatDissipationMult = 1.5
    ATT.PhysBulletMuzzleVelocity = 310 * ARC9.UC.Meter
    ATT.ShellModel = "models/weapons/arccw/uc_shells/300blk.mdl"
    ATT.ShellScale = 1
    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.300_aac_blackout")
    ATT.HookP_NameChange = function(wep, name)
        return ARC9:GetPhrase("ud.m16.name_300blk", {name = name})
    end
    local path = "weapons/arccw_ud/m16/"
    ATT.ShootSound = { path .. "fire-300-01.ogg", path .. "fire-300-02.ogg", path .. "fire-300-03.ogg", path .. "fire-300-04.ogg", path .. "fire-300-05.ogg", path .. "fire-300-06.ogg" }
    ATT.DistantShootSound = { path .. "fire-dist-300-01.ogg", path .. "fire-dist-300-02.ogg", path .. "fire-dist-300-03.ogg", path .. "fire-dist-300-04.ogg", path .. "fire-dist-300-05.ogg", path .. "fire-dist-300-06.ogg" }

    ARC9.LoadAttachment(ATT, "ud_m16_receiver_300blk")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_receiver_50beo")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["ud.m16.50beo"] = "",
        ["uc.semionly"] = "",
    }
    ATT.ActivateElements = {"m16_50beo", "m16_nolower"}

    ATT.Icon = Material("entities/att/uc_bullets/50beowulf.png", "smooth mips")
    ATT.Category = "ud_m16_receiver"
    ATT.UC_DefaultSlots = {
        [6] = {Name = "uc.default.50_beowulf_lower", Icon = Material("entities/att/acwatt_ud_m16_receiver_semi.png", "smooth mips")},
        [11] = {Name = "uc.default.7_round_mag", Icon = Material("entities/att/acwatt_ud_m16_mag_15.png", "smooth mips")},
    }
    ATT.SortOrder = 1
    ATT.ClipSize = 7
    ATT.ClipSize_Priority = 0.5
    ATT.DamageMaxMult = ARC9.UC.CalConv("556", "50beo", "max")
    ATT.DamageMinMult = ARC9.UC.CalConv("556", "50beo", "min")
    ATT.PenetrationMult = ARC9.UC.CalConv("556", "50beo", "pen")
    ATT.RecoilMult = 3
    ATT.RecoilRandomSideMult = 2
    ATT.VisualRecoilMult = 2
    ATT.RPMMult = 0.5
    ATT.RangeMaxMult = 0.25
    ATT.RangeMinMult = 0.25
    ATT.ShootVolumeMult = 1.2
    ATT.AimDownSightsTimeMult = 0.91
    ATT.SprintToFireTimeMult = 0.91
    ATT.ReloadTimeMult = 0.87
    ATT.SwayMult = 0.667
    ATT.SpeedMult = 1.025
    ATT.PhysBulletMuzzleVelocity = 550 * ARC9.UC.Meter
    ATT.Ammo = "357"
    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.50_beowulf")
    ATT.HookP_NameChange = function(wep, name)
        return ARC9:GetPhrase("ud.m16.name_50beo", {name = name})
    end
    ATT.ShellModel = "models/weapons/arccw/uc_shells/50beo.mdl"
    ATT.ShellScale = 1
    ATT.ShellSounds = ARC9.PistolShellSoundsTable
    ATT.Firemodes_Priority = 0.5
    ATT.Firemodes = {
        {
            Mode = 1,
        }
    }
    local path = "weapons/arccw_ud/m16/"
    ATT.ShootSound = { path .. "fire-50-01.ogg", path .. "fire-50-02.ogg", path .. "fire-50-03.ogg", path .. "fire-50-04.ogg", path .. "fire-50-05.ogg", path .. "fire-50-06.ogg" }
    ATT.DistantShootSound = { path .. "fire-50-dist-01.ogg", path .. "fire-50-dist-02.ogg", path .. "fire-50-dist-03.ogg", path .. "fire-50-dist-04.ogg", path .. "fire-50-dist-05.ogg", path .. "fire-50-dist-06.ogg" }
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if (anim == "reload" or anim == "reload_empty") and !wep.Attachments[11].Installed then
            return anim .. "_20"
        end
    end
    ATT.HookP_ClassChange = function(wep, class) return "uc.class.semi_automatic_rifle" end

    ARC9.LoadAttachment(ATT, "ud_m16_receiver_50beo")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_receiver_9mm")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_m16_9mm_mag", "m16_auto", "m16_9mm"}
    ATT.ExcludeElements = {"m16_noauto"}

    ATT.Icon = Material("entities/att/uc_bullets/9x19.png", "smooth mips")
    ATT.Category = "ud_m16_receiver"
    ATT.UC_DefaultSlots = {
        [11] = {Name = "uc.default.20_round_mag", Icon = Material("entities/att/acwatt_ud_m16_9mm_20.png", "smooth mips")},
    }
    ATT.SortOrder = 3
    ATT.PenetrationMult = ARC9.UC.CalConv("556", "9mm", "pen")
    ATT.RPMMult = 1 / .85
    ATT.DamageMaxMult = ARC9.UC.CalConv("556", "9mm", "max")
    ATT.DamageMinMult = ARC9.UC.CalConv("556", "9mm", "min")
    ATT.RangeMaxMult = 0.4
    ATT.RangeMinMult = 0.4
    ATT.SpeedMultShooting = 1.1
    ATT.RecoilMult = 0.5
    ATT.UC_HipDispersionMult = 0.85
    ATT.AimDownSightsTimeMult = 0.9
    ATT.SprintToFireTimeMult = 0.9
    ATT.ClipSize_Priority = 0.5
    ATT.ClipSize = 20
    ATT.HeatCapacityMult = 1.5
    ATT.PhysBulletMuzzleVelocity = (396 / 0.833333) * ARC9.UC.Meter
    ATT.Ammo = "pistol"
    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.9x19mm_parabellum")
    ATT.HookP_ClassChange = function(wep, class) return "uc.class.submachine_gun" end
    ATT.ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
    ATT.ShellScale = 1
    ATT.ShellSounds = ARC9.PistolShellSoundsTable
    local path = ")^weapons/arccw_ud/glock/"
    ATT.ShootSound = "weapons/arccw_ud/m16/fire_9.ogg"
    ATT.ShootSoundSilenced = {path .. "fire-sup-01.ogg", path .. "fire-sup-02.ogg", path .. "fire-sup-03.ogg", path .. "fire-sup-04.ogg", path .. "fire-sup-05.ogg", path .. "fire-sup-06.ogg"}
    local tail = ")^/arccw_uc/common/9x19/"
    ATT.DistantShootSound = { tail .. "fire-dist-9x19-pistol-ext-01.ogg", tail .. "fire-dist-9x19-pistol-ext-02.ogg", tail .. "fire-dist-9x19-pistol-ext-03.ogg", tail .. "fire-dist-9x19-pistol-ext-04.ogg", tail .. "fire-dist-9x19-pistol-ext-05.ogg", tail .. "fire-dist-9x19-pistol-ext-06.ogg" }
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if anim == "reload" or anim == "reload_empty" then
            return anim .. "_9mm"
        end
    end

    ARC9.LoadAttachment(ATT, "ud_m16_receiver_9mm")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_receiver_a1")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["uc.jam"] = "",
    }
    ATT.ActivateElements = {"upper_classic", "ud_m16_upper_charm2", "m16_auto", "ud_m16_retro", "ud_m16_a1"}
    ATT.ExcludeElements = {"m16_noauto", "ud_m16_not_retro"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_receiver_a1.png", "smooth mips")
    ATT.Category = "ud_m16_receiver"
    ATT.SortOrder = -6
    ATT.Malfunction = true
    ATT.SpreadMult = 1.25
    ATT.UC_HipDispersionMult = 1.125
    ATT.RPMMult = 900 / 765
    ATT.UC_TopMount = 3

    ARC9.LoadAttachment(ATT, "ud_m16_receiver_a1")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_receiver_altburst")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["ud.m16_altburst.1"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_ud_m16_receiver_default.png", "smooth mips")
    ATT.Category = "ud_m16_fcg"
    ATT.Free = true
    ATT.SortOrder = 10
    ATT.Firemodes_Priority = 0.5
    ATT.Firemodes = {
        {
            Mode = 3,
            PostBurstDelay = 0.08,
            RecoilMult = 0.9,
            RunawayBurst = true,
        },
        {
            Mode = 1,
        }
    }

    ARC9.LoadAttachment(ATT, "ud_m16_receiver_altburst")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_receiver_auto")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.auto"] = "",
    }
    ATT.ActivateElements = {"m16_auto"}
    ATT.ExcludeElements = {"m16_noauto"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_receiver_auto.png", "smooth mips")
    ATT.Category = "ud_m16_fcg"
    ATT.SortOrder = 5
    ATT.SpreadMult = 1.25
    ATT.RPMMult = 0.85
    ATT.UC_HipDispersionMult = 1.125
    ATT.SpeedMultShooting = 0.85
    ATT.Firemodes = {
        {
            Mode = -1,
        },
        {
            Mode = 1,
        }
    }

    ARC9.LoadAttachment(ATT, "ud_m16_receiver_auto")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_receiver_cali")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["uc.manual"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_ud_m16_receiver_cali.png", "smooth mips")
    ATT.Category = "ud_m16_fcg"
    ATT.SortOrder = -5
    ATT.CaseEffectQCA = 6
    ATT.PhysBulletMuzzleVelocityMult = 1.3
    ATT.Firemodes = {
        {
            Mode = 1,
            PrintName = "fcg.bolt",
        }
    }
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if (anim == "fire" or anim == "fire_empty") then
            return "fire_cycle"
        end
    end
    ATT.ManualAction = true
    ATT.SpreadMult = 0.5
    ATT.RangeMaxMult = 1.25
    ATT.RangeMinMult = 1.25 * 1.25
    ATT.MalfunctionMeanShotsToFailMult = 1.5

    ARC9.LoadAttachment(ATT, "ud_m16_receiver_cali")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_receiver_fpw")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.auto"] = "",
    }
    ATT.CustomCons = {
        ["uc.jam"] = "",
        ["uc.nofs"] = "",
        ["uc.overheat"] = "",
        ["ud.m16.fpw1"] = "",
        ["ud.m16.fpw2"] = "",
    }
    ATT.ActivateElements = {"upper_classic", "ud_m16_upper_charm2", "m16_auto", "ud_m16_retro", "ud_m16_fpw", "sight_magpul", "patr3"}
    ATT.ExcludeElements = {"m16_noauto", "ud_m16_not_retro"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_receiver_a1.png", "smooth mips")
    ATT.Category = "ud_m16_fcg"
    ATT.SortOrder = -6.5
    ATT.RPMMult = 1103 / 900
    ATT.RecoilMult = 1.25 / 1.1
    ATT.RecoilRandomSideMult = 1.5
    ATT.RangeMaxMult = 0.9
    ATT.RangeMinMult = 0.9
    ATT.SpreadMult = 4 / 3
    ATT.UC_HipDispersionMult = 0.85
    ATT.TriggerDelay = true
    ATT.Malfunction = true
    ATT.Overheat = true
    ATT.HeatLockout = false
    ATT.HeatCapacity = 120
    ATT.HeatDissipation = 20
    ATT.UC_SightsDispersionHook = function(wep, spread)
        if !wep.Attachments[1].Installed or wep.Attachments[1].Installed == "ud_m16_rs" then
            return spread + 50 * ARC9.UC.Dispersion
        end
    end
    ATT.Firemodes = {
        {
            Mode = -1,
        }
    }
    ATT.ChamberSize = 0
    ATT.UC_TopMount = 3

    ARC9.LoadAttachment(ATT, "ud_m16_receiver_fpw")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_receiver_semi")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["uc.semionly"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_ud_m16_receiver_semi.png", "smooth mips")
    ATT.Category = "ud_m16_fcg"
    ATT.SortOrder = -1
    ATT.RPMMult = 600 / 900
    ATT.RecoilMult = 0.8
    ATT.SpreadMult = 0.75
    ATT.RangeMaxMult = 1.15
    ATT.RangeMinMult = 1.15
    ATT.UC_MoveDispersionMult = 0.5
    ATT.PhysBulletMuzzleVelocityMult = 1.15
    ATT.Firemodes_Priority = 0.5
    ATT.Firemodes = {
        {
            Mode = 1,
        }
    }
    ATT.HookP_ClassChange = function(wep, class) return "uc.class.semi_automatic_rifle" end

    ARC9.LoadAttachment(ATT, "ud_m16_receiver_semi")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_rs")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_m16_upper_flat", "ud_m16_not_retro"}
    ATT.ExcludeElements = {"ud_m16_retro"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_rs.png", "smooth mips")
    ATT.Category = "ud_m16_rs"
    ATT.UC_RailPosition = 0.5
    ATT.SortOrder = 1000
    ATT.Free = true
    ATT.UC_IronSight = true
    -- Authored sight poses converted to ARC9's rotation order and unrotated position axes.
    ATT.IronSights = {
        Pos = Vector(-2.8, -0.015576, 0.849857),
        Ang = Angle(0, 1.05, 0),
        Magnification = 1.1,
        ViewModelFOV = ARC9.UC.SightViewModelFOV,
    }
    ATT.Model = "models/weapons/arccw/atts/sig_rs.mdl"
    ATT.ModelOffset = Vector(-2, -0.002, 0)
    ATT.Scale = 0.86

    ARC9.LoadAttachment(ATT, "ud_m16_rs")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_rs_3d")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_m16_upper_flat", "ud_m16_not_retro"}
    ATT.ExcludeElements = {"ud_m16_retro"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_rs_3d.png", "smooth mips")
    ATT.Category = "ud_m16_rs"
    ATT.UC_RailPosition = 0.5
    ATT.SortOrder = 1000
    ATT.Free = true
    ATT.UC_IronSight = true
    -- Authored sight poses converted to ARC9's rotation order and unrotated position axes.
    ATT.IronSights = {
        Pos = Vector(-2.8, -0.040315, 2.199631),
        Ang = Angle(0, 1.05, 0),
        Magnification = 1.1,
        ViewModelFOV = ARC9.UC.SightViewModelFOV,
    }
    ATT.Model = "models/weapons/arccw/atts/3d_rs.mdl"
    ATT.ModelOffset = Vector(-2, -0.002, 0)
    ATT.Scale = 0.86

    ARC9.LoadAttachment(ATT, "ud_m16_rs_3d")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_rs_ch")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_m16_upper_flat", "ud_m16_not_retro"}
    ATT.ExcludeElements = {"ud_m16_retro"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_rs_ch.png", "mips smooth")
    ATT.Category = "ud_m16_rs"
    ATT.UC_RailPosition = 0.64
    ATT.SortOrder = 1000
    ATT.Free = true
    ATT.UC_IronSight = true
    -- Authored sight poses converted to ARC9's rotation order and unrotated position axes.
    ATT.IronSights = {
        Pos = Vector(-2.8, -0.007749, 1.109973),
        Ang = Angle(0, 0.4, 0),
        Magnification = 1.1,
        ViewModelFOV = ARC9.UC.SightViewModelFOV,
    }
    ATT.Model = "models/weapons/arccw/atts/colt_ch.mdl"
    ATT.ModelOffset = Vector(-2.2, -0.004, 0)
    ATT.Scale = 0.78

    ARC9.LoadAttachment(ATT, "ud_m16_rs_ch")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_rs_kac")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_m16_upper_flat", "ud_m16_not_retro"}
    ATT.ExcludeElements = {"ud_m16_retro"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_rs_kac.png", "mips smooth")
    ATT.Category = "ud_m16_rs"
    ATT.UC_RailPosition = 0.5
    ATT.SortOrder = 1000
    ATT.Free = true
    ATT.UC_IronSight = true
    -- Authored sight poses converted to ARC9's rotation order and unrotated position axes.
    ATT.IronSights = {
        Pos = Vector(-2.8, -0.014137, 0.899889),
        Ang = Angle(0, 0.9, 0),
        Magnification = 1.1,
        ViewModelFOV = ARC9.UC.SightViewModelFOV,
    }
    ATT.Model = "models/weapons/arccw/atts/kac_rs.mdl"
    ATT.ModelOffset = Vector(-1.5, -0.01, -0.09)
    ATT.Scale = 0.9

    ARC9.LoadAttachment(ATT, "ud_m16_rs_kac")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_rs_magpul")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_m16_upper_flat", "ud_m16_not_retro"}
    ATT.ExcludeElements = {"ud_m16_retro"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_rs_magpul.png", "smooth mips")
    ATT.Category = "ud_m16_rs"
    ATT.UC_RailPosition = 0.5
    ATT.SortOrder = 1000
    ATT.Free = true
    ATT.UC_IronSight = true
    -- Authored sight poses converted to ARC9's rotation order and unrotated position axes.
    ATT.IronSights = {
        Pos = Vector(-2.8, -0.015576, 0.849857),
        Ang = Angle(0, 1.05, 0),
        Magnification = 1.1,
        ViewModelFOV = ARC9.UC.SightViewModelFOV,
    }
    ATT.Model = "models/weapons/arccw/atts/magpul_rs.mdl"
    ATT.ModelOffset = Vector(-1.5, -0.005, 0)
    ATT.Scale = 0.87

    ARC9.LoadAttachment(ATT, "ud_m16_rs_magpul")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_rs_sclr")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_m16_upper_flat", "ud_m16_not_retro"}
    ATT.ExcludeElements = {"ud_m16_retro"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_rs_sclr.png", "mips smooth")
    ATT.Category = "ud_m16_rs"
    ATT.UC_RailPosition = 0.5
    ATT.SortOrder = 1000
    ATT.Free = true
    ATT.UC_IronSight = true
    -- Authored sight poses converted to ARC9's rotation order and unrotated position axes.
    ATT.IronSights = {
        Pos = Vector(-2.8, -0.015576, 0.849857),
        Ang = Angle(0, 1.05, 0),
        Magnification = 1.1,
        ViewModelFOV = ARC9.UC.SightViewModelFOV,
    }
    ATT.Model = "models/weapons/arccw/atts/scalerworks_rs.mdl"
    ATT.ModelOffset = Vector(-3, 0, -0.1)
    ATT.Scale = 1.17

    ARC9.LoadAttachment(ATT, "ud_m16_rs_sclr")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_stock_231")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_ud_m16_stock_231.png", "smooth mips")
    ATT.Category = "ud_m16_stock"
    ATT.SortOrder = 3
    ATT.AimDownSightsTimeMult = 0.75
    ATT.SprintToFireTimeMult = 0.75
    ATT.RecoilMult = 1.25
    ATT.BarrelLengthAdd = -4
    ATT.DeployTimeMult = 0.75
    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.extended",
            ActivateElements = {"stock_231_ex"},
        },
        {
            PrintName = "uc.toggle.collapsed",
            UC_HipDispersionMult = 0.6,
            UC_MoveDispersionMult = 0.6,
            RecoilRandomSideMult = 2,
            ActivateElements = {"stock_231_in"},
        }
    }

    ATT.UC_ToggleSound = "arccw_uc/common/stockslide.ogg"
    ATT.ToggleAttSoundHook = ARC9.UC.ToggleSound
    ATT.Hook_Think = ARC9.UC.ToggleSoundThink

    ARC9.LoadAttachment(ATT, "ud_m16_stock_231")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_stock_607")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_ud_m16_stock_607.png", "smooth mips")
    ATT.Category = "ud_m16_stock"
    ATT.SortOrder = 5
    ATT.SwayMult = 1.25
    ATT.UC_MoveDispersionMult = 0.9
    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.extended",
            ActivateElements = {"stock_607_ex"},
        },
        {
            PrintName = "uc.toggle.collapsed",
            ActivateElements = {"stock_607_in"},
            AimDownSightsTimeMult = 0.8,
            SprintToFireTimeMult = 0.8,
            RecoilMult = 1.15,
            BarrelLengthAdd = -4,
        }
    }

    ATT.UC_ToggleSound = "arccw_uc/common/stockslide.ogg"
    ATT.ToggleAttSoundHook = ARC9.UC.ToggleSound
    ATT.Hook_Think = ARC9.UC.ToggleSoundThink

    ARC9.LoadAttachment(ATT, "ud_m16_stock_607")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_stock_608")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"stock_608"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_stock_608.png", "smooth mips")
    ATT.Category = "ud_m16_stock"
    ATT.SortOrder = 4
    ATT.UC_HipDispersionMult = 0.75
    ATT.UC_MoveDispersionMult = 0.85
    ATT.AimDownSightsTimeMult = 1.15
    ATT.SprintToFireTimeMult = 1.15
    ATT.RecoilMult = 1.25
    ATT.SwayMult = 1.5
    ATT.BarrelLengthAdd = 0

    ARC9.LoadAttachment(ATT, "ud_m16_stock_608")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_stock_adar")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["uc.nogrip"] = "",
    }
    ATT.ActivateElements = {"stock_adar", "m16_adar"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_stock_adar.png", "smooth mips")
    ATT.Category = "ud_m16_stock"
    ATT.UC_DefaultSlots = {
        [9] = {Name = "uc.default.integral_grip", Icon = ATT.Icon},
    }
    ATT.SortOrder = 10
    ATT.SwayMult = 0.5
    ATT.RecoilMult = 0.8
    ATT.RecoilRandomSideMult = 0.75
    ATT.SpeedMult = 0.95
    ATT.SpeedMultSights = .8
    ATT.AimDownSightsTimeMult = 1.25
    ATT.SprintToFireTimeMult = 1.25

    ARC9.LoadAttachment(ATT, "ud_m16_stock_adar")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_stock_buffer")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"stock_231_tube", "patr4"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_stock_buffer.png", "smooth mips")
    ATT.Category = "ud_m16_stock"
    ATT.SortOrder = -100
    ATT.Free = true
    ATT.SpeedMult = 1.05
    ATT.AimDownSightsTimeMult = 0.75
    ATT.SprintToFireTimeMult = 0.75
    ATT.DeployTimeMult = 0.6
    ATT.RecoilMult = 1.5
    ATT.RecoilRandomSideMult = 2
    ATT.SpeedMultSights = 1.2
    ATT.SpeedMultShooting = 1.15
    ATT.BarrelLengthAdd = -8
    ATT.SwayMult = 3
    ATT.ActivePos = Vector(0.312277, -4.000000, 0.346819)

    ARC9.LoadAttachment(ATT, "ud_m16_stock_buffer")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_stock_carbine")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_ud_m16_stock_carbine.png", "smooth mips")
    ATT.Category = "ud_m16_stock"
    ATT.SortOrder = 6.5
    ATT.SwayMult = 1.25
    ATT.SpeedMultSights = 1.15
    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.extended",
            ActivateElements = {"stock_carbine_ex"},
        },
        {
            PrintName = "uc.toggle.collapsed",
            ActivateElements = {"stock_carbine_in"},
            RecoilRandomSideMult = 1.5,
            BarrelLengthAdd = -4,
            SpeedMultShooting = 1.1,
            AimDownSightsTimeMult = 0.9,
            SprintToFireTimeMult = 0.9,
        }
    }

    ATT.UC_ToggleSound = "arccw_uc/common/stockslide.ogg"
    ATT.ToggleAttSoundHook = ARC9.UC.ToggleSound
    ATT.Hook_Think = ARC9.UC.ToggleSoundThink

    ARC9.LoadAttachment(ATT, "ud_m16_stock_carbine")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_stock_moe")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"stock_231_tube"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_stock_moe.png", "smooth mips")
    ATT.Category = {"go_stock", "ud_m16_stock"}
    ATT.Model = "models/weapons/arccw/atts/stock_moe_b.mdl"
    ATT.ModelOffset = Vector(-0.57, 0, 0.342)
    ATT.Scale = 0.74
    ATT.ModelAngleOffset = Angle(0, 0, 0)
    ATT.SortOrder = 6
    ATT.SwayMult = 1.1
    ATT.SpeedMultSights = 1.075
    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.extended",
            ModelOffset = Vector(-1.5, 0, 0.342),
        },
        {
            PrintName = "uc.toggle.collapsed",
            ModelOffset = Vector(0, 0, 0.342),
            RecoilRandomSideMult = 1.5,
            BarrelLengthAdd = -4,
            AimDownSightsTimeMult = 0.9,
            SprintToFireTimeMult = 0.9,
            SpeedMultShooting = 1.05,
        }
    }

    ARC9.LoadAttachment(ATT, "ud_m16_stock_moe")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_stock_ru556")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"stock_ru556"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_stock_ru556.png", "smooth mips")
    ATT.Category = "ud_m16_stock"
    ATT.SortOrder = 5
    ATT.UC_MoveDispersionMult = 0.6
    ATT.SpeedMultSights = 1.15
    ATT.RecoilRandomSideMult = 1.1
    ATT.RecoilMult = 1.15
    ATT.SwayMult = 1.25

    ARC9.LoadAttachment(ATT, "ud_m16_stock_ru556")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_stock_sopmod")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"stock_231_tube"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_stock_sopmod.png", "smooth mips")
    ATT.Category = {"go_stock", "ud_m16_stock"}
    ATT.Model = "models/weapons/arccw/atts/stock_sopmod.mdl"
    ATT.ModelOffset = Vector(-0.57, 0, 0.40)
    ATT.Scale = 0.74
    ATT.ModelAngleOffset = Angle(0, 0, 0)
    ATT.SortOrder = 6
    ATT.SwayMult = 1.25
    ATT.SpeedMultSights = 1.15
    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.extended",
            ModelOffset = Vector(-1.5, 0, 0.40),
        },
        {
            PrintName = "uc.toggle.collapsed",
            ModelOffset = Vector(0, 0, 0.40),
            RecoilRandomSideMult = 1.5,
            BarrelLengthAdd = -4,
            SpeedMultShooting = 1.1,
            AimDownSightsTimeMult = 0.85,
            SprintToFireTimeMult = 0.85,
            UC_MoveDispersionMult = 1.15,
        }
    }

    ATT.UC_ToggleSound = "arccw_uc/common/stockslide.ogg"
    ATT.ToggleAttSoundHook = ARC9.UC.ToggleSound
    ATT.Hook_Think = ARC9.UC.ToggleSoundThink

    ARC9.LoadAttachment(ATT, "ud_m16_stock_sopmod")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_stock_waffle")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"stock_231_tube"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_stock_waffle.png", "smooth mips")
    ATT.Category = {"go_stock", "ud_m16_stock"}
    ATT.Model = "models/weapons/arccw/atts/fesiug_stock_waffle.mdl"
    ATT.ModelOffset = Vector(4.25, 0, 1.7)
    ATT.Scale = 1.14
    ATT.SortOrder = 6
    ATT.SwayMult = 1.25
    ATT.SpeedMultSights = 1.1
    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.extended",
            ModelOffset = Vector(3.0, 0, 1.7),
        },
        {
            PrintName = "uc.toggle.collapsed",
            ModelOffset = Vector(5.0, 0, 1.7),
            RecoilRandomSideMult = 1.25,
            BarrelLengthAdd = -4,
            AimDownSightsTimeMult = 0.9,
            SprintToFireTimeMult = 0.9,
        }
    }

    ARC9.LoadAttachment(ATT, "ud_m16_stock_waffle")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m16_stock_wood")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"stock_wood"}

    ATT.Icon = Material("entities/att/acwatt_ud_m16_stock_default.png", "smooth mips")
    ATT.Category = "ud_m16_stock"
    ATT.SortOrder = 9
    ATT.RecoilMult = 0.85
    ATT.SpeedMultSights = 0.9
    ATT.SpeedMult = 0.975
    ATT.SwayMult = 0.75

    ARC9.LoadAttachment(ATT, "ud_m16_stock_wood")
end
