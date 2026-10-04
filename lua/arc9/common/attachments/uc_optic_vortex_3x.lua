ATT.PrintName = ARC9.UC.AttName("uc_optic_vortex_3x")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.base.autostat.holosight"] = "",
    ["uc.base.autostat.zoom"] = "",
}

ATT.Icon = Material("entities/att/acwatt_uc_optic_vortex_3x.png", "mips smooth")
ATT.SortOrder = 1.5
ATT.Category = {"optic"}
ATT.Model = "models/weapons/arccw/atts/uc_vortex3x.mdl"
ATT.ModelOffset = Vector(0, 0, 0.18)
ATT.Sights = {
    {
        Pos = Vector(0, 8.5, -1.42),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = ARC9.UC.SightViewModelFOV,
        Blur = false,
    },
}
ATT.RTScope = true
ATT.RTScopeSubmatIndex = ARC9.UC.NoLensIndex
if CLIENT then
    ATT.DrawFunc = ARC9.UC.ScopePiece("models/weapons/arccw/atts/uc_vortex3x_hsp.mdl")
end
ATT.RTScopeMagnification = ARC9.UC.ScopeMag(1.5)
ATT.RTScopeReticle = Material("hud/scopes/uc_vortex_reticle.png", "mips smooth")
ATT.RTScopeReticleScale = ARC9.UC.ReticleScale(8.5, 8.5)
ATT.RTScopeColorable = true
ATT.SpeedMultSights = .8
