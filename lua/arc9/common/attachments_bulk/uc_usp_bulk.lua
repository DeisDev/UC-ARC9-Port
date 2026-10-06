do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_usp_cal_40sw")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.SortOrder = 8
    ATT.Icon = Material("entities/att/uc_bullets/40sw.png", "smooth mips")
    ATT.Category = "uc_usp_caliber"
    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.40_smith_wesson")
    ATT.DamageMaxMult = 30 / 45
    ATT.DamageMinMult = 23 / 15
    ATT.PenetrationMult = 8 / 9
    ATT.RangeMinMult = 20 / 10
    ATT.RecoilMult = 0.85
    ATT.RecoilRandomSideMult = 0.75
    ATT.PhysBulletMuzzleVelocityMult = 340 / 315
    ATT.ClipSizeAdd = 1
    ATT.ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
    ATT.ShellScale = 1
    ATT.TracerNum = 1
    ATT.TracerNum_Priority = 0.5
    local path = ")weapons/arccw_uc_usp/"
    ATT.ShootSound = {
        path .. "fire-40-01.ogg",
        path .. "fire-40-02.ogg",
        path .. "fire-40-03.ogg",
        path .. "fire-40-04.ogg",
        path .. "fire-40-05.ogg",
        path .. "fire-40-06.ogg",
    }
    ATT.ShootSoundSilenced = {
        path .. "fire-40-sup-01.ogg",
        path .. "fire-40-sup-02.ogg",
        path .. "fire-40-sup-03.ogg",
        path .. "fire-40-sup-04.ogg",
        path .. "fire-40-sup-05.ogg",
        path .. "fire-40-sup-06.ogg",
    }
    local tail = ")/arccw_uc/common/40sw/"
    ATT.DistantShootSound = {
        tail .. "fire-dist-40sw-pistol-ext-01.ogg",
        tail .. "fire-dist-40sw-pistol-ext-02.ogg",
        tail .. "fire-dist-40sw-pistol-ext-03.ogg",
        tail .. "fire-dist-40sw-pistol-ext-04.ogg",
        tail .. "fire-dist-40sw-pistol-ext-05.ogg",
        tail .. "fire-dist-40sw-pistol-ext-06.ogg",
    }

    ARC9.LoadAttachment(ATT, "uc_usp_cal_40sw")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_usp_cal_9mm")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.SortOrder = 9
    ATT.Icon = Material("entities/att/uc_bullets/9x19.png", "smooth mips")
    ATT.Category = "uc_usp_caliber"
    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.9x19mm_parabellum")
    ATT.DamageMaxMult = 30 / 45
    ATT.DamageMinMult = 17 / 15
    ATT.PenetrationMult = 6 / 9
    ATT.RangeMinMult = 15 / 10
    ATT.RPMMult = 1.05
    ATT.ReloadTimeMult = .9
    ATT.RecoilMult = 0.8
    ATT.RecoilRandomSideMult = 0.75
    ATT.PhysBulletMuzzleVelocityMult = 355 / 315
    ATT.ClipSizeAdd = 3
    ATT.ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
    ATT.ShellScale = 1
    ATT.TracerNum = 1
    ATT.TracerNum_Priority = 0.5
    local path = ")weapons/arccw_uc_usp/"
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
    local tail = ")/arccw_uc/common/9x19/"
    ATT.DistantShootSound = {
        tail .. "fire-dist-9x19-pistol-ext-01.ogg",
        tail .. "fire-dist-9x19-pistol-ext-02.ogg",
        tail .. "fire-dist-9x19-pistol-ext-03.ogg",
        tail .. "fire-dist-9x19-pistol-ext-04.ogg",
        tail .. "fire-dist-9x19-pistol-ext-05.ogg",
        tail .. "fire-dist-9x19-pistol-ext-06.ogg",
    }

    ARC9.LoadAttachment(ATT, "uc_usp_cal_9mm")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_usp_mag_ext")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.SortOrder = 33
    ATT.Icon = Material("entities/att/acwatt_uc_usp_mag_extended.png", "smooth mips")
    ATT.Category = "uc_usp_mag"
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.ReloadTimeMult = 1.15
    ATT.ClipSizeAdd = 5
    ATT.UC_HipDispersionMult = 1.25
    ATT.SwayMult = 1.5
    ATT.SpeedMultShooting = 0.95
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if anim == "reload" or anim == "reload_empty" then return anim .. "_ext" end
    end

    ARC9.LoadAttachment(ATT, "uc_usp_mag_ext")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_usp_sight")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/acwatt_uc_usp_sight.png", "smooth mips")
    ATT.CustomPros = {
        ["uc.cosmetic"] = ""
    }
    ATT.SortOrder = 999
    ATT.Category = "uc_usp_sight"

    ARC9.LoadAttachment(ATT, "uc_usp_sight")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_usp_skin_blued")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/acwatt_uc_usp_skin_blued.png","mips smooth")
    ATT.Category = "uc_usp_skin"
    ATT.CustomPros = {
        ["uc.cosmetic"] = ""
    }
    ATT.SortOrder = 2
    ATT.Free = true

    ARC9.LoadAttachment(ATT, "uc_usp_skin_blued")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_usp_skin_nickel")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/acwatt_uc_usp_skin_nickel.png","mips smooth")
    ATT.Category = "uc_usp_skin"
    ATT.CustomPros = {
        ["uc.cosmetic"] = ""
    }
    ATT.SortOrder = 2
    ATT.Free = true
    ATT.ActivateElements = {"usp_freeman_1"}

    ARC9.LoadAttachment(ATT, "uc_usp_skin_nickel")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_usp_slide_compact")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/acwatt_uc_usp_slide_compact.png", "smooth mips")
    ATT.Category = "uc_usp_slide"
    ATT.SortOrder = 4
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

    ARC9.LoadAttachment(ATT, "uc_usp_slide_compact")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_usp_slide_cs")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/acwatt_uc_usp_slide_cs.png", "smooth mips")
    ATT.CustomPros = {
        ["uc.usp.cs.1"] = "",
    }
    ATT.SortOrder = 5
    ATT.Category = "uc_usp_slide"
    ATT.RPMMult = .75
    ATT.HeadshotDamageMult = 1.25
    -- ArcCW added -2 MOA before applying the spread multipliers.
    ATT.SpreadHook = function(wep, spread)
        if !wep:GetValue("Silencer") then return end
        local mult = 1
        for _, affector in ipairs(wep:GetAllAffectors()) do
            mult = mult * (affector.SpreadMult or 1)
        end
        return spread - 2 * ARC9.UC.MOA * mult
    end

    ARC9.LoadAttachment(ATT, "uc_usp_slide_cs")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_usp_slide_ext")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/acwatt_uc_usp_slide_long.png", "smooth mips")
    ATT.Category = "uc_usp_slide"
    ATT.SortOrder = 6
    ATT.DeployTimeMult = 1.15
    ATT.BarrelLengthAdd = 2
    ATT.SwayMult = 1.25
    ATT.UC_HipDispersionMult = 1.15
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.SpreadMult = 0.85
    ATT.RecoilMult = 0.85
    ATT.RangeMaxMult = 1.25
    ATT.RangeMinMult = 1.25

    ARC9.LoadAttachment(ATT, "uc_usp_slide_ext")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_usp_slide_match")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/acwatt_uc_usp_slide_match.png", "smooth mips")
    ATT.CustomCons = {
        ["uc.nomuzzle"] = "",
        ["uc.noubs"] = "",
    }
    ATT.SortOrder = 7
    ATT.Category = "uc_usp_slide"
    ATT.ActivateElements = {"usp_match", "usp_freeman_2"}
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if anim == "fire" or anim == "fire_iron" or anim == "fire_empty" or anim == "fire_iron_empty" then
            return anim .. "_match"
        end
    end
    ATT.RecoilMult = .7
    ATT.AimDownSightsTimeMult = 1.4
    ATT.SprintToFireTimeMult = 1.4
    ATT.BarrelLengthAdd = 4

    ARC9.LoadAttachment(ATT, "uc_usp_slide_match")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_usp_tp_hl")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/acwatt_uc_usp_tp_hl.png", "smooth mips")
    ATT.CustomPros = {
        ["uc.cosmetic"] = ""
    }
    ATT.Category = "uc_usp_tp"
    ATT.SortOrder = 999
    ATT.LHIK = true
    ATT.UC_HideLeftHand = true
    ATT.Hook_ModifyBodygroups = ARC9.UC.HideLeftHand
    ATT.ActivePos = Vector(1.173478, 4.950291, -0.424345)
    ATT.ActiveAng = Angle(-2.001218, -1.998781, 0.069827)
    ATT.RequireElements = {{"uc_usp_slide_match", "uc_usp_skin_nickel", "uc_tp_gong"}}
    ATT.Free = true
    ATT.Ignore = true
    ATT.UC_HideIfBlocked = true

    ARC9.LoadAttachment(ATT, "uc_usp_tp_hl")
end
