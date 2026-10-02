ATT.PrintName = ARC9.UC.AttName("ur_ak_muzzle_bayonet")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/ur_ak/acwatt_ur_ak_muzzle_bayonet.png", "mips smooth")
ATT.Category = {"ur_ak_muzzle"}
ATT.SortOrder = 997
ATT.BashRangeAdd = 16
ATT.BashDamageMult = 3.5
ATT.UC_MeleeWaitTimeMult = 2
ATT.BarrelLengthAdd = 10
ATT.SwayMult = 1.4
ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1
ATT.UC_MeleeTimeMult = 1.1
ATT.UC_Bayonet = true
ATT.Hook_TranslateAnimation = function(wep, anim) if anim == "bash" then return "bash_bayonet" end end
ATT.InstallSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
ATT.ActivateElements = {"muzzle_bayonet", "ak_bayonet2"}
ATT.ExcludeElements = {"ak_barrelchange", "ak_bayonet1"}
