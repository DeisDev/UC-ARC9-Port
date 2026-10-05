do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_muzzle_brake1")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_uc_muzzle_brake1.png", "mips smooth")
    ATT.Category = {"muzzle"}
    ATT.SortOrder = 100
    ATT.Model = "models/weapons/arccw/atts/uc_muzzle2.mdl"
    ATT.ModelOffset = Vector(2.3, 0, 0)
    ATT.Scale = 1
    ATT.ModelAngleOffset = Angle(0, 0, 0)
    ATT.MuzzleDevice = true
    ATT.RecoilMult = 0.8
    ATT.SpeedMultShooting = 0.9
    ATT.SwayMult = 1.15
    ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"

    ARC9.LoadAttachment(ATT, "uc_muzzle_brake1")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_muzzle_brake2")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_uc_muzzle_brake2.png", "mips smooth")
    ATT.Category = {"muzzle"}
    ATT.SortOrder = 100
    ATT.Model = "models/weapons/arccw/atts/uc_muzzle3.mdl"
    ATT.ModelOffset = Vector(2.3, 0, 0)
    ATT.Scale = 1
    ATT.ModelAngleOffset = Angle(0, 0, 0)
    ATT.MuzzleDevice = true
    ATT.RecoilMult = 0.9
    ATT.RecoilRandomSideMult = 0.85
    ATT.SpeedMultShooting = 0.9
    ATT.SwayMult = 1.15
    ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"

    ARC9.LoadAttachment(ATT, "uc_muzzle_brake2")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_muzzle_compensator")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_uc_muzzle_compensator.png", "mips smooth")
    ATT.Category = {"muzzle"}
    ATT.SortOrder = 100
    ATT.Model = "models/weapons/arccw/atts/uc_muzzle5.mdl"
    ATT.ModelOffset = Vector(2.0, 0, 0)
    ATT.Scale = 0.85
    ATT.ModelAngleOffset = Angle(0, 0, 0)
    ATT.MuzzleDevice = true
    ATT.RecoilRandomSideMult = 0.75
    ATT.SpeedMultShooting = 0.9
    ATT.SwayMult = 1.15
    ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"

    ARC9.LoadAttachment(ATT, "uc_muzzle_compensator")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_muzzle_fhider1")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.flashhider"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_uc_muzzle_fhider1.png", "mips smooth")
    ATT.Category = {"muzzle"}
    ATT.SortOrder = 50
    ATT.Model = "models/weapons/arccw/atts/uc_muzzle1.mdl"
    ATT.ModelOffset = Vector(2.05, 0, 0)
    ATT.Scale = 0.8
    ATT.ModelAngleOffset = Angle(0, 0, 0)
    ATT.MuzzleParticle = "uc_muzzleflash_suppressed"
    ATT.MuzzleDevice = true
    ATT.UC_HipDispersionMult = 0.9
    ATT.UC_MoveDispersionMult = 0.9
    ATT.SpeedMultShooting = 0.9
    ATT.SwayMult = 1.15
    ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"

    ARC9.LoadAttachment(ATT, "uc_muzzle_fhider1")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_muzzle_fhider2")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.flashhider"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_uc_muzzle_fhider2.png", "mips smooth")
    ATT.Category = {"muzzle"}
    ATT.SortOrder = 50
    ATT.Model = "models/weapons/arccw/atts/uc_muzzle4.mdl"
    ATT.ModelOffset = Vector(2.2, 0, 0)
    ATT.Scale = 0.95
    ATT.ModelAngleOffset = Angle(0, 0, 0)
    ATT.MuzzleParticle = "uc_muzzleflash_suppressed"
    ATT.MuzzleDevice = true
    ATT.RecoilRandomSideMult = 0.85
    ATT.UC_HipDispersionMult = 0.9
    ATT.SpeedMultShooting = 0.9
    ATT.SwayMult = 1.15
    ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"

    ARC9.LoadAttachment(ATT, "uc_muzzle_fhider2")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_muzzle_supp_cylinder")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"muzzleblocking"}
    ATT.ExcludeElements = {"nomuzzleblocking"}

    ATT.Icon = Material("entities/att/acwatt_uc_muzzle_supp_cylinder.png", "mips smooth")
    ATT.Category = {"muzzle_shotgun","muzzle"}
    ATT.SortOrder = 150
    ATT.Model = "models/weapons/arccw/atts/ud_silencer_870.mdl"
    ATT.ModelOffset = Vector(-1, 0, 0)
    ATT.ModelAngleOffset = Angle(0, 0, 0)
    ATT.Silencer = true
    ATT.MuzzleParticle = "uc_muzzleflash_suppressed"
    ATT.MuzzleDevice = true
    ATT.ShootPitchMult = 1.1
    ATT.ShootVolumeMult = 0.75
    ATT.BarrelLengthAdd = 6
    ATT.AimDownSightsTimeMult = 1.15
    ATT.SprintToFireTimeMult = 1.15
    ATT.UC_HipDispersionMult = 1.2
    ATT.SwayMult = 1.15
    ATT.RangeMaxMult = 1.1
    ATT.RangeMinMult = 1.1
    ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
    ATT.UC_Compatible = function(wep)
        if !ARC9.UC.IsShotgun(wep) then
            return false
        end
    end

    ARC9.LoadAttachment(ATT, "uc_muzzle_supp_cylinder")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_muzzle_supp_ga9")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_uc_muzzle_supp_ga9.png", "mips smooth")
    ATT.Category = {"muzzle"}
    ATT.SortOrder = 150
    ATT.Model = "models/weapons/arccw/atts/uc_ga_revolution9.mdl"
    ATT.ModelOffset = Vector(2.6, 0, 0)
    ATT.Scale = 1.15
    ATT.ModelAngleOffset = Angle(0, 0, 0)
    ATT.Silencer = true
    ATT.MuzzleParticle = "uc_muzzleflash_suppressed"
    ATT.MuzzleDevice = true
    ATT.ShootPitchMult = 1.1
    ATT.ShootVolumeMult = 0.75
    ATT.RangeMaxMult = 0.9
    ATT.RangeMinMult = 0.9
    ATT.BarrelLengthAdd = 5
    ATT.AimDownSightsTimeMult = 1.07
    ATT.SprintToFireTimeMult = 1.07
    ATT.SwayMult = 1.1
    ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
    ATT.UC_Compatible = function(wep,data)
        if !ARC9.UC.PistolAmmoTypes[ARC9.UC.GetAmmoType(wep)] then
            return false
        end
    end
    ATT.HookP_TranslateSound = ARC9.UC.SubsonicTail

    ARC9.LoadAttachment(ATT, "uc_muzzle_supp_ga9")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_muzzle_supp_giraffe")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_uc_muzzle_supp_giraffe.png", "mips smooth")
    ATT.Category = {"muzzle"}
    ATT.SortOrder = 150
    ATT.Model = "models/weapons/arccw/atts/uc_longass_silencer.mdl"
    ATT.ModelOffset = Vector(2.1, 0, 0.00)
    ATT.Scale = Vector(0.9, 1.25, 1.25)
    ATT.ModelAngleOffset = Angle(0, 0, 0)
    ATT.Silencer = true
    ATT.MuzzleParticle = "uc_muzzleflash_suppressed"
    ATT.MuzzleDevice = true
    ATT.ShootPitchMult = 1.1
    ATT.ShootVolumeMult = 0.7
    ATT.RangeMaxMult = 1.2
    ATT.RangeMinMult = 1.2
    ATT.BarrelLengthAdd = 10
    ATT.AimDownSightsTimeMult = 1.15
    ATT.SprintToFireTimeMult = 1.15
    ATT.SpeedMultSights = 0.9
    ATT.SwayMult = 1.15
    ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
    ATT.HookP_TranslateSound = ARC9.UC.SubsonicTail

    ARC9.LoadAttachment(ATT, "uc_muzzle_supp_giraffe")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_muzzle_supp_lighthouse")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_uc_muzzle_supp_lighthouse.png", "mips smooth")
    ATT.Category = {"muzzle"}
    ATT.SortOrder = 150
    ATT.Model = "models/weapons/arccw/atts/ud_silencer_light.mdl"
    ATT.ModelOffset = Vector(-0.25, 0, 0)
    ATT.UC_ModelAngleOffset = Angle(0, 180, 0)
    ATT.ModelAngleOffset = ARC9.UC.AttachmentAngle(ATT.UC_ModelAngleOffset)
    ATT.Silencer = true
    ATT.MuzzleParticle = "uc_muzzleflash_suppressed"
    ATT.MuzzleDevice = true
    ATT.ShootPitchMult = 1.1
    ATT.ShootVolumeMult = 0.75
    ATT.RangeMaxMult = 0.85
    ATT.RangeMinMult = 1.75 * 0.85
    ATT.BarrelLengthAdd = 5
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.SwayMult = 1.15
    ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
    ATT.UC_Compatible = function(wep,data)
        if !ARC9.UC.RifleAmmoTypes[ARC9.UC.GetAmmoType(wep)] then
            return false
        end
    end
    ATT.HookP_TranslateSound = ARC9.UC.SubsonicTail

    ARC9.LoadAttachment(ATT, "uc_muzzle_supp_lighthouse")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_muzzle_supp_masada")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_uc_muzzle_supp_masada.png", "mips smooth")
    ATT.Category = {"muzzle"}
    ATT.SortOrder = 150
    ATT.Model = "models/weapons/arccw/atts/uc_magpul_masada.mdl"
    ATT.ModelOffset = Vector(2.65, 0, 0)
    ATT.Scale = 1.15
    ATT.ModelAngleOffset = Angle(0, 0, 0)
    ATT.Silencer = true
    ATT.MuzzleParticle = "uc_muzzleflash_suppressed"
    ATT.MuzzleDevice = true
    ATT.ShootPitchMult = 1.1
    ATT.ShootVolumeMult = 0.75
    ATT.RecoilMult = .9
    ATT.BarrelLengthAdd = 5
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.SwayMult = 1.15
    ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
    ATT.HookP_TranslateSound = ARC9.UC.SubsonicTail

    ARC9.LoadAttachment(ATT, "uc_muzzle_supp_masada")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_muzzle_supp_pbs1")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_uc_muzzle_supp_pbs1.png", "mips smooth")
    ATT.Category = {"ur_ak_muzzle"}
    ATT.SortOrder = 149
    ATT.Model = "models/weapons/arccw/atts/uc_pbs1.mdl"
    ATT.ModelOffset = Vector(2.9, 0, 0)
    ATT.Scale = 1.3
    ATT.ModelAngleOffset = Angle(0, 0, 0)
    ATT.Silencer = true
    ATT.MuzzleParticle = "uc_muzzleflash_suppressed"
    ATT.MuzzleDevice = true
    ATT.ShootPitchMult = 1.1
    ATT.ShootVolumeMult = 0.75
    ATT.RecoilRandomSideMult = 0.75
    ATT.BarrelLengthAdd = 5
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.SwayMult = 1.15
    ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
    ATT.UC_Compatible = function(wep)
        if ARC9.UC.GetAmmoType(wep) != "ar2" then
            return false
        end
    end
    ATT.HookP_TranslateSound = ARC9.UC.SubsonicTail

    ARC9.LoadAttachment(ATT, "uc_muzzle_supp_pbs1")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_muzzle_supp_pbs4")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_uc_muzzle_supp_pbs4.png", "mips smooth")
    ATT.Category = {"ur_ak_muzzle"}
    ATT.SortOrder = 149
    ATT.Model = "models/weapons/arccw/atts/uc_pbs4.mdl"
    ATT.ModelOffset = Vector(2.9, 0, 0)
    ATT.Scale = 1.3
    ATT.ModelAngleOffset = Angle(0, 0, 0)
    ATT.Silencer = true
    ATT.MuzzleParticle = "uc_muzzleflash_suppressed"
    ATT.MuzzleDevice = true
    ATT.ShootPitchMult = 1.1
    ATT.ShootVolumeMult = 0.75
    ATT.SpreadMult = 0.75
    ATT.BarrelLengthAdd = 5
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.SwayMult = 1.15
    ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
    ATT.UC_Compatible = function(wep)
        if ARC9.UC.GetAmmoType(wep) != "smg1" then
            return false
        end
    end
    ATT.HookP_TranslateSound = ARC9.UC.SubsonicTail

    ARC9.LoadAttachment(ATT, "uc_muzzle_supp_pbs4")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_muzzle_supp_salvo")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"muzzleblocking"}
    ATT.ExcludeElements = {"nomuzzleblocking"}

    ATT.Icon = Material("entities/att/acwatt_uc_muzzle_supp_salvo.png", "mips smooth")
    ATT.Category = {"muzzle_shotgun","muzzle"}
    ATT.SortOrder = 150
    ATT.Model = "models/weapons/arccw/atts/ud_silencer_salvo.mdl"
    ATT.ModelOffset = Vector(-1, 0, -0.12)
    ATT.ModelAngleOffset = Angle(0, 0, 0)
    ATT.Silencer = true
    ATT.MuzzleParticle = "uc_muzzleflash_suppressed"
    ATT.MuzzleDevice = true
    ATT.ShootPitchMult = 1.05
    ATT.ShootVolumeMult = 0.8
    ATT.BarrelLengthAdd = 8
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.UC_HipDispersionMult = 1.1
    ATT.SwayMult = 1.15
    ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
    ATT.UC_Compatible = function(wep)
        if !ARC9.UC.IsShotgun(wep) then
            return false
        end
    end

    ARC9.LoadAttachment(ATT, "uc_muzzle_supp_salvo")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_muzzle_supp_ssq")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_uc_muzzle_supp_ssq.png", "mips smooth")
    ATT.Category = {"muzzle"}
    ATT.SortOrder = 150
    ATT.Model = "models/weapons/arccw/atts/ud_silencer_ssq.mdl"
    ATT.ModelOffset = Vector(0.5, 0, 0.0)
    ATT.Scale = 0.8
    ATT.ModelAngleOffset = Angle(0, 0, 0)
    ATT.Silencer = true
    ATT.MuzzleParticle = "uc_muzzleflash_suppressed"
    ATT.MuzzleDevice = true
    ATT.ShootPitchMult = 1.1
    ATT.ShootVolumeMult = 0.75
    ATT.RangeMaxMult = 1.25
    ATT.RangeMinMult = 1.25
    ATT.BarrelLengthAdd = 5
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.SwayMult = 1.15
    ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
    ATT.UC_Compatible = function(wep,data)
        if !ARC9.UC.PistolAmmoTypes[ARC9.UC.GetAmmoType(wep)] or ARC9.UC.GetMuzzleVelocity(wep) > ARC9.UC.SubsonicThreshold then
            return false
        end
    end
    ATT.HookP_TranslateSound = ARC9.UC.NoDistantTail

    ARC9.LoadAttachment(ATT, "uc_muzzle_supp_ssq")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_muzzle_supp_tac")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_uc_muzzle_supp_tactical.png", "mips smooth")
    ATT.Category = {"muzzle"}
    ATT.SortOrder = 150
    ATT.Model = "models/weapons/arccw/atts/ud_silencer_tactical.mdl"
    ATT.ModelOffset = Vector(2.25, 0, 0)
    ATT.ModelAngleOffset = Angle(0, 0, 0)
    ATT.Silencer = true
    ATT.MuzzleParticle = "uc_muzzleflash_suppressed"
    ATT.MuzzleDevice = true
    ATT.ShootPitchMult = 1.1
    ATT.ShootVolumeMult = 0.75
    ATT.RangeMaxMult = 1.1
    ATT.RangeMinMult = 1.1
    ATT.BarrelLengthAdd = 4
    ATT.AimDownSightsTimeMult = 1.07
    ATT.SprintToFireTimeMult = 1.07
    ATT.SwayMult = 1.15
    ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
    ATT.UC_Compatible = function(wep,data)
        if !ARC9.UC.RifleAmmoTypes[ARC9.UC.GetAmmoType(wep)] then
            return false
        end
    end
    ATT.HookP_TranslateSound = ARC9.UC.SubsonicTail

    ARC9.LoadAttachment(ATT, "uc_muzzle_supp_tac")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_muzzle_supp_tgpa")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_uc_muzzle_supp_tgpa.png", "mips smooth")
    ATT.Category = {"ur_ak_muzzle"}
    ATT.SortOrder = 149
    ATT.Model = "models/weapons/arccw/atts/uc_tgpa.mdl"
    ATT.ModelOffset = Vector(2.6, 0, 0)
    ATT.Scale = 1.15
    ATT.ModelAngleOffset = Angle(0, 0, 0)
    ATT.Silencer = true
    ATT.MuzzleParticle = "uc_muzzleflash_suppressed"
    ATT.MuzzleDevice = true
    ATT.ShootPitchMult = 1.1
    ATT.ShootVolumeMult = 0.75
    ATT.BarrelLengthAdd = 5
    ATT.RangeMaxMult = 0.9
    ATT.RangeMinMult = 0.9
    ATT.AimDownSightsTimeMult = 1.07
    ATT.SprintToFireTimeMult = 1.07
    ATT.SwayMult = 1.15
    ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
    ATT.UC_Compatible = function(wep)
        if ARC9.UC.GetAmmoType(wep) != "smg1" then
            return false
        end
    end
    ATT.HookP_TranslateSound = ARC9.UC.SubsonicTail

    ARC9.LoadAttachment(ATT, "uc_muzzle_supp_tgpa")
end
