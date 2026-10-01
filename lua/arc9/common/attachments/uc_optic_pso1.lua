ATT.PrintName = ARC9.UC.AttName("uc_optic_pso1")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.base.autostat.holosight"] = "",
    ["uc.base.autostat.zoom"] = "",
}
ATT.ExcludeElements = {"ak_norail", "cover_rail"}

ATT.Icon = Material("entities/att/acwatt_uc_optic_pso1.png", "mips smooth")
ATT.SortOrder = 300
ATT.Category = {"ur_ak_optic"}
ATT.Model = "models/weapons/arccw/atts/ur_pso1.mdl"
ATT.ModelOffset = Vector(-2, 0, -4.55)
ATT.Sights = {
    {
        Pos = Vector(0, 11, -6.05),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        Blur = false,
    },
}
ATT.RTScope = true
ATT.RTScopeSubmatIndex = ARC9.UC.NoLensIndex
if CLIENT then
    ATT.DrawFunc = ARC9.UC.ScopePiece("models/weapons/arccw/atts/ur_pso1_hsp.mdl")
end
ATT.RTScopeMagnification = ARC9.UC.ScopeMag(4)
ATT.RTScopeReticle = Material("hud/scopes/uc_pso.png", "mips smooth")
ATT.RTScopeReticleScale = ARC9.UC.ReticleScale(10.5, 13)
ATT.RTScopeColorable = true
ATT.SpeedMultSights = .8
