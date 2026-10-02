ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.PrintName = ARC9:GetPhrase("ur_g3_optic_psg1.printname")
ATT.CompactName = ARC9:GetPhrase("ur_g3_optic_psg1.compactname")
if not ARC9:UseTrueNames() then
    ATT.PrintName = ARC9:GetPhrase("ur_g3_optic_psg1.printname.variant1")
    ATT.CompactName = ARC9:GetPhrase("ur_g3_optic_psg1.compactname.variant1")
end

ATT.Icon = Material("entities/att/acwatt_ur_g3_optic_psg1.png", "mips smooth")
ATT.Description = ARC9:GetPhrase("ur_g3_optic_psg1.description")
ATT.SortOrder = 300
ATT.CustomPros = {
    ["uc.base.autostat.holosight"] = "",
    ["uc.base.autostat.zoom"] = "",
}

ATT.Category = {"ur_g3_optic"}
ATT.Model = "models/weapons/arccw/atts/g3_optic_psg.mdl"
ATT.ModelOffset = Vector(0.55, 0, -1.7)
ATT.SpeedMultSights = 0.84
ATT.ActivateElements = {"ur_g3_optic_psg1"}
ATT.Sights = {
    {
        Pos = Vector(0.01, 9.25, -1.12),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        Blur = false
    }
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = ARC9.UC.NoLensIndex
if CLIENT then ATT.DrawFunc = ARC9.UC.ScopePiece("models/weapons/arccw/atts/g3_optic_psg_hsp.mdl") end
ATT.RTScopeReticle = Material("hud/scopes/PSG1_reticle.png", "mips smooth")
ATT.RTScopeColorable = true
ATT.RTScopeMagnification = ARC9.UC.ScopeMag(6)
ATT.RTScopeReticleScale = ARC9.UC.ReticleScale(15, 9.25)
