ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.PrintName = ARC9:GetPhrase("ur_aw_cal_338.printname")
ATT.CompactName = ARC9:GetPhrase("ur_aw_cal_338.compactname")
ATT.Icon = Material("entities/att/uc_bullets/338lapua.png", "mips smooth")
ATT.Description = ARC9:GetPhrase("ur_aw_cal_338.description")
ATT.Category = "ur_aw_cal"
ATT.CustomCons = {
    ["ur_aw_cal_338.cons0"] = "",
}

ATT.DamageMinMult = 160 / 50
ATT.RangeMax = 100 * ARC9.UC.Meter
ATT.RangeMin = 20 * ARC9.UC.Meter
ATT.PhysBulletMuzzleVelocityMult = 950 / 850
ATT.PenetrationMult = 2
ATT.RecoilMult = 2
ATT.CycleTimeMult = 1.24
ATT.ReloadTimeMult = 5.55 / 5.15
ATT.SpeedMultShooting = 0.8
local path = ")weapons/arccw_ur/aw_placeholders/338/"
local path1 = ")weapons/arccw_ur/aw_placeholders/"
local fire338 = {path .. "fire-01.ogg", path .. "fire-02.ogg", path .. "fire-03.ogg", path .. "fire-04.ogg", path .. "fire-05.ogg", path .. "fire-06.ogg"}
local fire338sup = {path1 .. "fire-sup-01.ogg", path1 .. "fire-sup-02.ogg", path1 .. "fire-sup-03.ogg", path1 .. "fire-sup-04.ogg", path1 .. "fire-sup-05.ogg", path1 .. "fire-sup-06.ogg"}
local tail = ")/arccw_uc/common/338lm/"
local fire338dist = {tail .. "fire-dist-338lm-rif-ext-01.ogg", tail .. "fire-dist-338lm-rif-ext-02.ogg", tail .. "fire-dist-338lm-rif-ext-03.ogg", tail .. "fire-dist-338lm-rif-ext-04.ogg", tail .. "fire-dist-338lm-rif-ext-05.ogg", tail .. "fire-dist-338lm-rif-ext-06.ogg"}
local fire338distint = {tail .. "fire-dist-338lm-rif-int-01.ogg", tail .. "fire-dist-338lm-rif-int-02.ogg", tail .. "fire-dist-338lm-rif-int-03.ogg", tail .. "fire-dist-338lm-rif-int-04.ogg", tail .. "fire-dist-338lm-rif-int-05.ogg", tail .. "fire-dist-338lm-rif-int-06.ogg"}
ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "ur_aw_cal_338.calibre")
ATT.ShellSounds = ARC9.ShellSoundsTable
ATT.ShellModel = "models/weapons/arccw/ud_shells/338.mdl"
ATT.Ammo = "SniperPenetratedRound"
ATT.ActivateElements = {"ur_aw_cal_338", "mag_338"}
ATT.ShootSoundHook = function(wep, sound)
    if wep:GetUBGL() then return end
    if wep:GetValue("Silencer") then
        return fire338sup
    else
        return fire338
    end
end

ATT.ShootSoundSilencedHook = ATT.ShootSoundHook
ATT.DistantShootSoundHook = function(wep, distancesound)
    if wep:GetUBGL() then return end
    if not wep:GetValue("Silencer") then return fire338dist end
end

ATT.DistantShootSoundIndoorHook = function(wep, distancesound)
    if wep:GetUBGL() then return end
    if not wep:GetValue("Silencer") then return fire338distint end
end

ATT.UC_RampRangeMin = 20 * ARC9.UC.Meter
ATT.UC_RampRangeMax = 100 * ARC9.UC.Meter
ATT.UC_DefaultSlots = {
    [5] = {
        Name = "ur.aw.defaultname5",
        Icon = Material("entities/att/ur_aw/mag338_5.png", "mips smooth")
    },
}
