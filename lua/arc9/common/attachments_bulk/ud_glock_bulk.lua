do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_glock_caliber_10auto")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.SortOrder = 80
    ATT.Icon = Material("entities/att/uc_bullets/10.png", "smooth mips")
    ATT.Category = "ud_glock_caliber"
    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.10mm_auto")
    ATT.DamageMaxMult = ARC9.UC.CalConv("9mm", "10mm", "max")
    ATT.DamageMinMult = ARC9.UC.CalConv("9mm", "10mm", "min")
    ATT.PenetrationMult = ARC9.UC.CalConv("9mm", "10mm", "pen")
    ATT.RecoilMult = 1.25
    ATT.RecoilRandomSideMult = 1.25
    ATT.ReloadTimeMult = 1.15
    ATT.MalfunctionMeanShotsToFailMult = 0.75
    ATT.PhysBulletMuzzleVelocityMult = 400 / 375
    ATT.ClipSizeMult = 0.9
    ATT.ShellScale = 1
    local path = ")weapons/arccw_ud/glock/"
    local common = ")/arccw_uc/common/"
    local tail = common .. "10x25/"
    local fire10 = {path .. "fire-10-01.ogg",path .. "fire-10-02.ogg",path .. "fire-10-03.ogg",path .. "fire-10-04.ogg",path .. "fire-10-05.ogg",path .. "fire-10-06.ogg"}
    local fire10sup = {path .. "fire-40-sup-01.ogg",path .. "fire-40-sup-02.ogg",path .. "fire-40-sup-03.ogg",path .. "fire-40-sup-04.ogg",path .. "fire-40-sup-05.ogg",path .. "fire-40-sup-06.ogg"}
    local fire10dist = {tail .. "fire-dist-10x25-pistol-ext-01.ogg", tail .. "fire-dist-10x25-pistol-ext-02.ogg", tail .. "fire-dist-10x25-pistol-ext-03.ogg", tail .. "fire-dist-10x25-pistol-ext-04.ogg", tail .. "fire-dist-10x25-pistol-ext-05.ogg", tail .. "fire-dist-10x25-pistol-ext-06.ogg"}
    local fire10distint = {common .. "fire-dist-int-pistol-heavy-01.ogg", common .. "fire-dist-int-pistol-heavy-02.ogg", common .. "fire-dist-int-pistol-heavy-03.ogg", common .. "fire-dist-int-pistol-heavy-04.ogg", common .. "fire-dist-int-pistol-heavy-05.ogg", common .. "fire-dist-int-pistol-heavy-06.ogg"}
    ATT.ShootSoundSilenced = fire10sup
    ATT.ShootSound = fire10
    ATT.DistantShootSound = fire10dist
    ATT.DistantShootSoundIndoor = fire10distint

    ARC9.LoadAttachment(ATT, "ud_glock_caliber_10auto")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_glock_caliber_22lr")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.SortOrder = 00
    ATT.Icon = Material("entities/att/uc_bullets/22lr.png", "smooth mips")
    ATT.Category = "ud_glock_caliber"
    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.22_long_rifle")
    ATT.Ammo = "plinking"
    ATT.DamageMaxMult = ARC9.UC.CalConv("9mm", "22lr", "max")
    ATT.DamageMinMult = ARC9.UC.CalConv("9mm", "22lr", "min")
    ATT.PenetrationMult = 0.1
    ATT.RecoilMult = 0.25
    ATT.VisualRecoilMult = 0.25
    ATT.RPMMult = 1.5
    ATT.SpeedMultShooting = 1.2
    ATT.TracerColor = Color(255, 255, 255, 200)
    ATT.TracerSize = 0.5
    ATT.PhysBulletMuzzleVelocityMult = 325 / 375
    ATT.ClipSizeMult = 1.2
    ATT.ShellModel = "models/weapons/arc9/uc/uc_shells/22lr.mdl"
    ATT.ShellScale = 1
    ATT.ShellSounds = ARC9.TinyShellSoundsTable
    local path = "arccw_uc/common/"
    local fire22 = {path .. "fire-22-01.ogg",path .. "fire-22-02.ogg",path .. "fire-22-03.ogg",path .. "fire-22-04.ogg",path .. "fire-22-05.ogg",path .. "fire-22-06.ogg"}
    local fire22sup = {path .. "fire-22-sup-01.ogg",path .. "fire-22-sup-02.ogg",path .. "fire-22-sup-03.ogg",path .. "fire-22-sup-04.ogg",path .. "fire-22-sup-05.ogg",path .. "fire-22-sup-06.ogg"}
    local fire22dist = {path .. "fire-22-dist-01.ogg", path .. "fire-22-dist-02.ogg", path .. "fire-22-dist-03.ogg", path .. "fire-22-dist-04.ogg", path .. "fire-22-dist-05.ogg", path .. "fire-22-dist-06.ogg"}
    local fire22distint = {path .. "fire-dist-int-pistol-light-01.ogg", path .. "fire-dist-int-pistol-light-02.ogg", path .. "fire-dist-int-pistol-light-03.ogg", path .. "fire-dist-int-pistol-light-04.ogg", path .. "fire-dist-int-pistol-light-05.ogg", path .. "fire-dist-int-pistol-light-06.ogg"}
    ATT.ShootSoundSilenced = fire22sup
    ATT.ShootSound = fire22
    ATT.DistantShootSound = fire22dist
    ATT.DistantShootSoundIndoor = fire22distint

    ARC9.LoadAttachment(ATT, "ud_glock_caliber_22lr")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_glock_caliber_357sig")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.SortOrder = 90
    ATT.Icon = Material("entities/att/uc_bullets/357sig.png", "smooth mips")
    ATT.Category = "ud_glock_caliber"
    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.357_sig")
    ATT.DamageMaxMult = ARC9.UC.CalConv("9mm", "357sig", "max")
    ATT.DamageMinMult = ARC9.UC.CalConv("9mm", "357sig", "min")
    ATT.PenetrationMult = ARC9.UC.CalConv("9mm", "357sig", "pen")
    ATT.SpreadMult = 0.5
    ATT.RecoilMult = 1.15
    ATT.PhysBulletMuzzleVelocity = 410 * ARC9.UC.Meter
    ATT.ClipSizeMult = 0.9
    ATT.ShellModel = "models/weapons/arc9/uc/uc_shells/357sig.mdl"
    ATT.ShellScale = 1
    local path = ")weapons/arccw_ud/glock/"
    local common = ")/arccw_uc/common/"
    local tail = common .. "357sig/"
    local fire357 = {path .. "fire-357-01.ogg",path .. "fire-357-02.ogg",path .. "fire-357-03.ogg",path .. "fire-357-04.ogg",path .. "fire-357-05.ogg",path .. "fire-357-06.ogg"}
    local fire357sup = {path .. "fire-sup-01.ogg",path .. "fire-sup-02.ogg",path .. "fire-sup-03.ogg",path .. "fire-sup-04.ogg",path .. "fire-sup-05.ogg",path .. "fire-sup-06.ogg"} -- Placeholder
    local fire357dist = {tail .. "fire-dist-357sig-pistol-ext-01.ogg",tail .. "fire-dist-357sig-pistol-ext-02.ogg",tail .. "fire-dist-357sig-pistol-ext-03.ogg",tail .. "fire-dist-357sig-pistol-ext-04.ogg",tail .. "fire-dist-357sig-pistol-ext-05.ogg",tail .. "fire-dist-357sig-pistol-ext-06.ogg"}
    ATT.ShootSoundSilenced = fire357sup
    ATT.ShootSound = fire357
    ATT.DistantShootSound = fire357dist

    ARC9.LoadAttachment(ATT, "ud_glock_caliber_357sig")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_glock_caliber_380acp")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"cal_subsonic"}
    ATT.ExcludeElements = {"powder_subsonic"}

    ATT.SortOrder = 50
    ATT.Icon = Material("entities/att/uc_bullets/380acp.png", "smooth mips")
    ATT.Category = "ud_glock_caliber"
    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.380_acp")
    ATT.DamageMaxMult = ARC9.UC.CalConv("9mm", "380acp", "max")
    ATT.DamageMinMult = ARC9.UC.CalConv("9mm", "380acp", "min")
    ATT.PenetrationMult = ARC9.UC.CalConv("9mm", "380acp", "pen")
    ATT.RecoilMult = 0.65
    ATT.PhysBulletMuzzleVelocity = 310 * ARC9.UC.Meter
    ATT.ShellModel = "models/weapons/arc9/uc/uc_shells/357sig.mdl"
    ATT.ShellScale = 1
    local common = ")/arccw_uc/common/"
    local fire380 = "weapons/arccw_ud/glock/fire_380.ogg"
    local fire380sup = { "weapons/arccw_ud/glock/fire_supp_380.ogg" }
    local fire380dist = { "weapons/arccw_ud/glock/fire_dist_380.ogg" }
    local fire380distint = {common .. "fire-dist-int-pistol-light-01.ogg",common .. "fire-dist-int-pistol-light-02.ogg",common .. "fire-dist-int-pistol-light-03.ogg",common .. "fire-dist-int-pistol-light-04.ogg",common .. "fire-dist-int-pistol-light-05.ogg",common .. "fire-dist-int-pistol-light-06.ogg"}
    ATT.ShootSoundSilenced = fire380sup
    ATT.ShootSound = fire380
    ATT.DistantShootSound = fire380dist
    ATT.DistantShootSoundIndoor = fire380distint

    ARC9.LoadAttachment(ATT, "ud_glock_caliber_380acp")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_glock_caliber_40sw")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"cal_subsonic"}
    ATT.ExcludeElements = {"powder_subsonic"}

    ATT.SortOrder = 100
    ATT.Icon = Material("entities/att/uc_bullets/40sw.png", "smooth mips")
    ATT.Category = "ud_glock_caliber"
    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.40_s_w")
    ATT.DamageMaxMult = ARC9.UC.CalConv("9mm", "40sw", "max")
    ATT.DamageMinMult = ARC9.UC.CalConv("9mm", "40sw", "min")
    ATT.PenetrationMult = ARC9.UC.CalConv("9mm", "40sw", "pen")
    ATT.RecoilMult = 1.15
    ATT.PhysBulletMuzzleVelocity = 300 * ARC9.UC.Meter
    ATT.ClipSizeMult = .9
    ATT.ShellModel = "models/weapons/arc9/uc/uc_shells/40sw.mdl"
    ATT.ShellScale = 1
    local path = ")weapons/arccw_ud/glock/"
    local common = ")/arccw_uc/common/"
    local tail = common .. "40sw/"
    local fire40 = {path .. "fire-40-01.ogg",path .. "fire-40-02.ogg",path .. "fire-40-03.ogg",path .. "fire-40-04.ogg",path .. "fire-40-05.ogg",path .. "fire-40-06.ogg"}
    local fire40sup = {path .. "fire-40-sup-01.ogg",path .. "fire-40-sup-02.ogg",path .. "fire-40-sup-03.ogg",path .. "fire-40-sup-04.ogg",path .. "fire-40-sup-05.ogg",path .. "fire-40-sup-06.ogg"}
    local fire40dist = {tail .. "fire-dist-40sw-pistol-ext-01.ogg", tail .. "fire-dist-40sw-pistol-ext-02.ogg", tail .. "fire-dist-40sw-pistol-ext-03.ogg", tail .. "fire-dist-40sw-pistol-ext-04.ogg", tail .. "fire-dist-40sw-pistol-ext-05.ogg", tail .. "fire-dist-40sw-pistol-ext-06.ogg"}
    local fire40distint = {common .. "fire-dist-int-pistol-heavy-01.ogg", common .. "fire-dist-int-pistol-heavy-02.ogg", common .. "fire-dist-int-pistol-heavy-03.ogg", common .. "fire-dist-int-pistol-heavy-04.ogg", common .. "fire-dist-int-pistol-heavy-05.ogg", common .. "fire-dist-int-pistol-heavy-06.ogg"}
    ATT.ShootSoundSilenced = fire40sup
    ATT.ShootSound = fire40
    ATT.DistantShootSound = fire40dist
    ATT.DistantShootSoundIndoor = fire40distint

    ARC9.LoadAttachment(ATT, "ud_glock_caliber_40sw")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_glock_caliber_45acp")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"cal_subsonic"}
    ATT.ExcludeElements = {"powder_subsonic"}

    ATT.SortOrder = 70
    ATT.Icon = Material("entities/att/uc_bullets/45acp.png", "smooth mips")
    ATT.Category = "ud_glock_caliber"
    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.45_acp")
    ATT.DamageMaxMult = ARC9.UC.CalConv("9mm", "45acp", "max")
    ATT.DamageMinMult = ARC9.UC.CalConv("9mm", "45acp", "min")
    ATT.PenetrationMult = ARC9.UC.CalConv("9mm", "45acp", "pen")
    ATT.RangeMinMult = 0.5
    ATT.RecoilMult = 1.5
    ATT.RecoilRandomSideMult = 1.5
    ATT.MalfunctionMeanShotsToFailMult = 0.6
    ATT.PhysBulletMuzzleVelocity = 320 * ARC9.UC.Meter
    ATT.ClipSizeMult = 0.76
    ATT.RPMMult = 0.7619
    local path = ")weapons/arccw_ud/glock/"
    local common = ")/arccw_uc/common/"
    local tail = common .. "45acp/"
    local fire45 = {path .. "fire-45-01.ogg",path .. "fire-45-02.ogg",path .. "fire-45-03.ogg",path .. "fire-45-04.ogg",path .. "fire-45-05.ogg",path .. "fire-45-06.ogg"}
    local fire45sup =  {path .. "fire-45-sup-01.ogg",path .. "fire-45-sup-02.ogg",path .. "fire-45-sup-03.ogg",path .. "fire-45-sup-04.ogg",path .. "fire-45-sup-05.ogg",path .. "fire-45-sup-06.ogg"}
    local fire45dist = {tail .. "fire-dist-45acp-pistol-ext-01.ogg",tail .. "fire-dist-45acp-pistol-ext-02.ogg",tail .. "fire-dist-45acp-pistol-ext-03.ogg",tail .. "fire-dist-45acp-pistol-ext-04.ogg",tail .. "fire-dist-45acp-pistol-ext-05.ogg",tail .. "fire-dist-45acp-pistol-ext-06.ogg"}
    local fire45distint = {common .. "fire-dist-int-pistol-heavy-01.ogg", common .. "fire-dist-int-pistol-heavy-02.ogg", common .. "fire-dist-int-pistol-heavy-03.ogg", common .. "fire-dist-int-pistol-heavy-04.ogg", common .. "fire-dist-int-pistol-heavy-05.ogg", common .. "fire-dist-int-pistol-heavy-06.ogg"}
    ATT.ShootSoundSilenced = fire45sup
    ATT.ShootSound = fire45
    ATT.DistantShootSound = fire45dist
    ATT.DistantShootSoundIndoor = fire45distint

    ARC9.LoadAttachment(ATT, "ud_glock_caliber_45acp")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_glock_frame_flared")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_glock_frame_flared"}

    ATT.Icon = Material("entities/att/acwatt_ud_glock_frame_flared.png", "smooth mips")
    ATT.Category = "ud_glock_frame"
    ATT.ReloadTimeMult = 0.9
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.SpeedMultSights = 0.95
    ATT.DeployTimeMult = 1.25

    ARC9.LoadAttachment(ATT, "ud_glock_frame_flared")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_glock_frame_subcompact")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["ud.glock.subcompact"] = "",
    }
    ATT.CustomCons = {
        ["uc.nostocks"] = "",
    }
    ATT.ActivateElements = {"ud_glock_frame_subcompact", "ud_glock_frame_subcompact"}

    ATT.Icon = Material("entities/att/acwatt_ud_glock_frame_subcompact.png", "smooth mips")
    ATT.Category = "ud_glock_frame"
    ATT.DeployTimeMult = 0.75
    ATT.RecoilMult = 1.15
    ATT.SpeedMultSights = 1.05
    ATT.AimDownSightsTimeMult = 0.8
    ATT.SprintToFireTimeMult = 0.8

    ARC9.LoadAttachment(ATT, "ud_glock_frame_subcompact")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_glock_mag_10")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_glock_10_mag"}
    ATT.RequireElements = {{"ud_glock_frame_subcompact"}}

    ATT.SortOrder = 10
    ATT.Icon = Material("entities/att/acwatt_ud_glock_mag_10.png", "smooth mips")
    ATT.Category = "ud_glock_mag"
    ATT.AimDownSightsTimeMult = 0.9
    ATT.SprintToFireTimeMult = 0.9
    ATT.ReloadTimeMult = 0.9
    ATT.ClipSize = 10
    ATT.SpeedMult = 1.05
    ATT.SwayMult = 0.5
    ATT.UC_HipDispersionMult = 0.75
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if string.StartsWith(anim, "reload") then
            return anim .. "_10"
        end
        if anim == "fix" then
            return anim .. "_10"
        end
    end

    ARC9.LoadAttachment(ATT, "ud_glock_mag_10")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_glock_mag_100")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["uc.jam"] = "",
    }
    ATT.ActivateElements = {"ud_glock_100_mag"}

    ATT.SortOrder = 100
    ATT.Icon = Material("entities/att/acwatt_ud_glock_mag_100.png", "smooth mips")
    ATT.Category = "ud_glock_mag"
    ATT.SpeedMult = 0.95
    ATT.AimDownSightsTimeMult = 1.2
    ATT.SprintToFireTimeMult = 1.2
    ATT.ReloadTimeMult = 1.5
    ATT.ClipSize = 100
    ATT.UC_HipDispersionMult = 1.5
    ATT.SwayMult = 3
    ATT.SpeedMultShooting = 0.9
    ATT.Malfunction = true
    ATT.MalfunctionMeanShotsToFailMult = 0.75
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if string.StartsWith(anim, "reload") then
            return anim .. "_100"
        end
        if anim == "fix" then
            return anim .. "_100"
        end
    end

    ATT.UC_MalfunctionVarianceMult = 1.5

    ARC9.LoadAttachment(ATT, "ud_glock_mag_100")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_glock_mag_33")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_glock_33_mag"}

    ATT.SortOrder = 33
    ATT.Icon = Material("entities/att/acwatt_ud_glock_mag_33.png", "smooth mips")
    ATT.Category = "ud_glock_mag"
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.ReloadTimeMult = 1.15
    ATT.ClipSize = 33
    ATT.UC_HipDispersionMult = 1.25
    ATT.SwayMult = 1.5
    ATT.SpeedMultShooting = 0.95
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if string.StartsWith(anim, "reload") then
            return anim .. "_33"
        end
        if anim == "fix" then
            return anim .. "_33"
        end
    end

    ARC9.LoadAttachment(ATT, "ud_glock_mag_33")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_glock_mag_altanim")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_ud_glock_mag_17.png", "smooth mips")
    ATT.Category = "ud_glock_mag"
    ATT.SortOrder = 999
    ATT.Free = true
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if anim == "reload_empty" then
            return "reload_empty_fesiug"
        end
    end

    ARC9.LoadAttachment(ATT, "ud_glock_mag_altanim")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_glock_muzzle_kkm")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/kkm.png", "mips smooth")
    ATT.Category = {"ud_glock_muzzle"}
    ATT.SortOrder = 500
    ATT.Model = "models/weapons/arccw/atts/uc_kkm_brake.mdl"
    ATT.ModelOffset = Vector(0.07, 0, 0.165)
    ATT.Scale = 1.25
    ATT.ModelAngleOffset = Angle(0, 0, 0)
    ATT.MuzzleDevice = true
    ATT.RecoilMult = 0.7
    ATT.RecoilRandomSideMult = 0.8
    ATT.BarrelLengthAdd = 2
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.SwayMult = 1.15
    ATT.RPMMult = 0.85
    ATT.ShootVolumeMult = 1.2
    ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"

    ARC9.LoadAttachment(ATT, "ud_glock_muzzle_kkm")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_glock_skin_custom")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_ud_glock_material.png", "smooth mips")
    ATT.Category = "ud_glock_skin"
    ATT.Free = true

    ARC9.LoadAttachment(ATT, "ud_glock_skin_custom")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_glock_skin_olive")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_ud_glock_material.png", "smooth mips")
    ATT.Category = "ud_glock_skin"
    ATT.Free = true

    ARC9.LoadAttachment(ATT, "ud_glock_skin_olive")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_glock_skin_tan")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_ud_glock_material.png", "smooth mips")
    ATT.Category = "ud_glock_skin"
    ATT.Free = true

    ARC9.LoadAttachment(ATT, "ud_glock_skin_tan")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_glock_slide_auto")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.auto"] = "",
    }
    ATT.CustomCons = {
        ["uc.jam"] = "",
    }
    ATT.ActivateElements = {"ud_glock_slide_auto", "ud_glock_auto"}
    ATT.ExcludeElements = {"ud_glock_not_9mil"}

    ATT.Icon = Material("entities/att/acwatt_ud_glock_slide_auto.png", "smooth mips")
    ATT.Category = "ud_glock_slide"
    ATT.HookP_ClassChange = function(wep, class) return "uc.class.machine_pistol" end
    ATT.UC_MoveDispersionMult = 1.5
    ATT.UC_HipDispersionMult = 1.25
    ATT.RecoilMult = 0.95
    ATT.RPMMult = 2.38
    ATT.SpeedMultShooting = 0.85
    ATT.Malfunction = true
    ATT.Firemodes = {
        {
            Mode = -1,
        },
        {
            Mode = 1,
        }
    }

    ARC9.LoadAttachment(ATT, "ud_glock_slide_auto")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_glock_slide_carbine")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_glock_slide_carbine"}

    ATT.Icon = Material("entities/att/acwatt_ud_glock_slide_carbine.png", "smooth mips")
    ATT.Category = "ud_glock_slide"
    ATT.AimDownSightsTimeMult = 1.75
    ATT.SprintToFireTimeMult = 1.75
    ATT.RecoilMult = 0.5
    ATT.SpreadMult = 0.25
    ATT.SwayMult = 2
    ATT.RangeMaxMult = 3
    ATT.RangeMinMult = 3
    ATT.DeployTimeMult = 1.5
    ATT.BarrelLengthAdd = 32

    ARC9.LoadAttachment(ATT, "ud_glock_slide_carbine")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_glock_slide_comp")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_glock_slide_comp"}

    ATT.Icon = Material("entities/att/acwatt_ud_glock_slide_comp.png", "smooth mips")
    ATT.Category = "ud_glock_slide"
    ATT.AimDownSightsTimeMult = 0.8
    ATT.SprintToFireTimeMult = 0.8
    ATT.RecoilRandomSideMult = 0.75
    ATT.RecoilMult = 1.1

    ARC9.LoadAttachment(ATT, "ud_glock_slide_comp")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_glock_slide_cs")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.3burst"] = "",
        ["ud.glock.cs"] = "",
    }
    ATT.CustomCons = {
        ["uc.jam"] = "",
    }
    ATT.ActivateElements = {"ud_glock_slide_cs"}

    ATT.Icon = Material("entities/att/acwatt_ud_glock_slide_cs.png", "smooth mips")
    ATT.Category = "ud_glock_slide"
    ATT.UC_DefaultSlots = {
        [8] = {Name = "uc.default.20_round_mag", Icon = Material("entities/att/acwatt_ud_glock_mag_17.png", "smooth mips")},
    }
    ATT.LHIK = true
    ATT.Model = "models/weapons/arccw/atts/classic_lhik.mdl"
    ATT.UC_HipDispersionMult = 1.15
    ATT.SpeedMultShooting = 0.9
    ATT.Malfunction = true
    ATT.Firemodes = {
        {
            Mode = 3,
            RPMMult = 3,
            PostBurstDelay = 0.25,
            RunawayBurst = true,
            RecoilHook = ARC9.UC.ShotRecoil({
                [1] = 0.8,
                [2] = 0.5,
                [3] = 0.3,
            }),
        },
        {
            Mode = 1,
        }
    }
    -- +3 rounds with the standard magazine
    ATT.ClipSizeHook = function(wep, size)
        if !wep.Attachments[8].Installed then
            return size + 3
        end
    end

    ARC9.LoadAttachment(ATT, "ud_glock_slide_cs")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_glock_slide_lb")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_glock_slide_lb"}

    ATT.Icon = Material("entities/att/acwatt_ud_glock_slide_lb.png", "smooth mips")
    ATT.Category = "ud_glock_slide"
    ATT.DeployTimeMult = 1.15
    ATT.BarrelLengthAdd = 4
    ATT.SwayMult = 1.25
    ATT.UC_HipDispersionMult = 1.15
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.PhysBulletMuzzleVelocityMult = 1.1
    ATT.SpreadMult = 0.85
    ATT.RecoilMult = 0.85
    ATT.RangeMaxMult = 1.25
    ATT.RangeMinMult = 1.25

    ARC9.LoadAttachment(ATT, "ud_glock_slide_lb")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_glock_slide_nytesyte")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_glock_slide_nytesyte"}

    ATT.Icon = Material("entities/att/acwatt_ud_glock_slide_nytesyte.png", "smooth mips")
    ATT.Category = "ud_glock_slide"
    -- Recoil kicks sideways while aiming.
    ATT.UC_RecoilRollHook = function(wep, roll)
        if wep:GetInSights() then
            return -90
        end
    end

    ARC9.LoadAttachment(ATT, "ud_glock_slide_nytesyte")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_glock_slide_sd")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.invistracer"] = "",
    }
    ATT.CustomCons = {
        ["uc.nomuzzle"] = "",
    }
    ATT.ActivateElements = {"ud_glock_slide_sd", "sd"}

    ATT.Icon = Material("entities/att/acwatt_ud_glock_slide_sd.png", "smooth mips")
    ATT.Category = "ud_glock_slide"
    ATT.AimDownSightsTimeMult = 1.15
    ATT.SprintToFireTimeMult = 1.15
    ATT.RecoilMult = 0.85
    ATT.SpreadMult = 0.75
    ATT.SwayMult = 1.5
    ATT.RangeMaxMult = 1.25
    ATT.RangeMinMult = 1.25
    ATT.ShootVolumeMult = 0.65
    ATT.ShootPitchMult = 1.25
    ATT.PhysBulletMuzzleVelocityMult = 0.85
    ATT.RPMMult = 0.55
    ATT.Silencer = true
    ATT.MuzzleParticle = "uc_muzzleflash_suppressed"
    ATT.BarrelLengthAdd = 8
    ATT.Firemodes_Priority = 10
    ATT.Firemodes = {
        {
            Mode = 1,
        },
        {
            Mode = 1,
            PrintName = "fcg.slidelock",
            ManualAction = true,
            ShootVolumeMult = 0.8,
            SpreadMult = 0.75,
            UC_HipDispersionMult = 0.75,
        }
    }
    ATT.TracerNum = 0
    ATT.TracerColor = Color(0, 0, 0)
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if !ARC9.UC.IsManualAction(wep) then return end
        if (anim == "fire" || anim == "fire_empty") then
            return "fire_cycle"
        elseif (anim == "idle" || anim == "idle_empty") then
            if wep:GetNeedsCycle() then
                return "idle"
            end
        end
    end
    ATT.HookP_TranslateSound = ARC9.UC.SubsonicTail

    ARC9.LoadAttachment(ATT, "ud_glock_slide_sd")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_glock_slide_subcompact")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["uc.noubs"] = "",
    }
    ATT.ActivateElements = {"ud_glock_slide_subompact", "ud_glock_slide_subcompact"}
    ATT.RequireElements = {{"ud_glock_frame_subcompact"}}

    ATT.Icon = Material("entities/att/acwatt_ud_glock_slide_subcompact.png", "smooth mips")
    ATT.Category = "ud_glock_slide"
    ATT.DeployTimeMult = 0.85
    ATT.BarrelLengthAdd = -4
    ATT.SwayMult = 0.75
    ATT.UC_HipDispersionMult = 0.85
    ATT.AimDownSightsTimeMult = 0.85
    ATT.SprintToFireTimeMult = 0.85
    ATT.PhysBulletMuzzleVelocityMult = 0.9
    ATT.SpreadMult = 1.5
    ATT.RangeMaxMult = 0.75
    ATT.RangeMinMult = 0.75
    ATT.RecoilMult = 1.25

    ARC9.LoadAttachment(ATT, "ud_glock_slide_subcompact")
end
