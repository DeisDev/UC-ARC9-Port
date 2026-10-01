ATT.PrintName = ARC9.UC.AttName("uc_tp_gang")
ATT.MenuCategory = "ARC9 - Urban Coalition"

ATT.Icon = Material("entities/att/arccw_uc_tp_homeboy.png", "smooth mips")
ATT.Category = "uc_tp"
ATT.SortOrder = 14
ATT.SpreadMultHipFire = 0.85
ATT.SpreadMultMove = 0.75
ATT.LHIK = true
ATT.UC_HideLeftHand = true
ATT.Hook_ModifyBodygroups = ARC9.UC.HideLeftHand
ATT.ActivePos = Vector(1, 0, 1)
ATT.ActiveAng = Angle(0, 0, -60)
ATT.ActivePos_Priority = 15
ATT.ActiveAng_Priority = 15
-- Recoil kicks diagonally up and to the left.
ATT.Hook_ModifyRecoilDir = function(wep, dir)
    return 45
end
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
