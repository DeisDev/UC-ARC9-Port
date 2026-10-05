ATT.PrintName = ARC9.UC.AttName("ur_spas12_barrel_hl")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/ur_spas/barrel_std.png", "smooth mips")
ATT.Category = "ur_spas12_barrel"
ATT.SortOrder = 21.5
ATT.CustomPros = {
    ["uc.slam"] = "",
    ["ur.ak.burst"] = "",
}
ATT.CustomCons = {["ur.spas12.pump"] = ""}

ATT.Firemodes = {
    {
        Mode = -1,
        PrintName = ARC9:GetPhrase("fcg.slam.abbrev"),
        ManualAction = true,
        SlamFire = true,
        SpreadMult = 0.8,
        UC_HipDispersionMult = 0.8,
    },
    {
        Mode = 1,
        PrintName = ARC9:GetPhrase("ur.spas12.dbl.abbrev"),
        ManualAction = true,
        SpreadMult = 1.15,
        UC_HipDispersionMult = 0.8,
        NumMult = 2,
        AmmoPerShot = 2,
        DamageMaxMult = 2,
        DamageMinMult = 2,
        RecoilMult = 1.5,
        -- ArcCW's hook returns three values; its consumer takes the first.
        ShootSound = "weapons/arccw_ur/spas12/fire-both-01.wav",
        ShootSoundSilenced = "weapons/arccw_ur/spas12/fire-both-01.wav",
    },
}
ATT.Firemodes_Priority = 1
ATT.CycleTimeMult = 1.15
ATT.ActivePos = Vector(0.750000, 0.500000, -1.200000)
ATT.ActivePos_Priority = 10
ATT.ActivateElements = {"freeman"}
