ATT.PrintName = ARC9.UC.AttName("uc_tp_gang")
ATT.MenuCategory = "ARC9 - Urban Coalition"

ATT.Icon = Material("entities/att/arccw_uc_tp_homeboy.png", "smooth mips")
ATT.Category = "uc_tp"
ATT.SortOrder = 14
ATT.UC_HipDispersionMult = 0.85
ATT.UC_MoveDispersionMult = 0.75
ATT.LHIK = true
ATT.UC_HideLeftHand = true
ATT.Hook_ModifyBodygroups = ARC9.UC.HideLeftHand
ATT.ActivePos = Vector(0.500000, 0.000000, 0.866025)
ATT.ActiveAng = Angle(0, 0, -60)
ATT.ActivePos_Priority = 15
ATT.ActiveAng_Priority = 15
-- Recoil kicks diagonally up and to the left.
ATT.UC_RecoilRoll = -45
-- The gun is held tilted in the iron sights.
ATT.IronSightsHook = function(wep, sights)
    local tilted = table.Copy(sights)
    tilted.Ang = (tilted.Ang or Angle()) + Angle(0, 0, -45)
    return tilted
end
ATT.UC_Compatible = function(wep, data)
    if ARC9.UC.IsManualAction(wep) and wep:GetValue("HoldType") ~= "pistol" and wep:GetValue("HoldType") ~= "revolver" then return false end
end
ATT.AttNotForNPCs = true
