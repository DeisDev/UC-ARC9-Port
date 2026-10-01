ATT.PrintName = ARC9.UC.AttName("ud_glock_slide_nytesyte")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"ud_glock_slide_nytesyte"}

ATT.Icon = Material("entities/att/acwatt_ud_glock_slide_nytesyte.png", "smooth mips")
ATT.Category = "ud_glock_slide"
-- Recoil kicks sideways while aiming.
ATT.Hook_ModifyRecoilDir = function(wep, dir)
    if wep:GetInSights() then
        return 90
    end
end
