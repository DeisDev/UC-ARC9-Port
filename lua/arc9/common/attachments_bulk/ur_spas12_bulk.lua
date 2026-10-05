do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_spas12_barrel_hl")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_spas/barrel_std.png", "smooth mips")
    ATT.Category = "ur_spas12_barrel"
    ATT.SortOrder = 21.5
    ATT.CustomPros = {
        ["uc.slam"] = "",
        ["ur.ak.burst"] = "",
    }
    ATT.CustomCons = {["ur.spas12.pump"] = ""}

    ATT.Firemodes = {
        {
            Mode = -1,
            PrintName = ARC9:GetPhrase("fcg.slam.abbrev"),
            ManualAction = true,
            SlamFire = true,
            SpreadMult = 0.8,
            UC_HipDispersionMult = 0.8,
        },
        {
            Mode = 1,
            PrintName = ARC9:GetPhrase("ur.spas12.dbl.abbrev"),
            ManualAction = true,
            SpreadMult = 1.15,
            UC_HipDispersionMult = 0.8,
            NumMult = 2,
            AmmoPerShot = 2,
            DamageMaxMult = 2,
            DamageMinMult = 2,
            RecoilMult = 1.5,
            -- ArcCW's hook returns three values; its consumer takes the first.
            ShootSound = "weapons/arccw_ur/spas12/fire-both-01.wav",
            ShootSoundSilenced = "weapons/arccw_ur/spas12/fire-both-01.wav",
        },
    }
    ATT.Firemodes_Priority = 1
    ATT.CycleTimeMult = 1.15
    ATT.ActivePos = Vector(0.750000, 0.500000, -1.200000)
    ATT.ActivePos_Priority = 10
    ATT.ActivateElements = {"freeman"}

    ARC9.LoadAttachment(ATT, "ur_spas12_barrel_hl")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_spas12_barrel_short")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_spas/barrel_short.png", "smooth mips")
    ATT.Category = "ur_spas12_barrel"
    ATT.SortOrder = 18

    ATT.SpreadMult = 1.5
    ATT.RecoilMult = 1.1
    ATT.RangeMaxMult = 0.8
    ATT.RangeMinMult = 0.8
    ATT.SwayMult = 0.75
    ATT.AimDownSightsTimeMult = 0.75
    ATT.SprintToFireTimeMult = 0.75
    ATT.SpeedMult = 1.025
    ATT.SpeedMultShooting = 1.1
    ATT.BarrelLengthAdd = -4

    ARC9.LoadAttachment(ATT, "ur_spas12_barrel_short")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_spas12_barrel_sport")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_spas/barrel_comp.png", "smooth mips")
    ATT.Category = "ur_spas12_barrel"
    ATT.SortOrder = 22.5
    ATT.Ignore = true
    ATT.CustomCons = {
        ["uc.nomuzzle"] = "",
        ["ur.spas12.pump"] = "",
    }

    ATT.Firemodes = {
        {Mode = 1, PrintName = ARC9:GetPhrase("uc.base.fcg.pump"), ManualAction = true},
    }
    ATT.Firemodes_Priority = 1
    ATT.BarrelLengthAdd = 1
    ATT.RecoilRandomSideMult = 0.85
    ATT.RecoilMult = 0.75
    ATT.SwayMult = 1.2
    ATT.SpreadMult = 0.85
    ATT.RangeMinMult = 1.5
    ATT.CycleTimeMult = 0.9
    ATT.ActivateElements = {"nomuzzle"}

    ARC9.LoadAttachment(ATT, "ur_spas12_barrel_sport")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_spas12_charm_fear")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Category = "ur_spas12_charm"
    ATT.SortOrder = 999
    ATT.Free = true
    ATT.CustomPros = {["uc.cosmetic"] = ""}
    ATT.ActivePos = Vector(-1.000000, 1.000000, -3.000000)

    ARC9.LoadAttachment(ATT, "ur_spas12_charm_fear")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_spas12_charm_rail")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_spas/modernmount.png", "smooth mips")
    ATT.Category = "ur_spas12_charm"
    ATT.Free = true
    ATT.SortOrder = 998
    ATT.CustomPros = {["uc.cosmetic"] = ""}
    ATT.ActivateElements = {"rail_modern"}

    ARC9.LoadAttachment(ATT, "ur_spas12_charm_rail")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_spas12_stock_full")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_spas/stock_full.png", "smooth mips")
    ATT.Category = "ur_spas12_stock"
    ATT.RecoilMult = 0.8
    ATT.SwayMult = 0.8
    ATT.SpeedMultSights = 0.85
    ATT.DeployTimeMult = 1.25

    ARC9.LoadAttachment(ATT, "ur_spas12_stock_full")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_spas12_stock_in")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_spas/stock_fold.png", "smooth mips")
    ATT.Category = "ur_spas12_stock"
    ATT.InstallSound = "arccw_uc/common/stockslide.ogg"
    ATT.Free = true
    ATT.CustomCons = {["ur.spas12.folded"] = ""}
    ATT.RecoilMult = 1.2
    ATT.RecoilRandomSideMult = 1.5
    ATT.SpeedMultSights = 1.1
    ATT.SpeedMultShooting = 1.1
    ATT.AimDownSightsTimeMult = 0.5
    ATT.SprintToFireTimeMult = 0.5
    ATT.SwayMult = 2
    ATT.BarrelLengthAdd = -12
    -- Authored sight poses converted to ARC9's rotation order and unrotated position axes.
    ATT.IronSights = {
        Pos = Vector(-1.048848, -1.967819, -1.203164),
        Ang = Angle(1.502058, 2.998971, 0.078603),
        Magnification = 1.075,
        ViewModelFOV = ARC9.UC.SightViewModelFOV,
        CrosshairInSights = true,
    }
    ATT.HoldType = "shotgun"
    ATT.HoldTypeSights = "ar2"
    ATT.UC_SightsDispersionHook = function(wep, dispersion)
        if !wep.Attachments[1].Installed then return dispersion + 75 * ARC9.UC.Dispersion end
    end
    ATT.ActivateElements = {"spas12_foldstock"}

    ARC9.LoadAttachment(ATT, "ur_spas12_stock_in")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_spas12_stock_none")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_spas/grip_std.png", "smooth mips")
    ATT.Category = "ur_spas12_stock"
    ATT.Free = true
    ATT.SortOrder = -1
    ATT.SpeedMult = 1.05
    ATT.AimDownSightsTimeMult = 0.5
    ATT.SprintToFireTimeMult = 0.5
    ATT.DeployTimeMult = 0.75
    ATT.RecoilMult = 1.4
    ATT.RecoilRandomSideMult = 2
    ATT.SpeedMultSights = 1.2
    ATT.SpeedMultShooting = 1.15
    ATT.BarrelLengthAdd = -12
    ATT.SwayMult = 3

    ARC9.LoadAttachment(ATT, "ur_spas12_stock_none")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ur_spas12_tube_reduced")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.Icon = Material("entities/att/ur_spas/magsmall.png", "smooth mips")
    ATT.Category = "ur_spas12_tube"
    ATT.ClipSize = 6
    ATT.SwayMult = 0.75
    ATT.SpeedMultSights = 1.1
    ATT.AimDownSightsTimeMult = 0.85
    ATT.SprintToFireTimeMult = 0.85
    ATT.ReloadTimeMult = 0.9

    ARC9.LoadAttachment(ATT, "ur_spas12_tube_reduced")
end
