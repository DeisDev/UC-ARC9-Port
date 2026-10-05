do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m79_barrel_short")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["uc.altnofs"] = "",
    }
    ATT.ActivateElements = {"m79_pirategun", "m79_pirategun"}

    ATT.Icon = Material("entities/att/acwatt_ud_m79_barrel_short.png", "smooth mips")
    ATT.Category = "ud_m79_barrel"
    ATT.LHIK = true
    ATT.Model = "models/weapons/arccw/atts/lhik_short.mdl"
    ATT.ShootEntForceMult = 0.5
    ATT.RecoilMult = 1.25
    ATT.SpreadMult = 2
    ATT.UC_MoveDispersionMult = 0.75
    ATT.AimDownSightsTimeMult = 0.75
    ATT.SprintToFireTimeMult = 0.75
    ATT.ReloadTimeMult = 0.85
    ATT.SpeedMult = 1.01
    ATT.SpeedMultSights = 1.05
    ATT.SwayMult = 0.75
    -- Imprecise in sights without an optic
    ATT.UC_SightsDispersionHook = function(wep, spread)
        if !wep.Attachments[1].Installed then
            return spread + 50 * ARC9.UC.Dispersion
        end
    end

    ARC9.LoadAttachment(ATT, "ud_m79_barrel_short")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("ud_m79_stock_sawn")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["uc.sightdisp.50"] = "",
    }
    ATT.ActivateElements = {"m79_nostock"}

    ATT.Icon = Material("entities/att/acwatt_ud_m79_stock_sawn.png", "smooth mips")
    ATT.Category = "ud_m79_stock"
    ATT.Free = true
    ATT.UC_SightsDispersionAdd = 50 * ARC9.UC.Dispersion
    ATT.RecoilMult = 1.5
    ATT.RecoilRandomSideMult = 1.5
    ATT.SwayMult = 3
    ATT.AimDownSightsTimeMult = 0.75
    ATT.SprintToFireTimeMult = 0.75
    ATT.UC_HipDispersionMult = 0.75
    ATT.SpeedMult = 1.05
    ATT.SpeedMultSights = 1.1
    ATT.SpeedMultShooting = 1.1
    ATT.DeployTimeMult = 0.5
    ATT.ActivePos = Vector(0.500000, 2.000000, 0.500000)

    ARC9.LoadAttachment(ATT, "ud_m79_stock_sawn")
end
