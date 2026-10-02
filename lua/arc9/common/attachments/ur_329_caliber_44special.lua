ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.PrintName = ARC9:GetPhrase("ur_329_caliber_44special.printname")
ATT.CompactName = ARC9:GetPhrase("ur_329_caliber_44special.compactname")
ATT.Icon = Material("entities/att/uc_bullets/44special.png", "smooth mips")
ATT.Description = ARC9:GetPhrase("ur_329_caliber_44special.description")
if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_329_caliber_44special.printname.variant1") end
ATT.Category = "ur_329_caliber"
ATT.RangeMaxMult = 0.6
ATT.RecoilMult = 0.75
ATT.PhysBulletMuzzleVelocity = 265 * ARC9.UC.Meter
ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "ur_329_caliber_44special.calibre")
local path = "weapons/arccw_ur/sw329/"
local tail = ")^/arccw_uc/common/44mag/"
ATT.RangeMinMult = 0.5 * 0.6
ATT.ActivateElements = {"ur_329_caliber_44special"}
ATT.ShootSoundHook = function(wep, sound)
    if wep:GetUBGL() then return end
    if wep:GetValue("Silencer") then
        return
    else
        return {path .. "fire-01.ogg", path .. "fire-02.ogg", path .. "fire-03.ogg", path .. "fire-04.ogg", path .. "fire-05.ogg", path .. "fire-06.ogg",}
    end
end

ATT.ShootSoundSilencedHook = ATT.ShootSoundHook
ATT.DistantShootSoundHook = function(wep, distancesound)
    if wep:GetUBGL() then return end
    if not wep:GetValue("Silencer") then return {tail .. "fire-dist-44mag-pistol-ext-01.ogg", tail .. "fire-dist-44mag-pistol-ext-02.ogg", tail .. "fire-dist-44mag-pistol-ext-03.ogg", tail .. "fire-dist-44mag-pistol-ext-04.ogg", tail .. "fire-dist-44mag-pistol-ext-05.ogg", tail .. "fire-dist-44mag-pistol-ext-06.ogg"} end
end
