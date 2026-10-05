do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_870_barrel_long")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_870_barrel_long"}

    ATT.Icon = Material("entities/att/acwatt_ud_870_barrel_long.png", "smooth mips")
    ATT.Category = "ud_870_barrel"
    ATT.SpreadMult = 0.8
    ATT.RecoilMult = 0.8
    ATT.RangeMaxMult = 1.2
    ATT.RangeMinMult = 1.2
    ATT.SwayMult = 1.5
    ATT.AimDownSightsTimeMult = 1.25
    ATT.SprintToFireTimeMult = 1.25
    ATT.SpeedMult = 0.95
    ATT.UC_HipDispersionMult = 1.25
    ATT.BarrelLengthAdd = 4

    ARC9.LoadAttachment(ATT, "ud_870_barrel_long")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_870_barrel_sawnoff")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["uc.nofs"] = "",
    }
    ATT.ActivateElements = {"ud_870_barrel_sawnoff"}

    ATT.Icon = Material("entities/att/acwatt_ud_870_barrel_sawnoff.png", "smooth mips")
    ATT.Category = "ud_870_barrel"
    ATT.SortOrder = -1
    ATT.SpreadMult = 1.5
    ATT.RecoilMult = 1.25
    ATT.RangeMaxMult = 0.8
    ATT.RangeMinMult = 0.8
    ATT.SwayMult = 0.5
    ATT.AimDownSightsTimeMult = 0.75
    ATT.SprintToFireTimeMult = 0.75
    ATT.SpeedMult = 1.05
    ATT.UC_HipDispersionMult = 0.75
    ATT.BarrelLengthAdd = -4
    -- Imprecise in sights without an optic
    ATT.UC_SightsDispersionHook = function(wep, spread)
        if !wep.Attachments[1].Installed then
            return spread + 250 * ARC9.UC.Dispersion
        end
    end

    ARC9.LoadAttachment(ATT, "ud_870_barrel_sawnoff")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_870_optic_ringsight")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("entities/att/acwatt_ud_870_optic_ringsight.png", "mips smooth")
    ATT.Category = "ud_870_optic"
    ATT.SortOrder = 999

    ARC9.LoadAttachment(ATT, "ud_870_optic_ringsight")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_870_skin_dirty")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.Icon = Material("", "smooth mips")
    ATT.Category = "ud_870_skin"
    ATT.Free = true

    ARC9.LoadAttachment(ATT, "ud_870_skin_dirty")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_870_slide_long")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_870_slide_long"}

    ATT.Icon = Material("entities/att/acwatt_ud_870_slide_long.png", "smooth mips")
    ATT.Category = "ud_870_slide"
    ATT.AimDownSightsTimeMult = 1.15
    ATT.SprintToFireTimeMult = 1.15
    ATT.SwayMult = 0.75
    ATT.RecoilMult = 0.9
    ATT.RecoilRandomSideMult = 0.5
    ATT.CycleTimeMult = 1.1

    ARC9.LoadAttachment(ATT, "ud_870_slide_long")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_870_slide_moe")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_870_slide_moe"}

    ATT.Icon = Material("entities/att/acwatt_ud_870_slide_moe.png", "smooth mips")
    ATT.Category = "ud_870_slide"
    ATT.AimDownSightsTimeMult = 0.85
    ATT.SprintToFireTimeMult = 0.85
    ATT.SwayMult = 1.25
    ATT.RecoilMult = 1.1
    ATT.RecoilRandomSideMult = 1.5
    ATT.CycleTimeMult = 0.9
    ATT.LHIK = true
    ATT.Model = "models/weapons/arccw/atts/moe_lhik.mdl"

    ARC9.LoadAttachment(ATT, "ud_870_slide_moe")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_870_slide_poly")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_870_slide_poly"}

    ATT.Icon = Material("entities/att/acwatt_ud_870_slide_poly.png", "smooth mips")
    ATT.Category = "ud_870_slide"
    ATT.AimDownSightsTimeMult = 0.95
    ATT.SprintToFireTimeMult = 0.95
    ATT.SpeedMultSights = 1.05
    ATT.RecoilRandomSideMult = 1.15
    ATT.LHIK = true
    ATT.Model = "models/weapons/arccw/atts/poly_lhik.mdl"

    ARC9.LoadAttachment(ATT, "ud_870_slide_poly")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_870_stock_poly")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_870_stock_poly"}

    ATT.Icon = Material("entities/att/acwatt_ud_870_stock.png", "smooth mips")
    ATT.Category = "ud_870_stock"
    ATT.SpeedMultSights = 1.1
    ATT.AimDownSightsTimeMult = 0.9
    ATT.SprintToFireTimeMult = 0.9
    ATT.RecoilMult = 1.15

    ARC9.LoadAttachment(ATT, "ud_870_stock_poly")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_870_stock_raptor")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_870_stock_raptor"}

    ATT.Icon = Material("entities/att/acwatt_ud_870_stock_raptor.png", "smooth mips")
    ATT.Category = "ud_870_stock"
    ATT.SpeedMult = 1.05
    ATT.AimDownSightsTimeMult = 0.6
    ATT.SprintToFireTimeMult = 0.6
    ATT.SpeedMultSights = 1.2
    ATT.SpeedMultShooting = 1.1
    ATT.DeployTimeMult = 0.6
    ATT.RecoilMult = 1.75
    ATT.RecoilRandomSideMult = 2
    ATT.VisualRecoilMult = 0.5
    ATT.BarrelLengthAdd = -4
    ATT.SwayMult = 3
    ATT.ActivePos = Vector(0.078504, 2.500000, -1.497944)
    ATT.HoldType = "shotgun"
    ATT.HoldTypeSights = "ar2"

    ARC9.LoadAttachment(ATT, "ud_870_stock_raptor")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_870_stock_sawnoff")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_870_stock_sawnoff"}

    ATT.Icon = Material("entities/att/acwatt_ud_870_stock_sawnoff.png", "smooth mips")
    ATT.Category = "ud_870_stock"
    ATT.SpeedMult = 1.025
    ATT.AimDownSightsTimeMult = 0.75
    ATT.SprintToFireTimeMult = 0.75
    ATT.SpeedMultSights = 1.1
    ATT.SpeedMultShooting = 1.05
    ATT.DeployTimeMult = 0.75
    ATT.RecoilMult = 1.5
    ATT.RecoilRandomSideMult = 2
    ATT.VisualRecoilMult = 0.5
    ATT.BarrelLengthAdd = -4
    ATT.SwayMult = 3
    ATT.ActivePos = Vector(0.078504, 2.500000, -1.497944)
    ATT.HoldType = "shotgun"
    ATT.HoldTypeSights = "ar2"

    ARC9.LoadAttachment(ATT, "ud_870_stock_sawnoff")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_870_tube_ext")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_870_tube_ext"}

    ATT.Icon = Material("entities/att/acwatt_ud_870_tube_ext.png", "smooth mips")
    ATT.Category = "ud_870_tube"
    ATT.ClipSize = 8
    ATT.SwayMult = 1.5
    ATT.SpeedMultSights = 0.8
    ATT.AimDownSightsTimeMult = 1.15
    ATT.SprintToFireTimeMult = 1.15
    ATT.ReloadTimeMult = 1.1

    ARC9.LoadAttachment(ATT, "ud_870_tube_ext")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_870_tube_reduced")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.ActivateElements = {"ud_870_tube_reduced"}

    ATT.Icon = Material("entities/att/acwatt_ud_870_tube_reduced.png", "smooth mips")
    ATT.Category = "ud_870_tube"
    ATT.ClipSize = 4
    ATT.SwayMult = 0.75
    ATT.SpeedMultSights = 1.1
    ATT.AimDownSightsTimeMult = 0.85
    ATT.SprintToFireTimeMult = 0.85
    ATT.ReloadTimeMult = 0.9

    ARC9.LoadAttachment(ATT, "ud_870_tube_reduced")
end
