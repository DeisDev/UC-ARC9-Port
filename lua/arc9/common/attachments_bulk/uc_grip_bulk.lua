do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_grip_bcmvfg")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_uc_grip_bcmvfg.png", "mips smooth")
    ATT.SortOrder = 1300
    ATT.Category = "foregrip"
    ATT.LHIK = true
    ATT.LHIK_Priority = 1
    ATT.ModelOffset = Vector(0, 0, -0.14)
    ATT.Model = "models/weapons/arccw/atts/ud_foregrip_mod3.mdl"
    ATT.UC_MoveDispersionMult = 0.75
    ATT.SpeedMultSights = 0.9
    ATT.HoldType = "smg"
    ATT.HoldType_Priority = 2

    ARC9.LoadAttachment(ATT, "uc_grip_bcmvfg")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_grip_handstop")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_uc_grip_handstop.png", "mips smooth")
    ATT.SortOrder = 1100
    ATT.Category = "foregrip"
    ATT.ModelOffset = Vector(2, 0, -0.8)
    ATT.Model = "models/weapons/arccw/atts/uc_handstop.mdl"
    ATT.ModelSkin = 1
    ATT.UC_HipDispersionMult = 0.8
    ATT.SpeedMultShooting = 0.9
    ATT.SwayMult = 0.85

    ARC9.LoadAttachment(ATT, "uc_grip_handstop")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_grip_kacvfg")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_uc_grip_kacvfg.png", "mips smooth")
    ATT.SortOrder = 1400
    ATT.Category = "foregrip"
    ATT.LHIK = true
    ATT.LHIK_Priority = 1
    ATT.ModelOffset = Vector(0, 0, -0.25)
    ATT.Model = "models/weapons/arccw/atts/uc_kacvfg1.mdl"
    ATT.RecoilMult = 0.8
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.DeployTimeMult = 1.15
    ATT.HoldType = "smg"
    ATT.HoldType_Priority = 2

    ARC9.LoadAttachment(ATT, "uc_grip_kacvfg")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_grip_mafg2")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_uc_grip_magpul_afg2.png", "mips smooth")
    ATT.SortOrder = 1201
    ATT.Category = "foregrip"
    ATT.LHIK = true
    ATT.LHIK_Priority = 1
    ATT.ModelOffset = Vector(0, 0, -0.75)
    ATT.Model = "models/weapons/arccw/atts/uc_magpul_afg2.mdl"
    ATT.ModelSkin = 1
    ATT.AimDownSightsTimeMult = 0.8
    ATT.SprintToFireTimeMult = 0.8
    ATT.SwayMult = 1.15
    ATT.RecoilMult = 1.20

    ARC9.LoadAttachment(ATT, "uc_grip_mafg2")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_grip_mafg2_tan")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_uc_grip_magpul_afg2_tan.png", "mips smooth")
    ATT.SortOrder = 1200
    ATT.Category = "foregrip"
    ATT.LHIK = true
    ATT.LHIK_Priority = 1
    ATT.ModelOffset = Vector(0, 0, -0.75)
    ATT.Model = "models/weapons/arccw/atts/uc_magpul_afg2.mdl"
    ATT.ModelSkin = 0
    ATT.AimDownSightsTimeMult = 0.8
    ATT.SprintToFireTimeMult = 0.8
    ATT.SwayMult = 1.15
    ATT.RecoilMult = 1.20

    ARC9.LoadAttachment(ATT, "uc_grip_mafg2_tan")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_grip_tdvfg")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_uc_grip_tdvfg.png", "mips smooth")
    ATT.SortOrder = 1400
    ATT.Category = "foregrip"
    ATT.LHIK = true
    ATT.ModelOffset = Vector(0, 0, 0)
    ATT.Model = "models/weapons/arccw/atts/uc_tdvfg1.mdl"
    ATT.RecoilMult = 0.9
    ATT.AimDownSightsTimeMult = 1.06
    ATT.SprintToFireTimeMult = 1.06
    ATT.DeployTimeMult = 1.1
    ATT.HoldType = "smg"
    ATT.HoldType_Priority = 2
    ATT.Ignore = true

    ARC9.LoadAttachment(ATT, "uc_grip_tdvfg")
end
