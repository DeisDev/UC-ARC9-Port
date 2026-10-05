do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m1014_barrel_sawn")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["uc.nofs"] = "",
        ["uc.nomuzzle"] = "",
    }
    ATT.ActivateElements = {"ud_autoshotgun_barrel_sawnoff", "nomuzzle"}

    ATT.Icon = Material("entities/att/acwatt_ud_m1014_barrel_short.png", "smooth mips")
    ATT.Category = "ud_1014_barrel"
    ATT.SpreadMult = 2
    ATT.RecoilMult = 1.25
    ATT.RangeMaxMult = 0.5
    ATT.RangeMinMult = 0.5
    ATT.SwayMult = 0.5
    ATT.AimDownSightsTimeMult = 0.6
    ATT.SprintToFireTimeMult = 0.6
    ATT.SpeedMult = 1.05
    ATT.SpeedMultShooting = 1.2
    ATT.RPMMult = 240 / 220
    ATT.UC_HipDispersionMult = 0.75
    ATT.BarrelLengthAdd = -6
    -- Imprecise in sights without an optic
    ATT.UC_SightsDispersionHook = function(wep, spread)
        if !wep.Attachments[1].Installed then
            return spread + 50 * ARC9.UC.Dispersion
        end
    end
    ATT.Ignore = true

    ARC9.LoadAttachment(ATT, "ud_m1014_barrel_sawn")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m1014_barrel_short")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_autoshotgun_barrel_short"}

    ATT.Icon = Material("entities/att/acwatt_ud_m1014_barrel_short.png", "smooth mips")
    ATT.Category = "ud_1014_barrel"
    ATT.SpreadMult = 1.5
    ATT.RecoilMult = 1.1
    ATT.RangeMaxMult = 0.8
    ATT.RangeMinMult = 0.8
    ATT.SwayMult = 0.75
    ATT.AimDownSightsTimeMult = 0.75
    ATT.SprintToFireTimeMult = 0.75
    ATT.SpeedMult = 1.025
    ATT.SpeedMultShooting = 1.1
    ATT.UC_HipDispersionMult = 0.75
    ATT.BarrelLengthAdd = -4

    ARC9.LoadAttachment(ATT, "ud_m1014_barrel_short")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m1014_barrel_sport")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_autoshotgun_barrel_sport"}

    ATT.Icon = Material("entities/att/acwatt_ud_m1014_barrel_sport.png", "smooth mips")
    ATT.Category = "ud_1014_barrel"
    ATT.BarrelLengthAdd = 1
    ATT.RecoilRandomSideMult = 0.8
    ATT.RecoilMult = 0.9
    ATT.AimDownSightsTimeMult = 1.15
    ATT.SprintToFireTimeMult = 1.15
    ATT.SwayMult = 1.2
    ATT.SpreadMult = 0.9
    ATT.RangeMinMult = 2
    ATT.RPMMult = 180 / 220
    ATT.UC_HipDispersionMult = 1.15

    ARC9.LoadAttachment(ATT, "ud_m1014_barrel_sport")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m1014_handguard_sport")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_m1014_handguard_sport"}

    ATT.Icon = Material("", "smooth mips")
    ATT.Category = "ud_1014_handguard"
    ATT.SortOrder = 999
    ATT.AimDownSightsTimeMult = 0.85
    ATT.SprintToFireTimeMult = 0.85
    ATT.SpeedMultShooting = 0.9
    ATT.SpeedMultSights = 0.9

    ARC9.LoadAttachment(ATT, "ud_m1014_handguard_sport")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m1014_stock_buffer")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_autoshotgun_stock_buffer"}

    ATT.Icon = Material("entities/att/acwatt_ud_m1014_stock_buffer.png", "smooth mips")
    ATT.Category = "ud_1014_stock"
    ATT.Free = true
    ATT.SortOrder = -1
    ATT.SpeedMult = 1.05
    ATT.AimDownSightsTimeMult = 0.5
    ATT.SprintToFireTimeMult = 0.5
    ATT.DeployTimeMult = 0.75
    ATT.RecoilMult = 1.35
    ATT.RecoilRandomSideMult = 2
    ATT.SpeedMultSights = 1.2
    ATT.SpeedMultShooting = 1.15
    ATT.BarrelLengthAdd = -12
    ATT.SwayMult = 3
    ATT.HoldType = "shotgun"
    ATT.HoldTypeSights = "ar2"

    ARC9.LoadAttachment(ATT, "ud_m1014_stock_buffer")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m1014_stock_gripstock")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_autoshotgun_stock_gripstock"}

    ATT.Icon = Material("entities/att/acwatt_ud_m1014_stock_buffer.png", "smooth mips")
    ATT.Category = "ud_1014_stock"
    ATT.RecoilMult = .85
    ATT.SpeedMultSights = .9
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1

    ARC9.LoadAttachment(ATT, "ud_m1014_stock_gripstock")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m1014_stock_in")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_autoshotgun_stock_in"}

    ATT.Icon = Material("entities/att/acwatt_ud_m1014_stock_in.png", "smooth mips")
    ATT.Category = "ud_1014_stock"
    ATT.InstallSound = "arccw_uc/common/stockslide.ogg"
    ATT.Free = true
    ATT.SortOrder = 999
    ATT.RecoilMult = 1.1
    ATT.RecoilRandomSideMult = 1.25
    ATT.SpeedMultSights = 1.1
    ATT.SpeedMultShooting = 1.1
    ATT.SwayMult = 1.5
    ATT.BarrelLengthAdd = -8

    ARC9.LoadAttachment(ATT, "ud_m1014_stock_in")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m1014_stock_sport")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_autoshotgun_stock_sport"}

    ATT.Icon = Material("entities/att/acwatt_ud_m1014_stock_sport.png", "smooth mips")
    ATT.Category = "ud_1014_stock"
    ATT.RecoilMult = .8
    ATT.SwayMult = .8
    ATT.SpeedMultSights = .85
    ATT.DeployTimeMult = 1.25
    ATT.Hook_TranslateAnimation = function(wep, anim)
        return anim .. "_stock"
    end

    ARC9.LoadAttachment(ATT, "ud_m1014_stock_sport")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m1014_tube_ext")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_autoshotgun_tube_long"}

    ATT.Icon = Material("entities/att/acwatt_ud_m1014_tube_ext.png", "smooth mips")
    ATT.Category = "ud_1014_tube"
    ATT.ClipSize = 7
    ATT.SwayMult = 1.5
    ATT.AimDownSightsTimeMult = 1.15
    ATT.SprintToFireTimeMult = 1.15
    ATT.ReloadTimeMult = 1.15
    ATT.SpeedMultSights = 0.75

    ARC9.LoadAttachment(ATT, "ud_m1014_tube_ext")
end
