do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_charm_rmccharm")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Ignore = true
    ATT.Category = "charm"
    ATT.Free = true
    ATT.Model = "models/weapons/arccw/atts/charmbase.mdl"
    ATT.BoxModel = "models/Items/BoxSRounds.mdl"
    ATT.CharmModel = "models/weapons/arccw/atts/uc_rmccharm.mdl"
    ATT.CharmBone = "Charm"
    ATT.UC_CharmOffset = true
    ATT.CharmOffset = Vector(-1, 0, -0.2)
    ATT.CharmAngle = Angle(-160.28, 176.595, -99.408)
    ATT.CharmScale = 0.5

    ARC9.LoadAttachment(ATT, "uc_charm_rmccharm")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_charm_sgmanual")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["uc.manualonly"] = "",
    }
    ATT.ActivateElements = {"uc_manualonly", "needsmanual"}

    ATT.SortOrder = 1
    ATT.Icon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth")
    ATT.Category = "charm"
    ATT.UC_Compatible = function(wep)
        if (!wep.ManualAction and !wep.UC_CanManualAction) or !ARC9.UC.IsShotgun(wep) then return false end
    end
    ATT.Ignore = true

    ARC9.LoadAttachment(ATT, "uc_charm_sgmanual")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_charm_urbancharm")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Category = "charm"
    ATT.Free = true
    ATT.Model = "models/weapons/arccw/atts/charmbase.mdl"
    ATT.BoxModel = "models/Items/BoxSRounds.mdl"
    ATT.CharmModel = "models/weapons/arccw/atts/uc_urbancharm.mdl"
    ATT.CharmSkin = 0
    ATT.Ignore = true --Toggles need to be done
    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.common",
            CharmSkin = 0,
        },
        {
            PrintName = "uc.toggle.decay",
            CharmSkin = 1,
        },
        {
            PrintName = "uc.toggle.renewal",
            CharmSkin = 2,
        },
        {
            PrintName = "uc.toggle.anarchy",
            CharmSkin = 3,
        },
        {
            PrintName = "uc.toggle.ordinance",
            CharmSkin = 4,
        }
    }
    ATT.CharmBone = "Charm"
    ATT.UC_CharmOffset = true
    ATT.CharmOffset = Vector(-1.1, 0, -0.2)
    ATT.CharmAngle = Angle(-160.28, 176.595, -99.408)
    ATT.CharmScale = 0.5

    ARC9.LoadAttachment(ATT, "uc_charm_urbancharm")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_charm_urbancharm_anarchy")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Ignore = true
    ATT.Category = "charm"
    ATT.Free = true
    ATT.Model = "models/weapons/arccw/atts/charmbase.mdl"
    ATT.BoxModel = "models/Items/BoxSRounds.mdl"
    ATT.CharmModel = "models/weapons/arccw/atts/uc_urbancharm.mdl"
    ATT.CharmSkin = 3
    ATT.CharmBone = "Charm"
    ATT.UC_CharmOffset = true
    ATT.CharmOffset = Vector(-1.1, 0, -0.2)
    ATT.CharmAngle = Angle(-160.28, 176.595, -99.408)
    ATT.CharmScale = 0.5

    ARC9.LoadAttachment(ATT, "uc_charm_urbancharm_anarchy")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_charm_urbancharm_common")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Category = "charm"
    ATT.Free = true
    ATT.Model = "models/weapons/arccw/atts/charmbase.mdl"
    ATT.BoxModel = "models/Items/BoxSRounds.mdl"
    ATT.CharmModel = "models/weapons/arccw/atts/uc_urbancharm.mdl"
    ATT.CharmSkin = 0
    ATT.CharmBone = "Charm"
    ATT.UC_CharmOffset = true
    ATT.CharmOffset = Vector(-1.1, 0, -0.2)
    ATT.CharmAngle = Angle(-160.28, 176.595, -99.408)
    ATT.CharmScale = 0.5

    ARC9.LoadAttachment(ATT, "uc_charm_urbancharm_common")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_charm_urbancharm_decay")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Category = "charm"
    ATT.Free = true
    ATT.Model = "models/weapons/arccw/atts/charmbase.mdl"
    ATT.BoxModel = "models/Items/BoxSRounds.mdl"
    ATT.CharmModel = "models/weapons/arccw/atts/uc_urbancharm.mdl"
    ATT.CharmSkin = 1
    ATT.CharmBone = "Charm"
    ATT.UC_CharmOffset = true
    ATT.CharmOffset = Vector(-1.1, 0, -0.2)
    ATT.CharmAngle = Angle(-160.28, 176.595, -99.408)
    ATT.CharmScale = 0.5

    ARC9.LoadAttachment(ATT, "uc_charm_urbancharm_decay")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_charm_urbancharm_ordinance")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Ignore = true
    ATT.Category = "charm"
    ATT.Free = true
    ATT.Model = "models/weapons/arccw/atts/charmbase.mdl"
    ATT.BoxModel = "models/Items/BoxSRounds.mdl"
    ATT.CharmModel = "models/weapons/arccw/atts/uc_urbancharm.mdl"
    ATT.CharmSkin = 4
    ATT.CharmBone = "Charm"
    ATT.UC_CharmOffset = true
    ATT.CharmOffset = Vector(-1.1, 0, -0.2)
    ATT.CharmAngle = Angle(-160.28, 176.595, -99.408)
    ATT.CharmScale = 0.5

    ARC9.LoadAttachment(ATT, "uc_charm_urbancharm_ordinance")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_charm_urbancharm_renewal")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Category = "charm"
    ATT.Free = true
    ATT.Model = "models/weapons/arccw/atts/charmbase.mdl"
    ATT.BoxModel = "models/Items/BoxSRounds.mdl"
    ATT.CharmModel = "models/weapons/arccw/atts/uc_urbancharm.mdl"
    ATT.CharmSkin = 2
    ATT.CharmBone = "Charm"
    ATT.UC_CharmOffset = true
    ATT.CharmOffset = Vector(-1.1, 0, -0.2)
    ATT.CharmAngle = Angle(-160.28, 176.595, -99.408)
    ATT.CharmScale = 0.5

    ARC9.LoadAttachment(ATT, "uc_charm_urbancharm_renewal")
end
