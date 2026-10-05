do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_powder_high")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.SortOrder = 19
    ATT.Icon = Material("entities/att/acwatt_uc_powder_high.png", "smooth mips")
    ATT.Category = "uc_powder"
    ATT.RecoilMult = 1.15
    ATT.RangeMaxMult = 1.2
    ATT.RangeMinMult = 1.2
    ATT.ShootVolumeMult = 1.15
    ATT.RPMMult = 1.04
    ATT.MalfunctionMeanShotsToFailMult = 0.85
    ATT.PhysBulletMuzzleVelocityMult = 1.1

    ARC9.LoadAttachment(ATT, "uc_powder_high")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_powder_low")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.SortOrder = 18
    ATT.Icon = Material("entities/att/acwatt_uc_powder_low.png", "smooth mips")
    ATT.Category = "uc_powder"
    ATT.RecoilMult = 0.85
    ATT.RangeMaxMult = 0.8
    ATT.RangeMinMult = 0.8
    ATT.RPMMult = 0.95
    ATT.ShootVolumeMult = 0.9
    ATT.MalfunctionMeanShotsToFailMult = 1.15
    ATT.PhysBulletMuzzleVelocityMult = 0.9

    ARC9.LoadAttachment(ATT, "uc_powder_low")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_powder_overpressure")
    ATT.MenuCategory = "ARC9 - Urban Coalition"

    ATT.SortOrder = 20
    ATT.Icon = Material("entities/att/acwatt_uc_powder_overpressure.png", "smooth mips")
    ATT.Category = "uc_powder"
    ATT.RecoilRandomSideMult = 1.25
    ATT.RecoilMult = 1.2
    ATT.RangeMinMult = 1.25 * 1.3
    ATT.RangeMaxMult = 1.3
    ATT.RPMMult = 1.08
    ATT.ShootVolumeMult = 1.25
    ATT.MalfunctionMeanShotsToFailMult = 0.7
    ATT.PhysBulletMuzzleVelocityMult = 1.25

    ARC9.LoadAttachment(ATT, "uc_powder_overpressure")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_powder_subsonic")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.base.pro.invistracers"] = "",
    }
    ATT.CustomCons = {
        ["uc.subsonic.vel"] = "",
    }
    ATT.ActivateElements = {"powder_subsonic"}
    ATT.ExcludeElements = {"cal_subsonic"}

    ATT.SortOrder = 17
    ATT.Icon = Material("entities/att/acwatt_uc_powder_subsonic.png", "smooth mips")
    ATT.Category = "uc_powder"
    ATT.RecoilRandomSideMult = 0.75
    ATT.RecoilMult = 0.8
    ATT.RangeMinMult = 0.75 * 0.7
    ATT.RangeMaxMult = 0.7
    ATT.RPMMult = 0.89
    ATT.ShootVolumeMult = 0.8
    ATT.TracerColor = Color(0, 0, 0)
    ATT.TracerNum = 0
    ATT.MalfunctionMeanShotsToFailMult = 1.3
    ATT.PhysBulletMuzzleVelocity = 339 * ARC9.UC.Meter
    ATT.PhysBulletMuzzleVelocity_Priority = 2

    ARC9.LoadAttachment(ATT, "uc_powder_subsonic")
end
