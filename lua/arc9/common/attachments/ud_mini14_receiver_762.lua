ATT.PrintName = ARC9.UC.AttName("ud_mini14_receiver_762")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomCons = {
    ["uc.jam"] = "",
}
ATT.ActivateElements = {"ud_mini14_receiver_762", "mini14_762"}

ATT.SortOrder = 30
ATT.Icon = Material("entities/att/uc_bullets/762x39.png", "smooth mips")
ATT.Category = "ud_mini14_receiver"
ATT.ReloadTimeMult = 1.15
ATT.SpeedMultShooting = 0.8
ATT.RPMMult = 360 / 540
ATT.RecoilMult = 1.25
ATT.RecoilRandomSideMult = 1.5
ATT.SpreadMultHipFire = 1.5
ATT.DamageMaxMult = ARC9.UC.CalConv("556", "762_39", "max")
ATT.DamageMinMult = ARC9.UC.CalConv("556", "762_39", "min")
ATT.PenetrationMult = ARC9.UC.CalConv("556", "762_39", "pen")
ATT.RangeMaxMult = 2
ATT.Malfunction = true
ATT.Ammo = "ar2"
ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.7_62x39mm_soviet")
ATT.ShellModel = "models/weapons/arccw/uc_shells/762x39.mdl"
ATT.ShellScale = 0.666
ATT.ShootSoundSilenced = "weapons/arccw_ud/mini14/fire_762_supp.ogg"
ATT.ShootSound = "weapons/arccw_ud/mini14/fire_762.ogg"
local tail = ")/arccw_uc/common/762x39/"
ATT.DistantShootSound = { tail .. "fire-dist-762x39-rif-ext-01.ogg", tail .. "fire-dist-762x39-rif-ext-02.ogg", tail .. "fire-dist-762x39-rif-ext-03.ogg", tail .. "fire-dist-762x39-rif-ext-04.ogg", tail .. "fire-dist-762x39-rif-ext-05.ogg", tail .. "fire-dist-762x39-rif-ext-06.ogg" }

ATT.UC_MalfunctionVarianceMult = 1.5
