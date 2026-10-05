do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_dbs_barrel_compact.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_dbs_barrel_compact.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_dbs_barrel_compact.printname.variant1") end
    ATT.Icon = Material("entities/att/ur_dbs/bcomp.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_dbs_barrel_compact.description")
    ATT.Category = {"ur_db_barrel"}
    ATT.SwayMult = .75
    ATT.BarrelLengthAdd = -9
    ATT.AimDownSightsTimeMult = .9
    ATT.SprintToFireTimeMult = .9
    ATT.UC_HipDispersionMult = 0.8
    ATT.RecoilMult = 1.2
    ATT.SpreadMult = 1.25
    ATT.RangeMaxMult = .85
    ATT.SortOrder = 18
    ATT.RangeMinMult = .85
    ATT.ActivateElements = {"ur_dbs_barrel_compact", "barrel_compact"}

    ARC9.LoadAttachment(ATT, "ur_dbs_barrel_compact")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_dbs_barrel_mid.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_dbs_barrel_mid.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_dbs_barrel_mid.printname.variant1") end
    ATT.Icon = Material("entities/att/ur_dbs/bmid.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_dbs_barrel_mid.description")
    ATT.Category = {"ur_db_barrel"}
    ATT.SortOrder = 22
    ATT.SwayMult = .85
    ATT.BarrelLengthAdd = -4
    ATT.AimDownSightsTimeMult = 0.95
    ATT.SprintToFireTimeMult = 0.95
    ATT.UC_HipDispersionMult = 0.9
    ATT.RecoilMult = 1.1
    ATT.SpreadMult = 1.1
    ATT.RangeMaxMult = 0.9
    ATT.RangeMinMult = 0.9
    ATT.ActivateElements = {"ur_dbs_barrel_mid", "barrel_mid"}

    ARC9.LoadAttachment(ATT, "ur_dbs_barrel_mid")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_dbs_barrel_sawedoff.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_dbs_barrel_sawedoff.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_dbs_barrel_sawedoff.printname.variant1") end
    ATT.Icon = Material("entities/att/ur_dbs/bsw.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_dbs_barrel_sawedoff.description")
    ATT.Category = {"ur_db_barrel"}
    ATT.SortOrder = 12
    ATT.BarrelLengthAdd = -16
    ATT.SwayMult = .6
    ATT.AimDownSightsTimeMult = .85
    ATT.SprintToFireTimeMult = .85
    ATT.SpeedMult = 1.03
    ATT.UC_HipDispersionMult = 0.75
    ATT.RecoilMult = 1.4
    ATT.SpreadMult = 2
    ATT.RangeMaxMult = .65
    ATT.RangeMinMult = .65
    ATT.ActivateElements = {"ur_dbs_barrel_sawedoff", "sawnoff", "barrel_sw"}
    ATT.DeployTimeMult = .85

    ARC9.LoadAttachment(ATT, "ur_dbs_barrel_sawedoff")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_dbs_barrel_sawedoffplus.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_dbs_barrel_sawedoffplus.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_dbs_barrel_sawedoffplus.printname.variant1") end
    ATT.Icon = Material("entities/att/ur_dbs/bswp.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_dbs_barrel_sawedoffplus.description")
    ATT.Category = {"ur_db_barrel"}
    ATT.ModelOffset = Vector(-21, -2.2, 8.3)
    ATT.Model = "models/weapons/arccw/ur_g3_lhik_slim.mdl"
    ATT.NoDraw = true
    ATT.LHIK = true
    ATT.LHIKPriority = 0
    ATT.SortOrder = 10
    ATT.BarrelLengthAdd = -20
    ATT.SwayMult = .5
    ATT.AimDownSightsTimeMult = .75
    ATT.SprintToFireTimeMult = .75
    ATT.SpeedMult = 1.05
    ATT.UC_HipDispersionMult = 0.5
    ATT.RecoilMult = 1.5
    ATT.SpreadMult = 2.5
    ATT.RangeMaxMult = .5
    ATT.RangeMinMult = .5
    ATT.ActivateElements = {"ur_dbs_barrel_sawedoffplus", "sawnoff", "barrel_swplus"}
    ATT.DeployTimeMult = .75

    ARC9.LoadAttachment(ATT, "ur_dbs_barrel_sawedoffplus")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_dbs_fg_extractor.printname")
    ATT.Icon = nil
    ATT.Description = ARC9:GetPhrase("ur_dbs_fg_extractor.description")
    ATT.CustomPros = {
        ["ur_dbs_fg_extractor.pros0"] = "",
    }

    ATT.Category = "uc_db_fg"
    ATT.SortOrder = 999
    ATT.AimDownSightsTimeMult = 1.14
    ATT.SprintToFireTimeMult = 1.14
    ATT.SpeedMult = 0.92
    ATT.InstallSound = "arccw_uc/common/gunsmith/internal_modification.ogg"
    ATT.ActivateElements = {"ur_dbs_fg_extractor"}

    ARC9.LoadAttachment(ATT, "ur_dbs_fg_extractor")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_dbs_stock_sawedoff.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_dbs_stock_sawedoff.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_dbs_stock_sawedoff.printname.variant1") end
    ATT.Icon = Material("entities/att/ur_dbs/ssw.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_dbs_stock_sawedoff.description")
    ATT.Category = {"ur_db_stock"}
    ATT.Free = true
    ATT.SortOrder = -1
    ATT.SpeedMult = 1.05
    ATT.AimDownSightsTimeMult = 0.75
    ATT.SprintToFireTimeMult = 0.75
    ATT.RecoilMult = 1.4
    ATT.RecoilRandomSideMult = 1.25
    ATT.SpeedMultSights = 1.2
    ATT.SpeedMultShooting = 1.15
    ATT.BarrelLengthAdd = -12
    ATT.SwayMult = 3
    ATT.ActivateElements = {"ur_dbs_stock_sawedoff", "stock_sw"}
    ATT.DeployTimeMult = 0.75

    ARC9.LoadAttachment(ATT, "ur_dbs_stock_sawedoff")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_dbs_tp_doom.printname")
    ATT.Description = ARC9:GetPhrase("ur_dbs_tp_doom.description")
    ATT.CustomPros = {
        ["uc.cosmetic"] = "",
    }

    ATT.Category = "uc_db_tp"
    ATT.SortOrder = 999
    ATT.ActivePos = Vector(-1.487420, 0.013090, 0.278227)
    ATT.ActivePos_Priority = 10
    ATT.ActiveAng = Angle(-0.500000, 0, 3.000000)
    ATT.ActiveAng_Priority = 10
    ATT.Free = true
    ATT.RequireElements = {{"sawnoff", "ur_dbs_stock_sawedoff", "uc_tp_gong"}}
    ATT.ActivateElements = {"ur_dbs_tp_doom"}

    ARC9.LoadAttachment(ATT, "ur_dbs_tp_doom")
end
