ATT.PrintName = ARC9.UC.AttName("ud_glock_slide_cs")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.3burst"] = "",
    ["ud.glock.cs"] = "",
}
ATT.CustomCons = {
    ["uc.jam"] = "",
}
ATT.ActivateElements = {"ud_glock_slide_cs"}

ATT.Icon = Material("entities/att/acwatt_ud_glock_slide_cs.png", "smooth mips")
ATT.Category = "ud_glock_slide"
ATT.UC_DefaultSlots = {
    [8] = {Name = "uc.default.20_round_mag", Icon = Material("entities/att/acwatt_ud_glock_mag_17.png", "smooth mips")},
}
ATT.LHIK = true
ATT.Model = "models/weapons/arccw/atts/classic_lhik.mdl"
ATT.UC_HipDispersionMult = 1.15
ATT.SpeedMultShooting = 0.9
ATT.Malfunction = true
ATT.Firemodes = {
    {
        Mode = 3,
        RPMMult = 3,
        PostBurstDelay = 0.25,
        RunawayBurst = true,
        RecoilHook = ARC9.UC.ShotRecoil({
            [1] = 0.8,
            [2] = 0.5,
            [3] = 0.3,
        }),
    },
    {
        Mode = 1,
    }
}
-- +3 rounds with the standard magazine
ATT.ClipSizeHook = function(wep, size)
    if !wep.Attachments[8].Installed then
        return size + 3
    end
end
