ATT.PrintName = ARC9.UC.AttName("uc_optic_hamr")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.base.autostat.holosight"] = "",
    ["uc.base.autostat.zoom"] = "",
}

ATT.Icon = Material("entities/att/acwatt_uc_optic_hamr.png", "mips smooth")
ATT.SortOrder = 3
ATT.Category = {"optic", "ud_optic", "ud_acog"}
ATT.Model = "models/weapons/arccw/atts/uc_gso_hamr.mdl"
ATT.ModelOffset = Vector(0, 0, -0.1)
ATT.Scale = 1
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.Sights = {
    {
        Pos = Vector(0, 8, -1.53),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 38,
    },
    {
        Pos = Vector(0, 8, -2.94738),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        Reticle = Material("hud/reticles/uc_reddot.png", "mips smooth"),
        ExtraSightData = {
            RTScope = false,
        },
    },
}
ATT.RTScope = true
ATT.RTScopeSubmatIndex = 1
ATT.RTScopeMagnification = ARC9.UC.ScopeMag(3)
ATT.RTScopeReticle = Material("hud/scopes/uc_hamr.png", "mips smooth")
ATT.RTScopeReticleScale = ARC9.UC.ReticleScale(11.5, 8)
ATT.RTScopeColorable = true
-- The top red dot. The scope sight sets no Reticle, so only the second sight draws it.
ATT.HoloSight = true
ATT.HoloSightSize = ARC9.UC.HoloSize(2)
ATT.HoloSightColorable = true
ATT.SpeedMultSights = 0.75
ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1
