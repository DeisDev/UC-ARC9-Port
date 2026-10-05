ATT.PrintName = ARC9.UC.AttName("ur_spas12_stock_in")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/ur_spas/stock_fold.png", "smooth mips")
ATT.Category = "ur_spas12_stock"
ATT.InstallSound = "arccw_uc/common/stockslide.ogg"
ATT.Free = true
ATT.CustomCons = {["ur.spas12.folded"] = ""}
ATT.RecoilMult = 1.2
ATT.RecoilRandomSideMult = 1.5
ATT.SpeedMultSights = 1.1
ATT.SpeedMultShooting = 1.1
ATT.AimDownSightsTimeMult = 0.5
ATT.SprintToFireTimeMult = 0.5
ATT.SwayMult = 2
ATT.BarrelLengthAdd = -12
-- Authored sight poses converted to ARC9's rotation order and unrotated position axes.
ATT.IronSights = {
    Pos = Vector(-1.048848, -1.967819, -1.203164),
    Ang = Angle(1.502058, 2.998971, 0.078603),
    Magnification = 1.075,
    ViewModelFOV = ARC9.UC.SightViewModelFOV,
    CrosshairInSights = true,
}
ATT.HoldType = "shotgun"
ATT.HoldTypeSights = "ar2"
ATT.UC_SightsDispersionHook = function(wep, dispersion)
    if !wep.Attachments[1].Installed then return dispersion + 75 * ARC9.UC.Dispersion end
end
ATT.ActivateElements = {"spas12_foldstock"}
