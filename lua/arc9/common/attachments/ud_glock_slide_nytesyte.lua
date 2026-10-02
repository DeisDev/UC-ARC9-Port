ATT.PrintName = ARC9.UC.AttName("ud_glock_slide_nytesyte")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"ud_glock_slide_nytesyte"}

ATT.Icon = Material("entities/att/acwatt_ud_glock_slide_nytesyte.png", "smooth mips")
ATT.Category = "ud_glock_slide"
-- Recoil kicks sideways while aiming.
ATT.UC_RecoilRollHook = function(wep, roll)
    if wep:GetInSights() then
        return -90
    end
end
