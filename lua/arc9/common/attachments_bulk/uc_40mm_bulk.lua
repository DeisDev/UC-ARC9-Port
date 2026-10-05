do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_40mm_airburst")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.40mm.airburst"] = "",
        ["uc.40mm.proximity"] = "",
    }
    ATT.CustomCons = {
        ["uc.40mm.mindmg"] = "",
        ["uc.40mm.arm"] = "",
        ["uc.40mm.drag.high"] = "",
    }
    ATT.ActivateElements = {"40mm_airburst"}

    ATT.Icon = Material("entities/att/arccw_uc_40mm_generic.png", "mips smooth")
    ATT.Category = "uc_40mm"
    ATT.ShootEnt = "arc9_uc_40mm_airburst"
    ATT.ShootEntForceMult = 0.75
    ATT.ShootPitchMult = 0.9

    ARC9.LoadAttachment(ATT, "uc_40mm_airburst")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_40mm_buckshot")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.40mm.buckshot"] = "",
    }
    ATT.ActivateElements = {"40mm_buckshot"}

    ATT.Icon = Material("entities/att/arccw_uc_40mm_generic.png", "mips smooth")
    ATT.Category = "uc_40mm"
    ATT.ShootEnt = false
    ATT.PhysBulletMuzzleVelocity = 200 * ARC9.UC.Meter
    ATT.Num = 20
    ATT.DamageMax = 18 * 20
    ATT.DamageMin = 6 * 20
    ATT.RangeMax = 50 * ARC9.UC.Meter
    ATT.RangeMin = 5 * ARC9.UC.Meter
    ATT.HullSize = 0.5
    ATT.Spread = 50 * ARC9.UC.MOA
    ATT.ShootSound = ")^/arccw_uc/common/gl_fire_buck.ogg"
    ATT.DistantShootSound = ")^/arccw_uc/common/gl_fire_buck_dist.ogg"
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if anim == "reload" or anim == "reload_empty" then
            return anim .. "_shotgun"
        end
    end

    ARC9.LoadAttachment(ATT, "uc_40mm_buckshot")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_40mm_caseless")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"40mm_caseless"}

    ATT.Icon = Material("entities/att/arccw_uc_40mm_caseless.png", "mips smooth")
    ATT.Category = "uc_40mm"
    ATT.ReloadTimeMult = 0.78
    ATT.ShootEntForceMult = 0.85
    ATT.DamageMaxMult = 0.75
    ATT.DamageMinMult = 0.75
    ATT.ShootPitchMult = 1.1
    ATT.Hook_TranslateAnimation = function(wep, anim)
        if anim == "reload" or anim == "reload_empty" then
            return anim .. "_caseless"
        end
    end

    ARC9.LoadAttachment(ATT, "uc_40mm_caseless")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_40mm_dp")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.40mm.hedp"] = "",
        ["uc.40mm.impact"] = "",
    }
    ATT.ActivateElements = {"40mm_dp"}

    ATT.Icon = Material("entities/att/arccw_uc_40mm_generic.png", "mips smooth")
    ATT.Category = "uc_40mm"
    ATT.ShootEnt = "arc9_uc_40mm_dp"
    ATT.DamageMaxMult = 0.6
    ATT.DamageMinMult = 0.6

    ARC9.LoadAttachment(ATT, "uc_40mm_dp")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_40mm_dummy")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.infiniteammo"] = "",
    }
    ATT.CustomCons = {
        ["uc.40mm.nodmg"] = "",
    }
    ATT.ActivateElements = {"40mm_dummy"}

    ATT.Icon = Material("entities/att/arccw_uc_40mm_generic.png", "mips smooth")
    ATT.Category = "uc_40mm"
    ATT.SortOrder = -9001
    ATT.ShootEnt = "arc9_uc_40mm_dummy"
    ATT.RecoilMult = 0.5
    ATT.ReloadTimeMult = 0.8
    ATT.InfiniteAmmo = true

    ARC9.LoadAttachment(ATT, "uc_40mm_dummy")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_40mm_flash")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.40mm.flash"] = "",
    }
    ATT.CustomCons = {
        ["uc.40mm.nodmg"] = "",
    }
    ATT.ActivateElements = {"40mm_flash"}

    ATT.Icon = Material("entities/att/arccw_uc_40mm_generic.png", "mips smooth")
    ATT.Category = "uc_40mm"
    ATT.ShootEnt = "arc9_uc_40mm_flash"

    ARC9.LoadAttachment(ATT, "uc_40mm_flash")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_40mm_hornetnest")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.40mm.hornet"] = "",
    }
    ATT.ActivateElements = {"40mm_hornetnest"}

    ATT.Icon = Material("entities/att/arccw_uc_40mm_generic.png", "mips smooth")
    ATT.Category = "uc_40mm"
    ATT.ShootEnt = false
    ATT.PhysBulletMuzzleVelocity = ARC9.UC.StdDmg["22lr"].vel * ARC9.UC.Meter
    ATT.Num = 16
    ATT.DamageMax = 12 * 16
    ATT.DamageMin = 5 * 16
    ATT.RangeMax = 60 * ARC9.UC.Meter
    ATT.RangeMin = 15 * ARC9.UC.Meter
    ATT.HullSize = 0.1
    ATT.Spread = 25 * ARC9.UC.MOA
    ATT.RecoilMult = 0.4
    ATT.ShootSound = ")^/arccw_uc/common/gl_fire_hornet.ogg"
    ATT.DistantShootSound = ")^/arccw_uc/common/gl_fire_hornet_dist.ogg"

    ARC9.LoadAttachment(ATT, "uc_40mm_hornetnest")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_40mm_hv")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.40mm.drag.low"] = "",
    }
    ATT.CustomCons = {
        ["uc.40mm.blast.low"] = "",
    }
    ATT.ActivateElements = {"40mm_hv"}

    ATT.Icon = Material("entities/att/arccw_uc_40mm_generic.png", "mips smooth")
    ATT.Category = "uc_40mm"
    ATT.ShootEnt = "arc9_uc_40mm_hv"
    ATT.DamageMaxMult = 0.85
    ATT.DamageMinMult = 0.85
    ATT.ShootEntForceMult = 2
    ATT.ShootPitchMult = 1.15

    ARC9.LoadAttachment(ATT, "uc_40mm_hv")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_40mm_incendiary")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.40mm.incendiary"] = "",
    }
    ATT.CustomCons = {
        ["uc.40mm.mindmg"] = "",
    }
    ATT.ActivateElements = {"40mm_incendiary"}

    ATT.Icon = Material("entities/att/arccw_uc_40mm_generic.png", "mips smooth")
    ATT.Category = "uc_40mm"
    ATT.ShootEnt = "arc9_uc_40mm_incendiary"

    ARC9.LoadAttachment(ATT, "uc_40mm_incendiary")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_40mm_napalm")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.40mm.napalm"] = "",
        ["uc.40mm.proximity"] = "",
    }
    ATT.CustomCons = {
        ["uc.40mm.nodmg"] = "",
        ["uc.40mm.arm"] = "",
        ["uc.40mm.drag.high"] = "",
    }
    ATT.ActivateElements = {"40mm_napalm"}

    ATT.Icon = Material("entities/att/arccw_uc_40mm_generic.png", "mips smooth")
    ATT.Category = "uc_40mm"
    ATT.ShootEnt = "arc9_uc_40mm_napalm"
    ATT.ShootEntForceMult = 0.75
    ATT.ShootPitchMult = 0.95

    ARC9.LoadAttachment(ATT, "uc_40mm_napalm")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_40mm_smoke")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.40mm.smoke"] = "",
    }
    ATT.CustomCons = {
        ["uc.40mm.nodmg"] = "",
    }
    ATT.ActivateElements = {"40mm_smoke"}

    ATT.Icon = Material("entities/att/arccw_uc_40mm_generic.png", "mips smooth")
    ATT.Category = "uc_40mm"
    ATT.ShootEnt = "arc9_uc_40mm_smoke"

    ARC9.LoadAttachment(ATT, "uc_40mm_smoke")
end
