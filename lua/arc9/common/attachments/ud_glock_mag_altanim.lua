ATT.PrintName = ARC9.UC.AttName("ud_glock_mag_altanim")
ATT.MenuCategory = "ARC9 - Urban Coalition"

ATT.Icon = Material("entities/att/acwatt_ud_glock_mag_17.png", "smooth mips")
ATT.Category = "ud_glock_mag"
ATT.SortOrder = 999
ATT.Free = true
ATT.Hook_TranslateAnimation = function(wep, anim)
    if anim == "reload_empty" then
        return "reload_empty_fesiug"
    end
end
