ATT.PrintName = ARC9.UC.AttName("ur_mp5_barrel_kurz")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/ur_mp5/upper_k.png", "smooth mips")

ATT.Category = "ur_mp5_barrel"

ATT.SortOrder = 4.5

ATT.LHIK = true
-- Negative stat priorities prevent ARC9 from applying the reload IK timeline.
ATT.LHIK_Priority = 0
ATT.NoDraw = true

ATT.ModelOffset = Vector(6.5, -0.5, -1)
ATT.Model = "models/weapons/arccw/atts/lhik_kurz.mdl"

ATT.BarrelLengthAdd = -4
ATT.SwayMult = .5
ATT.AimDownSightsTimeMult = .75
ATT.SprintToFireTimeMult = .75
ATT.RPMMult = 1.125

ATT.RecoilMult = 1.25
ATT.SpreadMult = 3
ATT.RangeMaxMult = .5
ATT.RangeMinMult = .5

ATT.UC_HipDispersionMult = 0.85

ATT.HookP_ClassChange = function(wep, class) return "uc.class.machine_pistol" end

ATT.PhysBulletMuzzleVelocityMult = 0.9375

ATT.ActivateElements = {"ur_mp5_barrel_kurz", "mp5_kurz"}
