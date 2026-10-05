do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_1911_cal_10auto")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.SortOrder = 10
    ATT.Icon = Material("entities/att/uc_bullets/10.png", "smooth mips")
    ATT.Category = "ur_m1911_caliber"
    ATT.DamageMaxMult = 35 / 45
    ATT.DamageMinMult = 20 / 15
    ATT.PenetrationMult = 8 / 9
    ATT.RangeMinMult = 1.5
    ATT.PhysBulletMuzzleVelocityMult = 1.5
    ATT.TracerNum = 1
    ATT.TracerNum_Priority = 0.5
    ATT.ClipSizeMult = 8 / 7
    ATT.ShellScale = 1
    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.10mm_auto")
    local path = ")^weapons/arccw_ur/1911/"
    ATT.ShootSound = {
        path .. "fire-10-01.ogg",
        path .. "fire-10-02.ogg",
        path .. "fire-10-03.ogg",
        path .. "fire-10-04.ogg",
        path .. "fire-10-05.ogg",
        path .. "fire-10-06.ogg",
    }
    ATT.ShootSoundSilenced = {
        path .. "fire-sup-01.ogg",
        path .. "fire-sup-02.ogg",
        path .. "fire-sup-03.ogg",
        path .. "fire-sup-04.ogg",
        path .. "fire-sup-05.ogg",
        path .. "fire-sup-06.ogg",
    }
    ATT.DistantShootSound = {
        path .. "fire-10-dist-01.ogg",
        path .. "fire-10-dist-02.ogg",
        path .. "fire-10-dist-03.ogg",
        path .. "fire-10-dist-04.ogg",
        path .. "fire-10-dist-05.ogg",
        path .. "fire-10-dist-06.ogg",
    }

    ARC9.LoadAttachment(ATT, "ur_1911_cal_10auto")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_1911_cal_9mm")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.SortOrder = 9
    ATT.Icon = Material("entities/att/uc_bullets/9x19.png", "smooth mips")
    ATT.Category = "ur_m1911_caliber"
    ATT.DamageMaxMult = 30 / 45
    ATT.DamageMinMult = 17 / 15
    ATT.PenetrationMult = 6 / 9
    ATT.RangeMaxMult = 1.25
    ATT.RangeMinMult = 1.25
    ATT.RPMMult = 525 / 450
    ATT.ReloadTimeMult = .9
    ATT.RecoilMult = 0.85
    ATT.RecoilRandomSideMult = 0.75
    ATT.PhysBulletMuzzleVelocityMult = 1.4
    ATT.TracerNum = 1
    ATT.TracerNum_Priority = 0.5
    ATT.ClipSizeMult = 9 / 7
    ATT.ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
    ATT.ShellScale = 1
    ATT.TriviaHook = function(wep, trivia)
        local result = table.Copy(trivia)
        result["uc.trivia.calibre2"] = "uc.calibre.9x19mm_parabellum"
        result["uc.trivia.manufacturer1"] = "ur.m1911.manufacturer.ruger"
        return result
    end
    local path = ")^weapons/arccw_ur/1911/"
    ATT.ShootSound = {
        path .. "fire-9-01.ogg",
        path .. "fire-9-02.ogg",
        path .. "fire-9-03.ogg",
        path .. "fire-9-04.ogg",
        path .. "fire-9-05.ogg",
        path .. "fire-9-06.ogg",
    }
    ATT.ShootSoundSilenced = {
        path .. "fire-9-sup-01.ogg",
        path .. "fire-9-sup-02.ogg",
        path .. "fire-9-sup-03.ogg",
        path .. "fire-9-sup-04.ogg",
        path .. "fire-9-sup-05.ogg",
        path .. "fire-9-sup-06.ogg",
    }
    local tail = ")^/arccw_uc/common/9x19/"
    ATT.DistantShootSound = {
        tail .. "fire-dist-9x19-pistol-ext-01.ogg",
        tail .. "fire-dist-9x19-pistol-ext-02.ogg",
        tail .. "fire-dist-9x19-pistol-ext-03.ogg",
        tail .. "fire-dist-9x19-pistol-ext-04.ogg",
        tail .. "fire-dist-9x19-pistol-ext-05.ogg",
        tail .. "fire-dist-9x19-pistol-ext-06.ogg",
    }

    ARC9.LoadAttachment(ATT, "ur_1911_cal_9mm")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_1911_grip_pachmayr")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_1911/grip_pach.png","mips smooth")
    ATT.Category = "ur_m1911_grip"
    ATT.SwayMult = 0.75
    ATT.RecoilMult = 0.95
    ATT.DeployTimeMult = 1.25

    ARC9.LoadAttachment(ATT, "ur_1911_grip_pachmayr")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_1911_grip_snake")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_1911/grip_snake.png","mips smooth")
    ATT.Category = "ur_m1911_grip"
    ATT.UC_MoveDispersionMult = 0.9
    ATT.RecoilRandomSideMult = 1.15

    ARC9.LoadAttachment(ATT, "ur_1911_grip_snake")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_1911_mag_ext")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_1911/mag11.png","mips smooth")
    ATT.Category = "ur_m1911_mag"
    ATT.ClipSize = 11
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.ReloadTimeMult = 1.15
    ATT.SwayMult = 1.25
    ATT.SpeedMult = 0.98
    ATT.SpeedMultShooting = 0.95
    ATT.UC_HipDispersionMult = 1.25
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if anim == "reload" or anim == "reload_empty" then return anim .. "_10" end
    end

    ARC9.LoadAttachment(ATT, "ur_1911_mag_ext")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_1911_skin_custom")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_1911/skin.png","mips smooth")
    ATT.SortOrder = 7
    ATT.Category = "ur_m1911_skin"
    ATT.Free = true
    ATT.CustomPros = {
        ["uc.cosmetic"] = "",
        ["uc.custcolor"] = "",
    }

    ARC9.LoadAttachment(ATT, "ur_1911_skin_custom")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_1911_skin_nickel")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_1911/skin_dark.png","mips smooth")
    ATT.SortOrder = 9
    ATT.Category = "ur_m1911_skin"
    ATT.Free = true
    ATT.Ignore = true
    ATT.CustomPros = {
        ["uc.cosmetic"] = ""
    }

    ARC9.LoadAttachment(ATT, "ur_1911_skin_nickel")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_1911_skin_silver")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_1911/skin_silver.png","mips smooth")
    ATT.SortOrder = 9
    ATT.Category = "ur_m1911_skin"
    ATT.Free = true
    ATT.CustomPros = {
        ["uc.cosmetic"] = ""
    }

    ARC9.LoadAttachment(ATT, "ur_1911_skin_silver")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_1911_skin_tan")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_1911/skin_tan.png","mips smooth")
    ATT.SortOrder = 8
    ATT.Category = "ur_m1911_skin"
    ATT.Free = true
    ATT.CustomPros = {
        ["uc.cosmetic"] = ""
    }

    ARC9.LoadAttachment(ATT, "ur_1911_skin_tan")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_1911_slide_compact")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_1911/slide_compact.png","mips smooth")
    ATT.Category = "ur_m1911_slide"
    ATT.SortOrder = 3.5
    ATT.DeployTimeMult = 0.85
    ATT.BarrelLengthAdd = -1
    ATT.SwayMult = 0.75
    ATT.UC_HipDispersionMult = 0.85
    ATT.AimDownSightsTimeMult = 0.85
    ATT.SprintToFireTimeMult = 0.85
    ATT.SpreadMult = 1.5
    ATT.RangeMaxMult = 0.8
    ATT.RangeMinMult = 0.8
    ATT.RecoilMult = 1.2

    ARC9.LoadAttachment(ATT, "ur_1911_slide_compact")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_1911_slide_compact_custom")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_1911/slide_compact.png","mips smooth")
    ATT.Category = "ur_m1911_slide"
    ATT.SortOrder = 3.5 - 0.01
    ATT.InvAtt = "ur_1911_slide_compact"
    ATT.DeployTimeMult = 0.85
    ATT.BarrelLengthAdd = -1
    ATT.SwayMult = 0.75
    ATT.UC_HipDispersionMult = 0.85
    ATT.AimDownSightsTimeMult = 0.85
    ATT.SprintToFireTimeMult = 0.85
    ATT.SpreadMult = 1.5
    ATT.RangeMaxMult = 0.8
    ATT.RangeMinMult = 0.8
    ATT.RecoilMult = 1.2
    ATT.CustomPros = {
        ["uc.custcolor"] = "",
    }

    ARC9.LoadAttachment(ATT, "ur_1911_slide_compact_custom")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_1911_slide_custom")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_1911/slide_std.png","mips smooth")
    ATT.Category = "ur_m1911_slide"
    ATT.SortOrder = 99
    ATT.Free = true
    ATT.CustomPros = {
        ["uc.cosmetic"] = "",
        ["uc.custcolor"] = "",
    }

    ARC9.LoadAttachment(ATT, "ur_1911_slide_custom")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_1911_slide_m45")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_1911/slide_45tan.png","mips smooth")
    ATT.Category = "ur_m1911_slide"
    ATT.SortOrder = 5.1
    ATT.RPMMult = 1.05
    ATT.AimDownSightsTimeMult = 0.9
    ATT.SprintToFireTimeMult = 0.9
    ATT.SpreadMult = 0.8
    ATT.RangeMinMult = 1.5
    ATT.UC_HipDispersionMult = 1.25

    ARC9.LoadAttachment(ATT, "ur_1911_slide_m45")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_1911_slide_m45_custom")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_1911/slide_45.png","mips smooth")
    ATT.Category = "ur_m1911_slide"
    ATT.SortOrder = 5
    ATT.InvAtt = "ur_1911_slide_m45"
    ATT.RPMMult = 1.05
    ATT.AimDownSightsTimeMult = 0.9
    ATT.SprintToFireTimeMult = 0.9
    ATT.SpreadMult = 0.8
    ATT.RangeMinMult = 1.5
    ATT.UC_HipDispersionMult = 1.25
    ATT.CustomPros = {
        ["uc.custcolor"] = "",
    }

    ARC9.LoadAttachment(ATT, "ur_1911_slide_m45_custom")
end
