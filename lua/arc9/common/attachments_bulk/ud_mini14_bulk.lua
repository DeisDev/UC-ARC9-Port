do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_mini14_barrel_long")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_ud_mini14_barrel_long.png", "smooth mips")
    ATT.SortOrder = 24
    ATT.Category = "ud_mini14_barrel"
    ATT.AimDownSightsTimeMult = 1.25
    ATT.SprintToFireTimeMult = 1.25
    ATT.RecoilMult = 0.9
    ATT.SpreadMult = 0.5
    ATT.RangeMaxMult = 1.2
    ATT.RangeMinMult = 1.2
    ATT.SwayMult = 1.5
    ATT.BarrelLengthAdd = 4

    ARC9.LoadAttachment(ATT, "ud_mini14_barrel_long")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_mini14_barrel_short")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_ud_mini14_barrel_short.png", "smooth mips")
    ATT.SortOrder = 18
    ATT.Category = "ud_mini14_barrel"
    ATT.AimDownSightsTimeMult = 0.8
    ATT.SprintToFireTimeMult = 0.8
    ATT.RecoilMult = 1.1
    ATT.SpreadMult = 1.5
    ATT.RangeMaxMult = 0.5
    ATT.RangeMinMult = 0.5
    ATT.SwayMult = 0.75
    ATT.SpeedMultSights = 1.1
    ATT.BarrelLengthAdd = -4

    ARC9.LoadAttachment(ATT, "ud_mini14_barrel_short")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_mini14_barrel_stub")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["uc.nofs"] = "",
        ["uc.nomuzzle"] = "",
    }
    ATT.ActivateElements = {"nomuzzle"}

    ATT.Icon = Material("entities/att/acwatt_ud_mini14_barrel_stub.png", "smooth mips")
    ATT.SortOrder = 15
    ATT.Category = "ud_mini14_barrel"
    ATT.AimDownSightsTimeMult = 0.65
    ATT.SprintToFireTimeMult = 0.65
    ATT.RecoilMult = 1.25
    ATT.SpreadMult = 3
    ATT.RangeMaxMult = 0.25
    ATT.RangeMinMult = 0.25
    ATT.SwayMult = 0.5
    ATT.SpeedMultSights = 1.25
    ATT.BarrelLengthAdd = -8
    -- Imprecise in sights without an optic
    ATT.UC_SightsDispersionHook = function(wep, spread)
        if !wep.Attachments[1].Installed then
            return spread + 50 * ARC9.UC.Dispersion
        end
    end

    ARC9.LoadAttachment(ATT, "ud_mini14_barrel_stub")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_mini14_mag_10")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_mini14_mag_10"}
    ATT.ExcludeElements = {"mini14_762", "mini14_22lr"}

    ATT.SortOrder = 10
    ATT.Icon = Material("entities/att/acwatt_ud_mini14_mag_10.png", "smooth mips")
    ATT.Category = "ud_mini14_mag"
    ATT.AimDownSightsTimeMult = 0.85
    ATT.SprintToFireTimeMult = 0.85
    ATT.ReloadTimeMult = 0.9
    ATT.ClipSize = 10
    ATT.SwayMult = 0.75
    ATT.UC_HipDispersionMult = 0.7
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if anim == "reload" or anim == "reload_empty" then
            return anim .. "_10"
        end
    end
    ATT.UC_HideIfBlocked = true

    ARC9.LoadAttachment(ATT, "ud_mini14_mag_10")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_mini14_mag_10_762")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_mini14_mag_10"}
    ATT.RequireElements = {{"mini14_762"}}

    ATT.SortOrder = 10
    ATT.Icon = Material("entities/att/acwatt_ud_mini14_mag_10.png", "smooth mips")
    ATT.Category = "ud_mini14_mag"
    ATT.AimDownSightsTimeMult = 0.85
    ATT.SprintToFireTimeMult = 0.85
    ATT.ReloadTimeMult = 0.9
    ATT.ClipSize = 10
    ATT.SwayMult = 0.75
    ATT.MalfunctionMeanShotsToFailMult = 1.5
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if anim == "reload" or anim == "reload_empty" then
            return anim .. "_10"
        end
    end
    ATT.UC_HideIfBlocked = true

    ARC9.LoadAttachment(ATT, "ud_mini14_mag_10_762")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_mini14_mag_30")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_mini14_mag_30"}
    ATT.ExcludeElements = {"mini14_762", "mini14_22lr"}

    ATT.SortOrder = 30
    ATT.Icon = Material("entities/att/acwatt_ud_mini14_mag_30.png", "smooth mips")
    ATT.Category = "ud_mini14_mag"
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.ReloadTimeMult = 1.15
    ATT.ClipSize = 30
    ATT.SwayMult = 1.5
    ATT.SpeedMultShooting = 0.95
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if anim == "reload" or anim == "reload_empty" then
            return anim .. "_30"
        end
    end
    ATT.UC_HideIfBlocked = true

    ARC9.LoadAttachment(ATT, "ud_mini14_mag_30")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_mini14_mag_30_762")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_mini14_mag_30_762"}
    ATT.RequireElements = {{"mini14_762"}}

    ATT.SortOrder = 30
    ATT.Icon = Material("entities/att/acwatt_ud_mini14_mag_30_762.png", "smooth mips")
    ATT.Category = "ud_mini14_mag"
    ATT.AimDownSightsTimeMult = 1.15
    ATT.SprintToFireTimeMult = 1.15
    ATT.ReloadTimeMult = 1.2
    ATT.ClipSize = 30
    ATT.SwayMult = 1.5
    ATT.SpeedMultShooting = 0.95
    ATT.MalfunctionMeanShotsToFailMult = 0.75
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if anim == "reload" or anim == "reload_empty" then
            return anim .. "_762"
        end
    end
    ATT.UC_HideIfBlocked = true

    ARC9.LoadAttachment(ATT, "ud_mini14_mag_30_762")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_mini14_mag_30_pmag")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_mini14_mag_42"}
    ATT.ExcludeElements = {"mini14_762", "mini14_22lr"}

    ATT.SortOrder = 29
    ATT.Icon = Material("entities/att/acwatt_ud_mini14_mag_30_polymer.png", "smooth mips")
    ATT.Category = "ud_mini14_mag"
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.ReloadTimeMult = 1.1
    ATT.ClipSize = 30
    ATT.SwayMult = 1.58
    ATT.SpeedMultShooting = 0.95
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if anim == "reload" or anim == "reload_empty" then
            return anim .. "_30_tac"
        end
    end
    ATT.UC_HideIfBlocked = true

    ARC9.LoadAttachment(ATT, "ud_mini14_mag_30_pmag")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_mini14_mag_42")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_mini14_mag_42"}
    ATT.ExcludeElements = {"mini14_762", "mini14_22lr"}

    ATT.SortOrder = 30
    ATT.Icon = Material("entities/att/acwatt_ud_mini14_mag_30_polymer.png", "smooth mips")
    ATT.Category = "ud_mini14_mag"
    ATT.ClipSize = 42
    ATT.AimDownSightsTimeMult = 1.2
    ATT.SprintToFireTimeMult = 1.2
    ATT.ReloadTimeMult = 1.25
    ATT.SwayMult = 1.75
    ATT.SpeedMult = 0.975
    ATT.SpeedMultShooting = 0.925
    ATT.DeployTimeMult = 1.15
    ATT.UC_HipDispersionMult = 1.25
    ATT.Ignore = true
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if anim == "reload" or anim == "reload_empty" then
            return anim .. "_30_tac"
        end
    end
    ATT.UC_HideIfBlocked = true

    ARC9.LoadAttachment(ATT, "ud_mini14_mag_42")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_mini14_mag_60")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["uc.jam"] = "",
    }
    ATT.ActivateElements = {"ud_mini14_mag_60"}
    ATT.ExcludeElements = {"mini14_762", "mini14_22lr"}

    ATT.SortOrder = 30
    ATT.Icon = Material("entities/att/acwatt_ud_mini14_mag_60.png", "smooth mips")
    ATT.Category = "ud_mini14_mag"
    ATT.ClipSize = 60
    ATT.AimDownSightsTimeMult = 1.2
    ATT.SprintToFireTimeMult = 1.2
    ATT.ReloadTimeMult = 1.5
    ATT.SwayMult = 2
    ATT.SpeedMult = 0.95
    ATT.SpeedMultShooting = 0.9
    ATT.DeployTimeMult = 1.25
    ATT.UC_HipDispersionMult = 1.5
    ATT.Malfunction = true
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if anim == "reload" or anim == "reload_empty" then
            return anim .. "_60"
        end
    end
    ATT.UC_HideIfBlocked = true

    ARC9.LoadAttachment(ATT, "ud_mini14_mag_60")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_mini14_receiver_22lr")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_mini14_mag_15_22lr", "ud_mini14_receiver_22lr", "mini14_22lr"}

    ATT.Icon = Material("entities/att/uc_bullets/22lr.png", "smooth mips")
    ATT.Category = "ud_mini14_receiver"
    ATT.UC_DefaultSlots = {
        [7] = {Name = "uc.default.15_round_mag", Icon = Material("entities/att/acwatt_ud_mini14_mag_15_22lr.png", "smooth mips")},
    }
    ATT.AimDownSightsTimeMult = 0.8
    ATT.SprintToFireTimeMult = 0.8
    ATT.ReloadTimeMult = 0.85
    ATT.SwayMult = 0.75
    ATT.DamageMaxMult = ARC9.UC.CalConv("556", "22lr", "max")
    ATT.DamageMinMult = ARC9.UC.CalConv("556", "22lr", "min")
    ATT.PenetrationMult = ARC9.UC.CalConv("556", "22lr", "pen")
    ATT.RangeMaxMult = 0.5
    ATT.RangeMinMult = 0.5
    ATT.RecoilMult = 0.25
    ATT.VisualRecoilMult = 0.25
    ATT.RPMMult = 1000 / 540
    ATT.SpeedMultShooting = 1.2
    ATT.UC_HipDispersionMult = 0.6
    ATT.ClipSize = 15
    ATT.Ammo = "plinking"
    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.22_long_rifle")
    ATT.ShellModel = "models/weapons/arccw/uc_shells/22lr.mdl"
    ATT.ShellScale = 1
    ATT.ShellSounds = ARC9.TinyShellSoundsTable
    ATT.TracerColor = Color(255, 255, 255, 200)
    ATT.TracerSize = 0.5
    ATT.PhysBulletMuzzleVelocity = 370 * ARC9.UC.Meter
    local path = "arccw_uc/common/"
    local fire22 = {path .. "fire-22-01.ogg",path .. "fire-22-02.ogg",path .. "fire-22-03.ogg",path .. "fire-22-04.ogg",path .. "fire-22-05.ogg",path .. "fire-22-06.ogg"}
    local fire22sup = {path .. "fire-22-sup-01.ogg",path .. "fire-22-sup-02.ogg",path .. "fire-22-sup-03.ogg",path .. "fire-22-sup-04.ogg",path .. "fire-22-sup-05.ogg",path .. "fire-22-sup-06.ogg"}
    ATT.ShootSoundSilenced = fire22sup
    ATT.ShootSound = fire22
    local fire22dist = {path .. "fire-22-dist-01.ogg", path .. "fire-22-dist-02.ogg", path .. "fire-22-dist-03.ogg", path .. "fire-22-dist-04.ogg", path .. "fire-22-dist-05.ogg", path .. "fire-22-dist-06.ogg"}
    ATT.DistantShootSound = fire22dist
    local fire22distint = {path .. "fire-dist-int-pistol-light-01.ogg", path .. "fire-dist-int-pistol-light-02.ogg", path .. "fire-dist-int-pistol-light-03.ogg", path .. "fire-dist-int-pistol-light-04.ogg", path .. "fire-dist-int-pistol-light-05.ogg", path .. "fire-dist-int-pistol-light-06.ogg"}
    ATT.DistantShootSoundIndoor = fire22distint
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if anim == "reload" or anim == "reload_empty" then
            return anim .. "_15_22lr"
        end
    end

    ARC9.LoadAttachment(ATT, "ud_mini14_receiver_22lr")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_mini14_receiver_762")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["uc.jam"] = "",
    }
    ATT.ActivateElements = {"ud_mini14_receiver_762", "mini14_762"}

    ATT.SortOrder = 30
    ATT.Icon = Material("entities/att/uc_bullets/762x39.png", "smooth mips")
    ATT.Category = "ud_mini14_receiver"
    ATT.ReloadTimeMult = 1.15
    ATT.SpeedMultShooting = 0.8
    ATT.RPMMult = 360 / 540
    ATT.RecoilMult = 1.25
    ATT.RecoilRandomSideMult = 1.5
    ATT.UC_HipDispersionMult = 1.5
    ATT.DamageMaxMult = ARC9.UC.CalConv("556", "762_39", "max")
    ATT.DamageMinMult = ARC9.UC.CalConv("556", "762_39", "min")
    ATT.PenetrationMult = ARC9.UC.CalConv("556", "762_39", "pen")
    ATT.RangeMaxMult = 2
    ATT.RangeMinMult = 2
    ATT.Malfunction = true
    ATT.Ammo = "ar2"
    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.7_62x39mm_soviet")
    ATT.ShellModel = "models/weapons/arccw/uc_shells/762x39.mdl"
    ATT.ShellScale = 0.666
    ATT.ShootSoundSilenced = "weapons/arccw_ud/mini14/fire_762_supp.ogg"
    ATT.ShootSound = "weapons/arccw_ud/mini14/fire_762.ogg"
    local tail = ")/arccw_uc/common/762x39/"
    ATT.DistantShootSound = { tail .. "fire-dist-762x39-rif-ext-01.ogg", tail .. "fire-dist-762x39-rif-ext-02.ogg", tail .. "fire-dist-762x39-rif-ext-03.ogg", tail .. "fire-dist-762x39-rif-ext-04.ogg", tail .. "fire-dist-762x39-rif-ext-05.ogg", tail .. "fire-dist-762x39-rif-ext-06.ogg" }

    ATT.UC_MalfunctionVarianceMult = 1.5

    ARC9.LoadAttachment(ATT, "ud_mini14_receiver_762")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_mini14_receiver_auto")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.auto"] = "",
    }
    ATT.ActivateElements = {"ud_mini14_receiver_auto"}

    ATT.Icon = Material("entities/att/acwatt_ud_mini14_receiver_auto.png", "smooth mips")
    ATT.Category = "ud_mini14_receiver"
    ATT.Firemodes = {
        {
            Mode = -1,
        },
        {
            Mode = 3,
            RecoilHook = ARC9.UC.ShotRecoil({
                [1] = 0.9,
                [2] = 0.8,
                [3] = 0.7,
            }),
        },
        {
            Mode = 1,
        }
    }
    ATT.HookP_ClassChange = function(wep, class) return "uc.class.assault_rifle" end
    ATT.RPMMult = 750 / 540
    ATT.RecoilRandomSideMult = 1.5
    ATT.UC_HipDispersionMult = 1.25
    ATT.SpreadMult = 2
    ATT.SpeedMultShooting = 0.85
    ATT.MalfunctionMeanShotsToFailMult = 0.75

    ATT.UC_MalfunctionVarianceMult = 1.25

    ARC9.LoadAttachment(ATT, "ud_mini14_receiver_auto")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_mini14_stock_polymer")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_mini14_stock_polymer"}

    ATT.Icon = Material("entities/att/acwatt_ud_mini14_stock.png", "smooth mips")
    ATT.Category = "ud_mini14_stock"
    ATT.AimDownSightsTimeMult = 0.9
    ATT.SprintToFireTimeMult = 0.9
    ATT.SpeedMult = 1.05
    ATT.SpeedMultSights = 1.1
    ATT.RecoilMult = 1.15

    ARC9.LoadAttachment(ATT, "ud_mini14_stock_polymer")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_mini14_stock_sawnoff")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_mini14_stock_sawnoff"}

    ATT.Icon = Material("entities/att/acwatt_ud_mini14_stock_sawnoff.png", "smooth mips")
    ATT.Category = "ud_mini14_stock"
    ATT.AimDownSightsTimeMult = 0.75
    ATT.SprintToFireTimeMult = 0.75
    ATT.DeployTimeMult = 0.75
    ATT.RecoilMult = 1.25
    ATT.RecoilRandomSideMult = 2.25
    ATT.SwayMult = 1.85
    ATT.SpeedMultSights = 1.33
    ATT.SpeedMultShooting = 1.2
    ATT.BarrelLengthAdd = -4
    ATT.ActivePos = Vector(0.473147, 2.000000, 0.525483)

    ARC9.LoadAttachment(ATT, "ud_mini14_stock_sawnoff")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_mini14_stock_tactical")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_mini14_stock_tactical"}

    ATT.Icon = Material("entities/att/acwatt_ud_mini14_stock_tactical_wood.png", "smooth mips")
    ATT.Category = "ud_mini14_stock"
    ATT.AimDownSightsTimeMult = 0.9
    ATT.SprintToFireTimeMult = 0.9
    ATT.SpeedMult = 1.15
    ATT.SpeedMultSights = 1.1
    ATT.DeployTimeMult = 0.7
    ATT.RecoilMult = 1.2
    ATT.SwayMult = 1.5
    ATT.Ignore = false

    ARC9.LoadAttachment(ATT, "ud_mini14_stock_tactical")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_mini14_stock_tactical_polymer")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_mini14_stock_tactical_polymer"}

    ATT.Icon = Material("entities/att/acwatt_ud_mini14_stock_tactical.png", "smooth mips")
    ATT.Category = "ud_mini14_stock"
    ATT.AimDownSightsTimeMult = 0.75
    ATT.SprintToFireTimeMult = 0.75
    ATT.SpeedMult = 1.05
    ATT.SpeedMultSights = 1.2
    ATT.SpeedMultShooting = 1.1
    ATT.RecoilMult = 1.33
    ATT.SwayMult = 1.2
    ATT.Ignore = false

    ARC9.LoadAttachment(ATT, "ud_mini14_stock_tactical_polymer")
end
