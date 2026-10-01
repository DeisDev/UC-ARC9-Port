ATT.PrintName = ARC9.UC.AttName("ud_m1014_stock_sport")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"ud_autoshotgun_stock_sport"}

ATT.Icon = Material("entities/att/acwatt_ud_m1014_stock_sport.png", "smooth mips")
ATT.Category = "ud_1014_stock"
ATT.RecoilMult = .8
ATT.SwayMult = .8
ATT.SpeedMultSights = .85
ATT.DeployTimeMult = 1.25
ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_stock"
end
