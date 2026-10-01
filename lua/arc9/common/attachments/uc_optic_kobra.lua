ATT.PrintName = ARC9.UC.AttName("uc_optic_kobra")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.base.autostat.holosight"] = "",
}
ATT.ExcludeElements = {"ak_norail", "cover_rail"}

ATT.Icon = Material("entities/att/acwatt_uc_optic_kobra.png", "mips smooth")
ATT.SortOrder = 299
ATT.Category = {"ur_ak_optic"}
ATT.Model = "models/weapons/arccw/atts/ur_kobra.mdl"
ATT.ModelOffset = Vector(-2, 0, -4.55)
local R1, R2, R3, R4 = Material("hud/reticles/uc_kobra1.png", "mips smooth"), Material("hud/reticles/uc_kobra2.png", "mips smooth"), Material("hud/reticles/uc_kobra3.png", "mips smooth"), Material("hud/reticles/uc_kobra4.png", "mips smooth")
local function kobra(reticle)
    return {
        Pos = Vector(0, 11, -5.85),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        Reticle = reticle,
    }
end
ATT.Sights = {kobra(R1), kobra(R2), kobra(R3), kobra(R4)}
ATT.HoloSight = true
ATT.HoloSightSize = ARC9.UC.HoloSize(2)
ATT.DrawFunc = function(wep, model, wm)
    if wm then return end
    -- ARC9 reads the model's attachment table when drawing the selected reticle.
    model.atttbl.HoloSightSize = ARC9.UC.HoloSize(wep:GetSight().Reticle == R1 and 1.5 or 2)
end
ATT.HoloSightColorable = true
ATT.SpeedMultSights = 0.925
