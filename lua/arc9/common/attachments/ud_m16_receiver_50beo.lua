ATT.PrintName = ARC9.UC.AttName("ud_m16_receiver_50beo")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomCons = {
    ["ud.m16.50beo"] = "",
    ["uc.semionly"] = "",
}
ATT.ActivateElements = {"m16_50beo", "m16_nolower"}

ATT.Icon = Material("entities/att/uc_bullets/50beowulf.png", "smooth mips")
ATT.Category = "ud_m16_receiver"
ATT.UC_DefaultSlots = {
    [6] = {Name = "uc.default.50_beowulf_lower", Icon = Material("entities/att/acwatt_ud_m16_receiver_semi.png", "smooth mips")},
    [11] = {Name = "uc.default.7_round_mag", Icon = Material("entities/att/acwatt_ud_m16_mag_15.png", "smooth mips")},
}
ATT.SortOrder = 1
ATT.ClipSize = 7
ATT.ClipSize_Priority = 0.5
ATT.DamageMaxMult = ARC9.UC.CalConv("556", "50beo", "max")
ATT.DamageMinMult = ARC9.UC.CalConv("556", "50beo", "min")
ATT.PenetrationMult = ARC9.UC.CalConv("556", "50beo", "pen")
ATT.RecoilMult = 3
ATT.RecoilRandomSideMult = 2
ATT.VisualRecoilMult = 2
ATT.RPMMult = 0.5
ATT.RangeMaxMult = 0.25
ATT.ShootVolumeMult = 1.2
ATT.AimDownSightsTimeMult = 0.91
ATT.SprintToFireTimeMult = 0.91
ATT.ReloadTimeMult = 0.87
ATT.SwayMult = 0.667
ATT.SpeedMult = 1.025
ATT.PhysBulletMuzzleVelocity = 550 * ARC9.UC.Meter
ATT.Ammo = "357"
ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.50_beowulf")
ATT.HookP_NameChange = function(wep, name)
    return ARC9:GetPhrase("ud.m16.name_50beo", {name = name})
end
ATT.ShellModel = "models/weapons/arccw/uc_shells/50beo.mdl"
ATT.ShellScale = 1
ATT.ShellSounds = ARC9.PistolShellSoundsTable
ATT.Firemodes_Priority = 0.5
ATT.Firemodes = {
    {
        Mode = 1,
    }
}
local path = "weapons/arccw_ud/m16/"
ATT.ShootSound = { path .. "fire-50-01.ogg", path .. "fire-50-02.ogg", path .. "fire-50-03.ogg", path .. "fire-50-04.ogg", path .. "fire-50-05.ogg", path .. "fire-50-06.ogg" }
ATT.DistantShootSound = { path .. "fire-50-dist-01.ogg", path .. "fire-50-dist-02.ogg", path .. "fire-50-dist-03.ogg", path .. "fire-50-dist-04.ogg", path .. "fire-50-dist-05.ogg", path .. "fire-50-dist-06.ogg" }
ATT.Hook_TranslateAnimation = function(wep, anim)
    if (anim == "reload" or anim == "reload_empty") and !wep.Attachments[11].Installed then
        return anim .. "_20"
    end
end
ATT.HookP_ClassChange = function(wep, class) return "uc.class.semi_automatic_rifle" end
