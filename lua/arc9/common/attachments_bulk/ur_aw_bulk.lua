do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_aw_barrel_long.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_aw_barrel_long.compactname")
    ATT.Icon = Material("entities/att/ur_aw/bar_long.png", "mips smooth")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_aw_barrel_long.printname.variant1") end
    ATT.SortOrder = 27
    ATT.Description = ARC9:GetPhrase("ur_aw_barrel_long.description")
    ATT.Category = "ur_aw_barrel"
    ATT.RangeMaxMult = 1.1
    ATT.RecoilMult = .8
    ATT.AimDownSightsTimeMult = 1.15
    ATT.SprintToFireTimeMult = 1.15
    ATT.SwayMult = 1.25
    ATT.BarrelLengthAdd = 3
    ATT.RangeMinMult = 1.1
    ATT.ActivateElements = {"ur_aw_barrel_long", "barrel_long"}

    ARC9.LoadAttachment(ATT, "ur_aw_barrel_long")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_aw_barrel_sd.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_aw_barrel_sd.compactname")
    ATT.Icon = Material("entities/att/ur_aw/bar_sup.png", "mips smooth")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_aw_barrel_sd.printname.variant1") end
    ATT.SortOrder = 28
    ATT.Description = ARC9:GetPhrase("ur_aw_barrel_sd.description")
    ATT.CustomCons = {
        ["uc.nomuzzle"] = "",
    }

    ATT.Category = "ur_aw_barrel"
    ATT.Silencer = true
    ATT.MuzzleParticle = "uc_muzzleflash_suppressed"
    ATT.ShootPitchMult = 1.1
    ATT.ShootVolumeMult = 0.6
    ATT.RangeMaxMult = .85
    ATT.BarrelLengthAdd = 3
    ATT.SpeedMultSights = 0.85
    ATT.ExcludeElements = {"mag_338", "mag_300"}
    ATT.RangeMinMult = .85
    ATT.ActivateElements = {"ur_aw_barrel_sd", "barrel_sd"}

    ARC9.LoadAttachment(ATT, "ur_aw_barrel_sd")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_aw_barrel_short.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_aw_barrel_short.compactname")
    ATT.Icon = Material("entities/att/ur_aw/bar_short.png", "mips smooth")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_aw_barrel_short.printname.variant1") end
    ATT.SortOrder = 20
    ATT.Description = ARC9:GetPhrase("ur_aw_barrel_short.description")
    ATT.Category = "ur_aw_barrel"
    ATT.AimDownSightsTimeMult = 0.75
    ATT.SprintToFireTimeMult = 0.75
    ATT.SwayMult = 0.5
    ATT.UC_HipDispersionMult = 0.5
    ATT.SpeedMult = 1.05
    ATT.BarrelLengthAdd = -4
    ATT.RangeMaxMult = 0.3
    ATT.SpreadMult = 4
    ATT.RecoilMult = 1.25
    ATT.RangeMinMult = 0.3
    ATT.ActivateElements = {"ur_aw_barrel_short", "barrel_short"}

    ARC9.LoadAttachment(ATT, "ur_aw_barrel_short")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_aw_cal_300.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_aw_cal_300.compactname")
    ATT.Icon = Material("entities/att/uc_bullets/300winchester.png", "mips smooth")
    ATT.Description = ARC9:GetPhrase("ur_aw_cal_300.description")
    ATT.Category = "ur_aw_cal"
    ATT.DamageMaxMult = 50 / 80
    ATT.DamageMinMult = 90 / 50
    ATT.RangeMax = 50 * ARC9.UC.Meter
    ATT.RangeMin = 10 * ARC9.UC.Meter
    ATT.PhysBulletMuzzleVelocityMult = 1000 / 850
    ATT.PenetrationMult = 1.25
    ATT.RecoilMult = 1.5
    ATT.ReloadTimeMult = 5.55 / 5.15
    ATT.SpeedMultShooting = 0.9
    local path = ")weapons/arccw_ur/aw_placeholders/338/"
    local path1 = ")weapons/arccw_ur/aw_placeholders/"
    local fire300 = {path .. "fire-300-01.ogg", path .. "fire-300-02.ogg", path .. "fire-300-03.ogg", path .. "fire-300-04.ogg", path .. "fire-300-05.ogg", path .. "fire-300-06.ogg"}
    local fire300sup = {path1 .. "fire-sup-01.ogg", path1 .. "fire-sup-02.ogg", path1 .. "fire-sup-03.ogg", path1 .. "fire-sup-04.ogg", path1 .. "fire-sup-05.ogg", path1 .. "fire-sup-06.ogg"}
    local tail = ")/arccw_uc/common/338lm/"
    local fire338dist = {tail .. "fire-dist-338lm-rif-ext-01.ogg", tail .. "fire-dist-338lm-rif-ext-02.ogg", tail .. "fire-dist-338lm-rif-ext-03.ogg", tail .. "fire-dist-338lm-rif-ext-04.ogg", tail .. "fire-dist-338lm-rif-ext-05.ogg", tail .. "fire-dist-338lm-rif-ext-06.ogg"}
    local fire338distint = {tail .. "fire-dist-338lm-rif-int-01.ogg", tail .. "fire-dist-338lm-rif-int-02.ogg", tail .. "fire-dist-338lm-rif-int-03.ogg", tail .. "fire-dist-338lm-rif-int-04.ogg", tail .. "fire-dist-338lm-rif-int-05.ogg", tail .. "fire-dist-338lm-rif-int-06.ogg"}
    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "ur_aw_cal_300.calibre")
    ATT.ShellModel = "models/weapons/arccw/ud_shells/338.mdl"
    ATT.Ammo = "SniperPenetratedRound"
    ATT.ActivateElements = {"ur_aw_cal_300", "mag_300"}
    ATT.ShootSoundHook = function(wep, sound)
        if wep:GetUBGL() then return end
        if wep:GetValue("Silencer") then
            return fire300sup
        else
            return fire300
        end
    end

    ATT.ShootSoundSilencedHook = ATT.ShootSoundHook
    ATT.DistantShootSoundHook = function(wep, distancesound)
        if wep:GetUBGL() then return end
        if not wep:GetValue("Silencer") then return fire338dist end
    end

    ATT.DistantShootSoundIndoorHook = function(wep, distancesound)
        if wep:GetUBGL() then return end
        if not wep:GetValue("Silencer") then return fire338distint end
    end

    ATT.UC_RampRangeMin = 10 * ARC9.UC.Meter
    ATT.UC_RampRangeMax = 50 * ARC9.UC.Meter

    ARC9.LoadAttachment(ATT, "ur_aw_cal_300")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_aw_cal_338.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_aw_cal_338.compactname")
    ATT.Icon = Material("entities/att/uc_bullets/338lapua.png", "mips smooth")
    ATT.Description = ARC9:GetPhrase("ur_aw_cal_338.description")
    ATT.Category = "ur_aw_cal"
    ATT.CustomCons = {
        ["ur_aw_cal_338.cons0"] = "",
    }

    ATT.DamageMinMult = 160 / 50
    ATT.RangeMax = 100 * ARC9.UC.Meter
    ATT.RangeMin = 20 * ARC9.UC.Meter
    ATT.PhysBulletMuzzleVelocityMult = 950 / 850
    ATT.PenetrationMult = 2
    ATT.RecoilMult = 2
    ATT.CycleTimeMult = 1.24
    ATT.ReloadTimeMult = 5.55 / 5.15
    ATT.SpeedMultShooting = 0.8
    local path = ")weapons/arccw_ur/aw_placeholders/338/"
    local path1 = ")weapons/arccw_ur/aw_placeholders/"
    local fire338 = {path .. "fire-01.ogg", path .. "fire-02.ogg", path .. "fire-03.ogg", path .. "fire-04.ogg", path .. "fire-05.ogg", path .. "fire-06.ogg"}
    local fire338sup = {path1 .. "fire-sup-01.ogg", path1 .. "fire-sup-02.ogg", path1 .. "fire-sup-03.ogg", path1 .. "fire-sup-04.ogg", path1 .. "fire-sup-05.ogg", path1 .. "fire-sup-06.ogg"}
    local tail = ")/arccw_uc/common/338lm/"
    local fire338dist = {tail .. "fire-dist-338lm-rif-ext-01.ogg", tail .. "fire-dist-338lm-rif-ext-02.ogg", tail .. "fire-dist-338lm-rif-ext-03.ogg", tail .. "fire-dist-338lm-rif-ext-04.ogg", tail .. "fire-dist-338lm-rif-ext-05.ogg", tail .. "fire-dist-338lm-rif-ext-06.ogg"}
    local fire338distint = {tail .. "fire-dist-338lm-rif-int-01.ogg", tail .. "fire-dist-338lm-rif-int-02.ogg", tail .. "fire-dist-338lm-rif-int-03.ogg", tail .. "fire-dist-338lm-rif-int-04.ogg", tail .. "fire-dist-338lm-rif-int-05.ogg", tail .. "fire-dist-338lm-rif-int-06.ogg"}
    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "ur_aw_cal_338.calibre")
    ATT.ShellSounds = ARC9.ShellSoundsTable
    ATT.ShellModel = "models/weapons/arccw/ud_shells/338.mdl"
    ATT.Ammo = "SniperPenetratedRound"
    ATT.ActivateElements = {"ur_aw_cal_338", "mag_338"}
    ATT.ShootSoundHook = function(wep, sound)
        if wep:GetUBGL() then return end
        if wep:GetValue("Silencer") then
            return fire338sup
        else
            return fire338
        end
    end

    ATT.ShootSoundSilencedHook = ATT.ShootSoundHook
    ATT.DistantShootSoundHook = function(wep, distancesound)
        if wep:GetUBGL() then return end
        if not wep:GetValue("Silencer") then return fire338dist end
    end

    ATT.DistantShootSoundIndoorHook = function(wep, distancesound)
        if wep:GetUBGL() then return end
        if not wep:GetValue("Silencer") then return fire338distint end
    end

    ATT.UC_RampRangeMin = 20 * ARC9.UC.Meter
    ATT.UC_RampRangeMax = 100 * ARC9.UC.Meter
    ATT.UC_DefaultSlots = {
        [5] = {
            Name = "ur.aw.defaultname5",
            Icon = Material("entities/att/ur_aw/mag338_5.png", "mips smooth")
        },
    }

    ARC9.LoadAttachment(ATT, "ur_aw_cal_338")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_aw_mag_10.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_aw_mag_10.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_aw_mag_10.printname.variant1") end
    ATT.SortOrder = 10
    ATT.Icon = Material("entities/att/ur_aw/mag308_10.png", "mips smooth")
    ATT.Description = ARC9:GetPhrase("ur_aw_mag_10.description")
    ATT.Category = "ur_aw_mag"
    ATT.ClipSize = 10
    ATT.AimDownSightsTimeMult = 1.25
    ATT.SprintToFireTimeMult = 1.25
    ATT.ReloadTimeMult = 5.675 / 5.15
    ATT.SwayMult = 1.25
    ATT.SpeedMult = 0.975
    ATT.SpeedMultShooting = 0.95
    ATT.UC_HipDispersionMult = 1.25
    ATT.ExcludeElements = {"mag_338", "mag_300"}
    ATT.ActivateElements = {"ur_aw_mag_10", "mag_ext"}

    ARC9.LoadAttachment(ATT, "ur_aw_mag_10")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_aw_mag_10m.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_aw_mag_10m.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_aw_mag_10m.printname.variant1") end
    ATT.SortOrder = 10
    ATT.Icon = Material("entities/att/ur_aw/mag338_10.png", "mips smooth")
    ATT.Description = ARC9:GetPhrase("ur_aw_mag_10m.description")
    ATT.Category = "ur_aw_mag"
    ATT.ClipSize = 10
    ATT.AimDownSightsTimeMult = 1.25
    ATT.SprintToFireTimeMult = 1.25
    ATT.ReloadTimeMult = 6 / 5.55
    ATT.SwayMult = 1.25
    ATT.SpeedMult = 0.975
    ATT.SpeedMultShooting = 0.95
    ATT.UC_HipDispersionMult = 1.25
    ATT.RequireElements = {"mag_300"}
    ATT.ExcludeElements = {"mag_308"}
    ATT.ActivateElements = {"ur_aw_mag_10m", "mag_ext_338"}

    ARC9.LoadAttachment(ATT, "ur_aw_mag_10m")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_aw_muzzle_brake.printname")
    ATT.Icon = Material("entities/att/ur_aw/muzzle.png", "mips smooth")
    ATT.Description = ARC9:GetPhrase("ur_aw_muzzle_brake.description")
    ATT.Category = {"ur_aw_muzzle"}
    ATT.RecoilMult = .9
    ATT.RecoilRandomSideMult = .9
    ATT.BarrelLengthAdd = 2
    ATT.AimDownSightsTimeMult = 1.05
    ATT.SprintToFireTimeMult = 1.05
    ATT.SwayMult = 1.05
    ATT.SortOrder = 999
    ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
    ATT.Model = "models/weapons/arccw/ur_aw_muzzle.mdl"
    ATT.Scale = 2 / 3
    ATT.ModelOffset = Vector(0, 0, -.075)
    ATT.ActivateElements = {"ur_aw_muzzle_brake"}

    ARC9.LoadAttachment(ATT, "ur_aw_muzzle_brake")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_aw_muzzle_brake_sights.printname")
    ATT.Icon = Material("entities/att/ur_aw/muzzle_sights.png", "mips smooth")
    ATT.Description = ARC9:GetPhrase("ur_aw_muzzle_brake_sights.description")
    ATT.Category = {"ur_aw_muzzle"}
    ATT.RecoilMult = .9
    ATT.RecoilRandomSideMult = .9
    ATT.BarrelLengthAdd = 2
    ATT.AimDownSightsTimeMult = 1.05
    ATT.SprintToFireTimeMult = 1.05
    ATT.SwayMult = 1.05
    ATT.SortOrder = 998
    ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
    ATT.Model = "models/weapons/arccw/ur_aw_muzzlesight.mdl"
    ATT.Scale = 2 / 3
    ATT.ModelOffset = Vector(0, 0, -.075)
    ATT.ActivateElements = {"ur_aw_muzzle_brake_sights", "sights_compact"}

    ARC9.LoadAttachment(ATT, "ur_aw_muzzle_brake_sights")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_aw_skin_black.printname")
    ATT.Icon = Material("entities/att/ur_aw/skin_black.png", "mips smooth")
    ATT.Description = ARC9:GetPhrase("ur_aw_skin_black.description")
    ATT.Category = "ur_aw_skin"
    ATT.CustomPros = {
        ["uc.cosmetic"] = "",
    }

    ATT.SortOrder = 2
    ATT.Free = true
    ATT.ActivateElements = {"ur_aw_skin_black", "skin_black"}

    ARC9.LoadAttachment(ATT, "ur_aw_skin_black")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_aw_skin_custom.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_aw_skin_custom.compactname")
    ATT.Icon = Material("entities/att/ur_aw/skin_rainbow.png", "mips smooth")
    ATT.Description = ARC9:GetPhrase("ur_aw_skin_custom.description")
    ATT.Category = "ur_aw_skin"
    ATT.CustomPros = {
        ["uc.cosmetic"] = "",
        ["uc.custcolor"] = "",
    }

    ATT.SortOrder = 1
    ATT.Free = true
    ATT.ActivateElements = {"ur_aw_skin_custom", "skin_cust"}

    ARC9.LoadAttachment(ATT, "ur_aw_skin_custom")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_aw_skin_tan.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_aw_skin_tan.compactname")
    ATT.Icon = Material("entities/att/ur_aw/skin_tan.png", "mips smooth")
    ATT.Description = ARC9:GetPhrase("ur_aw_skin_tan.description")
    ATT.Category = "ur_aw_skin"
    ATT.CustomPros = {
        ["uc.cosmetic"] = "",
    }

    ATT.SortOrder = 1
    ATT.Free = true
    ATT.ActivateElements = {"ur_aw_skin_tan", "skin_tan"}

    ARC9.LoadAttachment(ATT, "ur_aw_skin_tan")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_aw_stock_at.printname")
    ATT.Description = ARC9:GetPhrase("ur_aw_stock_at.description")
    ATT.Icon = Material("entities/att/ur_aw/stock_at.png", "mips smooth")
    ATT.Category = {"ur_aw_stock"}
    ATT.SortOrder = 3
    ATT.AimDownSightsTimeMult = .85
    ATT.SprintToFireTimeMult = .85
    ATT.SwayMult = 1.25
    ATT.RecoilMult = 1.1
    ATT.ActivateElements = {"ur_aw_stock_at", "pistolgrip", "stock_at"}

    ARC9.LoadAttachment(ATT, "ur_aw_stock_at")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_aw_stock_fixed.printname")
    ATT.Description = ARC9:GetPhrase("ur_aw_stock_fixed.description")
    ATT.Icon = Material("entities/att/ur_aw/stock_nonfold.png", "mips smooth")
    ATT.Category = {"ur_aw_stock"}
    ATT.SortOrder = 3
    ATT.SwayMult = .85
    ATT.ActivateElements = {"ur_aw_stock_fixed", "stock_fixed"}
    ATT.UC_DrawTimeMult = 1.2

    ARC9.LoadAttachment(ATT, "ur_aw_stock_fixed")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_aw_stock_none.printname")
    ATT.Description = ARC9:GetPhrase("ur_aw_stock_none.description")
    ATT.Icon = Material("entities/att/ur_aw/stock_removed.png", "mips smooth")
    ATT.Category = {"ur_aw_stock"}
    ATT.Free = true
    ATT.SortOrder = -1
    ATT.AimDownSightsTimeMult = 0.75
    ATT.SprintToFireTimeMult = 0.75
    ATT.RecoilMult = 2.5
    ATT.RecoilRandomSideMult = 1.55
    ATT.SpeedMultSights = 1.25
    ATT.SpeedMult = 1.1
    ATT.SpeedMultShooting = 1.15
    ATT.BarrelLengthAdd = -9
    ATT.SwayMult = 3.5
    ATT.ActivateElements = {"ur_aw_stock_none", "pistolgrip", "stock_none"}
    ATT.DeployTimeMult = 0.6

    ARC9.LoadAttachment(ATT, "ur_aw_stock_none")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_aw_stock_ru.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_aw_stock_ru.compactname")
    ATT.Icon = Material("entities/att/ur_aw/stock_ru.png", "mips smooth")
    if ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_aw_stock_ru.printname.variant1") end
    ATT.Description = ARC9:GetPhrase("ur_aw_stock_ru.description")
    ATT.Category = {"ur_aw_stock"}
    ATT.SortOrder = 2.1
    ATT.SpeedMult = 1.08
    ATT.UC_MoveDispersionMult = .6
    ATT.AimDownSightsTimeMult = .9
    ATT.SprintToFireTimeMult = .9
    ATT.SwayMult = 1.5
    ATT.RecoilRandomSideMult = 1.5
    ATT.ActivateElements = {"ur_aw_stock_ru", "pistolgrip", "stock_ru"}

    ARC9.LoadAttachment(ATT, "ur_aw_stock_ru")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_aw_stock_ru_rubber.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_aw_stock_ru_rubber.compactname")
    ATT.Icon = Material("entities/att/ur_aw/stock_rurubber.png", "mips smooth")
    if ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_aw_stock_ru_rubber.printname.variant1") end
    ATT.Description = ARC9:GetPhrase("ur_aw_stock_ru_rubber.description")
    ATT.Category = {"ur_aw_stock"}
    ATT.SortOrder = 2
    ATT.UC_MoveDispersionMult = .6
    ATT.SwayMult = 1.25
    ATT.RecoilRandomSideMult = 1.2
    ATT.ActivateElements = {"ur_aw_stock_ru_rubber", "pistolgrip", "stock_ru_rubber"}

    ARC9.LoadAttachment(ATT, "ur_aw_stock_ru_rubber")
end
