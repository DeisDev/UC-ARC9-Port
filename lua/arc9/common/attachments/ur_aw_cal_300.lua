ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.PrintName = ARC9:GetPhrase("ur_aw_cal_300.printname")
ATT.CompactName = ARC9:GetPhrase("ur_aw_cal_300.compactname")
ATT.Icon = Material("entities/att/uc_bullets/300winchester.png", "mips smooth")
ATT.Description = ARC9:GetPhrase("ur_aw_cal_300.description")
ATT.Category = "ur_aw_cal"
ATT.DamageMaxMult = 50 / 80
ATT.DamageMinMult = 90 / 50
ATT.RangeMax = 50 * ARC9.UC.Meter
ATT.RangeMin = 10 * ARC9.UC.Meter
ATT.PhysBulletMuzzleVelocityMult = 1000 / 850
ATT.PenetrationMult = 1.25
ATT.RecoilMult = 1.5
ATT.ReloadTimeMult = 5.55 / 5.15
ATT.SpeedMultShooting = 0.9
local path = ")weapons/arccw_ur/aw_placeholders/338/"
local path1 = ")weapons/arccw_ur/aw_placeholders/"
local fire300 = {path .. "fire-300-01.ogg", path .. "fire-300-02.ogg", path .. "fire-300-03.ogg", path .. "fire-300-04.ogg", path .. "fire-300-05.ogg", path .. "fire-300-06.ogg"}
local fire300sup = {path1 .. "fire-sup-01.ogg", path1 .. "fire-sup-02.ogg", path1 .. "fire-sup-03.ogg", path1 .. "fire-sup-04.ogg", path1 .. "fire-sup-05.ogg", path1 .. "fire-sup-06.ogg"}
local tail = ")/arccw_uc/common/338lm/"
local fire338dist = {tail .. "fire-dist-338lm-rif-ext-01.ogg", tail .. "fire-dist-338lm-rif-ext-02.ogg", tail .. "fire-dist-338lm-rif-ext-03.ogg", tail .. "fire-dist-338lm-rif-ext-04.ogg", tail .. "fire-dist-338lm-rif-ext-05.ogg", tail .. "fire-dist-338lm-rif-ext-06.ogg"}
local fire338distint = {tail .. "fire-dist-338lm-rif-int-01.ogg", tail .. "fire-dist-338lm-rif-int-02.ogg", tail .. "fire-dist-338lm-rif-int-03.ogg", tail .. "fire-dist-338lm-rif-int-04.ogg", tail .. "fire-dist-338lm-rif-int-05.ogg", tail .. "fire-dist-338lm-rif-int-06.ogg"}
ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "ur_aw_cal_300.calibre")
ATT.ShellModel = "models/weapons/arccw/ud_shells/338.mdl"
ATT.Ammo = "SniperPenetratedRound"
ATT.ActivateElements = {"ur_aw_cal_300", "mag_300"}
ATT.ShootSoundHook = function(wep, sound)
    if wep:GetUBGL() then return end
    if wep:GetValue("Silencer") then
        return fire300sup
    else
        return fire300
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

ATT.UC_RampRangeMin = 10 * ARC9.UC.Meter
ATT.UC_RampRangeMax = 50 * ARC9.UC.Meter
