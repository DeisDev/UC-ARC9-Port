ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.PrintName = ARC9:GetPhrase("ur_g3_optic_sg1.printname")
ATT.CompactName = ARC9:GetPhrase("ur_g3_optic_sg1.compactname")
if not ARC9:UseTrueNames() then ATT.CompactName = ARC9:GetPhrase("ur_g3_optic_sg1.compactname.variant1") end
ATT.Icon = Material("entities/att/acwatt_ur_g3_optic_sg1.png", "mips smooth")
ATT.Description = ARC9:GetPhrase("ur_g3_optic_sg1.description")
ATT.SortOrder = 300
ATT.CustomPros = {
    ["uc.base.autostat.holosight"] = "",
    ["uc.base.autostat.zoom"] = "",
}

ATT.Category = {"ur_g3_optic"}
ATT.Model = "models/weapons/arccw/atts/g3_optic_sg1.mdl"
ATT.ModelOffset = Vector(0.55, 0, -1.7)
ATT.SpeedMultSights = 0.78
ATT.ActivateElements = {"ur_g3_optic_sg1"}
ATT.Sights = {
    {
        Pos = Vector(0.01, 8.5, -1.18),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        Blur = false
    }
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = ARC9.UC.NoLensIndex
if CLIENT then ATT.DrawFunc = ARC9.UC.ScopePiece("models/weapons/arccw/atts/g3_optic_sg1_hsp.mdl") end
ATT.RTScopeReticle = Material("hud/scopes/SG1_reticle.png", "mips smooth")
ATT.RTScopeColorable = true
ATT.RTScopeMagnification = ARC9.UC.ScopeMag(4.5)
ATT.RTScopeReticleScale = ARC9.UC.ReticleScale(16, 8.5)
ATT.RTScopeAdjustable = true
ATT.RTScopeMagnificationMin = ARC9.UC.ScopeMag(1.5)
ATT.RTScopeMagnificationMax = ARC9.UC.ScopeMag(6)
