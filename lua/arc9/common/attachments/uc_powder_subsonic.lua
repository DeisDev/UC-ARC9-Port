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
