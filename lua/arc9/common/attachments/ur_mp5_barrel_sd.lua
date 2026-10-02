ATT.PrintName = ARC9.UC.AttName("ur_mp5_barrel_sd")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/ur_mp5/upper_sd.png", "smooth mips")
ATT.CustomCons = {
    ["uc.nomuzzle"] = "",
    ["uc.nohg"] = "",
}
ATT.CustomPros = {
    ["uc.supptail"] = "",
}

ATT.Category = "ur_mp5_barrel"

ATT.SortOrder = 13

ATT.Silencer = true
ATT.ShootVolumeMult = 0.55
ATT.RecoilMult = 0.9
ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.TracerNum = 0

ATT.AimDownSightsTimeMult = 1.15
ATT.SprintToFireTimeMult = 1.15
ATT.SwayMult = 1.25
ATT.RangeMaxMult = 0.65
ATT.RangeMinMult = 0.65
ATT.BarrelLengthAdd = 4

ATT.PhysBulletMuzzleVelocityMult = 0.7

ATT.ShootPitchMult = 1.15

ATT.ActivateElements = {"ur_mp5_barrel_sd", "barrel_sd"}

ATT.HookP_TranslateSound = ARC9.UC.SubsonicTail
