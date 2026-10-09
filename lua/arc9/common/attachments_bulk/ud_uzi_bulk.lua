do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_uzi_body_carbine")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_uzi_body_carbine"}

    ATT.Icon = Material("entities/att/acwatt_ud_uzi_body_carbine.png", "smooth mips")
    ATT.Category = "ud_uzi_frame"
    ATT.SortOrder = 13
    ATT.SpreadMult = 0.75
    ATT.AimDownSightsTimeMult = 1.15
    ATT.SprintToFireTimeMult = 1.15
    ATT.RecoilMult = 0.9
    ATT.RecoilRandomSideMult = 0.75
    ATT.RPMMult = 0.9
    ATT.RangeMaxMult = 1.25
    ATT.RangeMinMult = 1.25
    ATT.SwayMult = 1.5
    ATT.TriggerDelayTimeMult = 1.15
    ATT.BarrelLengthAdd = 5

    ARC9.LoadAttachment(ATT, "ud_uzi_body_carbine")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_uzi_body_civvy")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["uc.semionly"] = "",
    }
    ATT.ActivateElements = {"ud_uzi_body_civvy"}

    ATT.Icon = Material("entities/att/acwatt_ud_uzi_body_civvy.png", "smooth mips")
    ATT.Category = "ud_uzi_frame"
    ATT.SortOrder = 16
    ATT.SpreadMult = 0.5
    ATT.AimDownSightsTimeMult = 1.25
    ATT.SprintToFireTimeMult = 1.25
    ATT.RecoilMult = 0.75
    ATT.RecoilRandomSideMult = 0.5
    ATT.RPMMult = 0.9
    ATT.RangeMaxMult = 1.5
    ATT.RangeMinMult = 1.5
    ATT.SwayMult = 2
    ATT.TriggerDelayTimeMult = 0
    ATT.ChamberSize = 1
    ATT.Firemodes = {
        {
            Mode = 1,
        }
    }
    ATT.BarrelLengthAdd = 8

    ARC9.LoadAttachment(ATT, "ud_uzi_body_civvy")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_uzi_body_micro")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["uc.nostocks"] = "",
        ["uc.noubs"] = "",
    }
    ATT.ActivateElements = {"ud_uzi_body_micro", "micro"}

    ATT.Icon = Material("entities/att/acwatt_ud_uzi_body_micro.png", "smooth mips")
    ATT.Category = "ud_uzi_frame"
    ATT.SortOrder = 4.6
    ATT.SpreadMult = 1.75
    ATT.AimDownSightsTimeMult = 0.6
    ATT.SprintToFireTimeMult = 0.6
    ATT.RecoilMult = 3
    ATT.RecoilRandomSideMult = 1.25
    ATT.RPMMult = 1 + (3 / 5)
    ATT.RangeMaxMult = 0.5
    ATT.RangeMinMult = 0.5
    ATT.UC_HipDispersionMult = 1.5
    ATT.DeployTimeMult = 0.6
    ATT.BarrelLengthAdd = -8
    ATT.ChamberSize = 1
    ATT.TriggerDelayTimeMult = 0
    ATT.LHIK = true
    ATT.HoldType = "pistol"
    ATT.HoldTypeSights = "revolver"
    ATT.UC_TPIKFreeLeftHandHoldType = "revolver"
    ATT.HookP_ClassChange = function(wep, class) return "uc.class.machine_pistol" end
    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.mechanism3", "ud_uzi_body_micro.trivia.mechanism")
    ATT.Model = "models/weapons/arccw/atts/mini_lhik.mdl"
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if wep.Animations[anim .. "_micro"] then return anim .. "_micro" end
    end

    ARC9.LoadAttachment(ATT, "ud_uzi_body_micro")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_uzi_body_mini")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_uzi_body_mini"}

    ATT.Icon = Material("entities/att/acwatt_ud_uzi_body_mini.png", "smooth mips")
    ATT.Category = "ud_uzi_frame"
    ATT.SortOrder = 8
    ATT.SpreadMult = 1.25
    ATT.AimDownSightsTimeMult = 0.85
    ATT.SprintToFireTimeMult = 0.85
    ATT.RecoilMult = 1.5
    ATT.RecoilRandomSideMult = 1.15
    ATT.RPMMult = 1.25
    ATT.RangeMaxMult = 0.75
    ATT.RangeMinMult = 0.75
    ATT.UC_HipDispersionMult = 1.25
    ATT.BarrelLengthAdd = -4
    ATT.TriggerDelayTimeMult = 0.75
    ATT.LHIK = true
    ATT.HoldType = "pistol"
    ATT.HoldTypeSights = "revolver"
    ATT.UC_TPIKFreeLeftHandHoldType = "revolver"
    ATT.Model = "models/weapons/arccw/atts/tactical_lhik.mdl"
    ATT.ModelOffset = Vector(2, -4.1, -1.9)
    ATT.UC_ModelAngleOffset = Angle(10, 5, 0)
    ATT.ModelAngleOffset = ARC9.UC.AttachmentAngle(ATT.UC_ModelAngleOffset)

    ARC9.LoadAttachment(ATT, "ud_uzi_body_mini")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_uzi_cal_22")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Category = "ud_uzi_caliber"
    ATT.Icon = Material("entities/att/uc_bullets/22lr.png", "smooth mips")
    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.22_long_rifle")
    ATT.Ammo = "plinking"
    ATT.DamageMaxMult = ARC9.UC.CalConv("9mm", "22lr", "max")
    ATT.DamageMinMult = ARC9.UC.CalConv("9mm", "22lr", "min")
    ATT.PenetrationMult = ARC9.UC.CalConv("9mm", "22lr", "pen")
    ATT.TracerColor = Color(255, 255, 255, 200)
    ATT.TracerSize = 0.5
    ATT.PhysBulletMuzzleVelocity = 365 * ARC9.UC.Meter
    ATT.RecoilMult = 0.25
    ATT.VisualRecoilMult = 0.25
    ATT.RPMMult = 1.5
    ATT.SpeedMultShooting = 1.2
    ATT.ClipSizeMult = 1.2
    ATT.ShellModel = "models/weapons/arc9/uc/uc_shells/22lr.mdl"
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

    ARC9.LoadAttachment(ATT, "ud_uzi_cal_22")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_uzi_cal_45")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.subsonic"] = "",
    }
    ATT.ActivateElements = {"uzi_45", "cal_subsonic"}

    ATT.Category = "ud_uzi_caliber"
    ATT.UC_DefaultSlots = {
        [8] = {Name = "uc.default.16_round_mag", Icon = Material("entities/att/acwatt_ud_uzi_mag_32.png", "smooth mips")},
    }
    ATT.Icon = Material("entities/att/uc_bullets/45acp.png", "smooth mips")
    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.45_acp")
    ATT.DamageMaxMult = ARC9.UC.CalConv("9mm", "45acp", "max")
    ATT.DamageMinMult = ARC9.UC.CalConv("9mm", "45acp", "min")
    ATT.PenetrationMult = ARC9.UC.CalConv("9mm", "45acp", "pen")
    ATT.PhysBulletMuzzleVelocity = 320 * ARC9.UC.Meter
    ATT.RangeMinMult = 0.5 * .75
    ATT.RangeMaxMult = .75
    ATT.RecoilMult = 1.5
    ATT.RecoilRandomSideMult = 1.5
    ATT.RPMMult = 0.83
    ATT.ClipSize = 16
    local path = ")^weapons/arccw_ud/uzi/"
    ATT.ShootSoundSilenced = "weapons/arccw_ud/glock/fire_supp.ogg"
    ATT.ShootSound = {path .. "fire-45-01.ogg", path .. "fire-45-02.ogg", path .. "fire-45-03.ogg", path .. "fire-45-04.ogg", path .. "fire-45-05.ogg", path .. "fire-45-06.ogg"}
    local tail = ")^/arccw_uc/common/45acp/"
    ATT.DistantShootSound = { tail .. "fire-dist-45acp-pistol-ext-01.ogg", tail .. "fire-dist-45acp-pistol-ext-02.ogg", tail .. "fire-dist-45acp-pistol-ext-03.ogg", tail .. "fire-dist-45acp-pistol-ext-04.ogg", tail .. "fire-dist-45acp-pistol-ext-05.ogg", tail .. "fire-dist-45acp-pistol-ext-06.ogg" }

    ARC9.LoadAttachment(ATT, "ud_uzi_cal_45")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_uzi_mag_100")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["uc.jam"] = "",
    }
    ATT.ActivateElements = {"ud_uzi_100_mag"}
    ATT.ExcludeElements = {"uzi_45", "uzi_22"}

    ATT.SortOrder = 100
    ATT.Icon = Material("entities/att/acwatt_ud_uzi_mag_100.png", "smooth mips")
    ATT.Category = "ud_uzi_mag"
    ATT.AimDownSightsTimeMult = 1.5
    ATT.SprintToFireTimeMult = 1.5
    ATT.ReloadTimeMult = 1.4
    ATT.SpeedMult = 0.9
    ATT.UC_DrawTimeMult = 1.25
    ATT.ClipSize = 100
    ATT.SwayMult = 2
    ATT.SpeedMultShooting = 0.85
    ATT.UC_HipDispersionMult = 1.5
    ATT.Malfunction = true
    ATT.MalfunctionMeanShotsToFailMult = 0.75
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if string.StartsWith(anim, "reload") then
            return anim .. "_100"
        end
    end

    ATT.UC_MalfunctionVarianceMult = 1.5
    ATT.UC_HideIfBlocked = true

    ARC9.LoadAttachment(ATT, "ud_uzi_mag_100")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_uzi_mag_20")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_uzi_16_mag"}
    ATT.ExcludeElements = {"uzi_45", "uzi_22"}

    ATT.SortOrder = 20
    ATT.Icon = Material("entities/att/acwatt_ud_uzi_mag_20.png", "smooth mips")
    ATT.Category = "ud_uzi_mag"
    ATT.AimDownSightsTimeMult = 0.9
    ATT.SprintToFireTimeMult = 0.9
    ATT.ReloadTimeMult = 0.85
    ATT.ClipSize = 20
    ATT.SwayMult = 0.75
    ATT.SpeedMultShooting = 1.1
    ATT.UC_HipDispersionMult = 0.75
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if string.StartsWith(anim, "reload") then
            return anim .. "_16"
        end
    end
    ATT.UC_HideIfBlocked = true

    ARC9.LoadAttachment(ATT, "ud_uzi_mag_20")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_uzi_mag_40")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_uzi_41_mag"}
    ATT.ExcludeElements = {"uzi_45", "uzi_22"}

    ATT.SortOrder = 40
    ATT.Icon = Material("entities/att/acwatt_ud_uzi_mag_40.png", "smooth mips")
    ATT.Category = "ud_uzi_mag"
    ATT.AimDownSightsTimeMult = 1.08
    ATT.SprintToFireTimeMult = 1.08
    ATT.ReloadTimeMult = 1.12
    ATT.ClipSize = 40
    ATT.SwayMult = 1.15
    ATT.UC_HipDispersionMult = 1.25
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if string.StartsWith(anim, "reload") then
            return anim .. "_41"
        end
    end
    ATT.UC_HideIfBlocked = true

    ARC9.LoadAttachment(ATT, "ud_uzi_mag_40")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_uzi_mag_45_12")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_uzi_mag_20"}
    ATT.RequireElements = {{"uzi_45"}}

    ATT.SortOrder = 20
    ATT.Icon = Material("entities/att/acwatt_ud_uzi_mag_20.png", "smooth mips")
    ATT.Category = "ud_uzi_mag"
    ATT.AimDownSightsTimeMult = 0.9
    ATT.SprintToFireTimeMult = 0.9
    ATT.ReloadTimeMult = 0.85
    ATT.ClipSize = 12
    ATT.ClipSize_Priority = 2
    ATT.SwayMult = 0.75
    ATT.SpeedMultShooting = 1.1
    ATT.UC_HipDispersionMult = 0.75
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if string.StartsWith(anim, "reload") then
            return anim .. "_16"
        end
    end
    ATT.UC_HideIfBlocked = true

    ARC9.LoadAttachment(ATT, "ud_uzi_mag_45_12")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_uzi_mag_45_22")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_uzi_41_mag"}
    ATT.RequireElements = {{"uzi_45"}}

    ATT.SortOrder = 40
    ATT.Icon = Material("entities/att/acwatt_ud_uzi_mag_40.png", "smooth mips")
    ATT.Category = "ud_uzi_mag"
    ATT.AimDownSightsTimeMult = 1.08
    ATT.SprintToFireTimeMult = 1.08
    ATT.ReloadTimeMult = 1.12
    ATT.ClipSize = 22
    ATT.ClipSize_Priority = 2
    ATT.SwayMult = 1.15
    ATT.UC_HipDispersionMult = 1.25
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if string.StartsWith(anim, "reload") then
            return anim .. "_41"
        end
    end
    ATT.UC_HideIfBlocked = true

    ARC9.LoadAttachment(ATT, "ud_uzi_mag_45_22")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_uzi_stock_folded")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_uzi_folded_stock"}

    ATT.Icon = Material("entities/att/acwatt_ud_uzi_stock_folded.png", "smooth mips")
    ATT.Category = "ud_uzi_stock"
    ATT.InstallSound = "arccw_uc/common/stockslide.ogg"
    ATT.Free = true
    ATT.SortOrder = 2
    ATT.RecoilMult = 1.15
    ATT.RecoilRandomSideMult = 1.25
    ATT.VisualRecoilMult = 2
    ATT.SwayMult = 1.5
    ATT.AimDownSightsTimeMult = 0.85
    ATT.SprintToFireTimeMult = 0.85
    ATT.SpeedMultSights = 1.05
    ATT.SpeedMultShooting = 1.05
    ATT.DeployTimeMult = 0.75
    ATT.BarrelLengthAdd = -2

    ARC9.LoadAttachment(ATT, "ud_uzi_stock_folded")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_uzi_stock_polymer")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_ud_uzi_stock_solid.png", "smooth mips")
    ATT.Category = "ud_uzi_stock"
    ATT.SortOrder = 3
    ATT.RecoilMult = 0.85
    ATT.RecoilRandomSideMult = 0.75
    ATT.VisualRecoilMult = 0.75
    ATT.SwayMult = 0.75
    ATT.AimDownSightsTimeMult = 1.15
    ATT.SprintToFireTimeMult = 1.15
    ATT.SpeedMultSights = 0.95
    ATT.SpeedMultShooting = 0.95
    ATT.DeployTimeMult = 1.25

    ARC9.LoadAttachment(ATT, "ud_uzi_stock_polymer")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_uzi_stock_remove")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
    ATT.Category = "ud_uzi_stock"
    ATT.Free = true
    ATT.SortOrder = 1
    ATT.RecoilMult = 1.5
    ATT.RecoilRandomSideMult = 1.25
    ATT.VisualRecoilMult = 2
    ATT.SwayMult = 2
    ATT.AimDownSightsTimeMult = 0.75
    ATT.SprintToFireTimeMult = 0.75
    ATT.SpeedMultSights = 1.1
    ATT.SpeedMultShooting = 1.1
    ATT.DeployTimeMult = 0.75
    ATT.BarrelLengthAdd = -2

    ARC9.LoadAttachment(ATT, "ud_uzi_stock_remove")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_uzi_stock_wood")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_ud_uzi_stock_solid.png", "smooth mips")
    ATT.Category = "ud_uzi_stock"
    ATT.SortOrder = 4
    ATT.RecoilMult = 0.75
    ATT.RecoilRandomSideMult = 0.5
    ATT.VisualRecoilMult = 0.5
    ATT.SwayMult = 0.5
    ATT.AimDownSightsTimeMult = 1.25
    ATT.SprintToFireTimeMult = 1.25
    ATT.SpeedMultSights = 0.9
    ATT.SpeedMultShooting = 0.9
    ATT.DeployTimeMult = 1.25

    ARC9.LoadAttachment(ATT, "ud_uzi_stock_wood")
end
