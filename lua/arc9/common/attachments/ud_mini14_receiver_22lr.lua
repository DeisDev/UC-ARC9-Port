ATT.PrintName = ARC9.UC.AttName("ud_mini14_receiver_22lr")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.ActivateElements = {"ud_mini14_mag_15_22lr", "ud_mini14_receiver_22lr", "mini14_22lr"}

ATT.Icon = Material("entities/att/uc_bullets/22lr.png", "smooth mips")
ATT.Category = "ud_mini14_receiver"
ATT.UC_DefaultSlots = {
    [7] = {Name = "uc.default.15_round_mag", Icon = Material("entities/att/acwatt_ud_mini14_mag_15_22lr.png", "smooth mips")},
}
ATT.AimDownSightsTimeMult = 0.8
ATT.SprintToFireTimeMult = 0.8
ATT.ReloadTimeMult = 0.85
ATT.SwayMult = 0.75
ATT.DamageMaxMult = ARC9.UC.CalConv("556", "22lr", "max")
ATT.DamageMinMult = ARC9.UC.CalConv("556", "22lr", "min")
ATT.PenetrationMult = ARC9.UC.CalConv("556", "22lr", "pen")
ATT.RangeMaxMult = 0.5
ATT.RecoilMult = 0.25
ATT.VisualRecoilMult = 0.25
ATT.RPMMult = 1000 / 540
ATT.SpeedMultShooting = 1.2
ATT.SpreadMultHipFire = 0.6
ATT.ClipSize = 15
ATT.Ammo = "plinking"
ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "uc.calibre.22_long_rifle")
ATT.ShellModel = "models/weapons/arccw/uc_shells/22lr.mdl"
ATT.ShellScale = 1
ATT.ShellSounds = ARC9.TinyShellSoundsTable
ATT.TracerColor = Color(255, 255, 255, 200)
ATT.TracerSize = 0.5
ATT.PhysBulletMuzzleVelocity = 370 * ARC9.UC.Meter
local path = "arccw_uc/common/"
local fire22 = {path .. "fire-22-01.ogg",path .. "fire-22-02.ogg",path .. "fire-22-03.ogg",path .. "fire-22-04.ogg",path .. "fire-22-05.ogg",path .. "fire-22-06.ogg"}
local fire22sup = {path .. "fire-22-sup-01.ogg",path .. "fire-22-sup-02.ogg",path .. "fire-22-sup-03.ogg",path .. "fire-22-sup-04.ogg",path .. "fire-22-sup-05.ogg",path .. "fire-22-sup-06.ogg"}
ATT.ShootSoundSilenced = fire22sup
ATT.ShootSound = fire22
local fire22dist = {path .. "fire-22-dist-01.ogg", path .. "fire-22-dist-02.ogg", path .. "fire-22-dist-03.ogg", path .. "fire-22-dist-04.ogg", path .. "fire-22-dist-05.ogg", path .. "fire-22-dist-06.ogg"}
ATT.DistantShootSound = fire22dist
local fire22distint = {path .. "fire-dist-int-pistol-light-01.ogg", path .. "fire-dist-int-pistol-light-02.ogg", path .. "fire-dist-int-pistol-light-03.ogg", path .. "fire-dist-int-pistol-light-04.ogg", path .. "fire-dist-int-pistol-light-05.ogg", path .. "fire-dist-int-pistol-light-06.ogg"}
ATT.DistantShootSoundIndoor = fire22distint
ATT.Hook_TranslateAnimation = function(wep, anim)
    if string.StartsWith(anim, "reload") then
        return anim .. "_15_22lr"
    end
end
