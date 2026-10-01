ATT.PrintName = ARC9.UC.AttName("uc_tp_gong")
ATT.MenuCategory = "ARC9 - Urban Coalition"

ATT.Icon = Material("entities/att/arccw_uc_tp_actionhero.png", "smooth mips")
ATT.Category = "uc_tp"
ATT.SortOrder = 20
ATT.ShootWhileSprint = true
ATT.SpreadMultHipFire = 0.75
ATT.RecoilMult = 1.5
ATT.RecoilRandomSideMult = 2
ATT.AimDownSightsTimeMult = 1.5
ATT.SprintToFireTimeMult = 1.5
ATT.SwayMult = 2
ATT.SpeedMult = .95
ATT.LHIK = true
ATT.UC_HideLeftHand = true
ATT.Hook_ModifyBodygroups = ARC9.UC.HideLeftHand
ATT.HoldType = "pistol"
ATT.HoldTypeSights = "pistol"
ATT.HoldTypeHolstered = "normal"
ATT.UC_Compatible = function(wep, data)
    if ARC9.UC.IsManualAction(wep) and wep:GetValue("HoldType") ~= "pistol" and wep:GetValue("HoldType") ~= "revolver" then return false end
end
ATT.AttNotForNPCs = true
