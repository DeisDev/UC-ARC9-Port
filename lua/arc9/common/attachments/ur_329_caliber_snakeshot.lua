ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.PrintName = ARC9:GetPhrase("ur_329_caliber_snakeshot.printname")
ATT.CompactName = ARC9:GetPhrase("ur_329_caliber_snakeshot.compactname")
ATT.Icon = Material("entities/att/uc_bullets/44special.png", "smooth mips")
ATT.Description = ARC9:GetPhrase("ur_329_caliber_snakeshot.description")
if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_329_caliber_snakeshot.printname.variant1") end
ATT.CustomPros = {
    ["ur.329.snakeshot.1"] = "",
}

ATT.CustomCons = {
    ["ur.329.snakeshot.2"] = "",
    ["ur.329.snakeshot.3"] = "",
}

ATT.Category = "ur_329_caliber"
ATT.SortOrder = -1
ATT.Num = 4
ATT.Spread = 65 * ARC9.UC.MOA
ATT.Spread_Priority = 0
ATT.HullSize = 0.1
ATT.BodyDamageMults = ARC9.UC.BodyDamageMults_Shotgun
ATT.Penetration = 1
ATT.DamageMaxMult = 70 / 60
ATT.RangeMaxMult = 0.4
ATT.PhysBulletMuzzleVelocityMult = 0.6
ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", ATT.CompactName)
ATT.RangeMinMult = 2 * 0.4
ATT.ActivateElements = {"ur_329_caliber_snakeshot", "329_ss"}
ATT.ShootSoundHook = function(wep, sound)
    if wep:GetUBGL() then return end
    if wep:GetValue("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp_10.ogg"
    else
        return {"weapons/arccw_ur/deagle/fire-410-01.ogg", "weapons/arccw_ur/deagle/fire-410-02.ogg", "weapons/arccw_ur/deagle/fire-410-03.ogg", "weapons/arccw_ur/deagle/fire-410-04.ogg", "weapons/arccw_ur/deagle/fire-410-05.ogg", "weapons/arccw_ur/deagle/fire-410-06.ogg"}
    end
end

ATT.ShootSoundSilencedHook = ATT.ShootSoundHook
ATT.UC_DefaultSlots = {
    [6] = {
        Name = "ur_329_caliber_snakeshot.slot6",
        Icon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth")
    },
}
