ATT.PrintName = ARC9.UC.AttName("ur_mp5_barrel_sword")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/ur_mp5/upper_fish.png", "smooth mips")
ATT.CustomCons = {
    ["uc.nomuzzle"] = "",
}

ATT.Category = "ur_mp5_barrel"

ATT.SortOrder = 9

ATT.RecoilMult = 0.7

ATT.SpeedMultSights = 0.8
ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1
ATT.SwayMult = 1.5
ATT.BarrelLengthAdd = 3

ATT.PhysBulletMuzzleVelocityMult = 1.15

ATT.IronSights = {
    Pos = Vector(-3.170000, -4.000000, -0.220000),
    Ang = Angle(0, 0, 0),
    Magnification = 1,
    ViewModelFOV = 74,
}

ATT.ActivateElements = {"ur_mp5_barrel_sword", "ur_mp5_barrel_swordfish", "barrel_sword"}
