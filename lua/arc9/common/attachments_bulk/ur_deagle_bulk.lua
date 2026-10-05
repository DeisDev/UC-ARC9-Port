do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_deagle_barrel_annihilator.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_deagle_barrel_annihilator.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_deagle_barrel_annihilator.printname.variant1") end
    ATT.Icon = Material("entities/att/acwatt_ur_deagle_barrel_annihilator.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_deagle_barrel_annihilator.description")
    ATT.Category = "ur_deagle_barrel"
    ATT.CustomCons = {
        ["ur_deagle_barrel_annihilator.cons0"] = "",
    }

    ATT.SortOrder = 6
    ATT.RecoilMult = 0.8
    ATT.RecoilRandomSideMult = 0.6
    ATT.VisualRecoilMult = 2.5
    ATT.ShootVolumeMult = 1.2
    ATT.RangeMaxMult = 0.8
    ATT.ShootPitchMult = 0.95
    ATT.SpeedMultSights = 1.05
    ATT.SpreadMult = 1.15
    ATT.RPMMult = .8
    ATT.RangeMinMult = 0.8
    ATT.ActivateElements = {"ur_deagle_barrel_annihilator", "barrel_annihilator"}

    ARC9.LoadAttachment(ATT, "ur_deagle_barrel_annihilator")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_deagle_barrel_compact.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_deagle_barrel_compact.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_deagle_barrel_compact.printname.variant1") end
    ATT.Icon = Material("entities/att/acwatt_ur_deagle_barrel_compact.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_deagle_barrel_compact.description")
    ATT.Category = "ur_deagle_barrel"
    ATT.SortOrder = 5.5
    ATT.SpreadMult = 1.25
    ATT.RangeMaxMult = 0.9
    ATT.AimDownSightsTimeMult = 0.9
    ATT.SprintToFireTimeMult = 0.9
    ATT.SwayMult = 0.8
    ATT.BarrelLengthAdd = -2
    ATT.UC_HipDispersionMult = 0.95
    ATT.RangeMinMult = 0.9
    ATT.ActivateElements = {"ur_deagle_barrel_compact"}
    ATT.DeployTimeMult = 0.9

    ARC9.LoadAttachment(ATT, "ur_deagle_barrel_compact")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_deagle_barrel_compen.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_deagle_barrel_compen.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_deagle_barrel_compen.printname.variant1") end
    ATT.Icon = Material("entities/att/acwatt_ur_deagle_barrel_compensated.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_deagle_barrel_compen.description")
    ATT.Category = "ur_deagle_barrel"
    ATT.SortOrder = 6
    ATT.RecoilMult = 0.85
    ATT.RecoilRandomSideMult = 0.75
    ATT.ShootVolumeMult = 1.1
    ATT.RangeMaxMult = 0.95
    ATT.ShootPitchMult = 0.95
    ATT.RPMMult = .9
    ATT.RangeMinMult = 0.95
    ATT.ActivateElements = {"ur_deagle_barrel_compen", "barrel_annihilator"}

    ARC9.LoadAttachment(ATT, "ur_deagle_barrel_compen")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_deagle_barrel_ext.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_deagle_barrel_ext.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_deagle_barrel_ext.printname.variant1") end
    ATT.Icon = Material("entities/att/acwatt_ur_deagle_barrel_long.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_deagle_barrel_ext.description")
    ATT.Category = "ur_deagle_barrel"
    ATT.SortOrder = 7
    ATT.SpreadMult = 0.8
    ATT.RangeMaxMult = 1.25
    ATT.RecoilMult = 0.9
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.SwayMult = 1.15
    ATT.UC_HipDispersionMult = 1.1
    ATT.BarrelLengthAdd = 4
    ATT.RangeMinMult = 1.25
    ATT.ActivateElements = {"ur_deagle_barrel_ext"}
    ATT.DeployTimeMult = 1.25

    ARC9.LoadAttachment(ATT, "ur_deagle_barrel_ext")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_deagle_barrel_marksman.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_deagle_barrel_marksman.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_deagle_barrel_marksman.printname.variant1") end
    ATT.Icon = Material("entities/att/acwatt_ur_deagle_barrel_police.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_deagle_barrel_marksman.description")
    ATT.Category = "ur_deagle_barrel"
    ATT.SortOrder = 10
    ATT.SpreadMult = 0.5
    ATT.RangeMaxMult = 2
    ATT.RecoilMult = 0.75
    ATT.AimDownSightsTimeMult = 1.25
    ATT.SprintToFireTimeMult = 1.25
    ATT.SwayMult = 1.25
    ATT.ShootPitchMult = 0.9
    ATT.UC_HipDispersionMult = 1.2
    ATT.BarrelLengthAdd = 10
    ATT.RangeMinMult = 2
    ATT.ActivateElements = {"ur_deagle_barrel_marksman"}
    ATT.DeployTimeMult = 1.5

    ARC9.LoadAttachment(ATT, "ur_deagle_barrel_marksman")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_deagle_barrel_modern.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_deagle_barrel_modern.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_deagle_barrel_modern.printname.variant1") end
    ATT.Icon = Material("entities/att/acwatt_ur_deagle_barrel_modern.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_deagle_barrel_modern.description")
    ATT.Category = "ur_deagle_barrel"
    ATT.CustomPros = {
        ["uc.cosmetic"] = "",
    }

    ATT.SortOrder = 5.5
    ATT.ActivateElements = {"ur_deagle_barrel_modern"}

    ARC9.LoadAttachment(ATT, "ur_deagle_barrel_modern")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_deagle_caliber_357.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_deagle_caliber_357.compactname")
    ATT.Icon = Material("entities/att/uc_bullets/357magnum.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_deagle_caliber_357.description")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_deagle_caliber_357.printname.variant1") end
    local path = ")^weapons/arccw_ur/sw586/"
    local fire357 = {path .. "fire-01.ogg", path .. "fire-02.ogg", path .. "fire-03.ogg", path .. "fire-04.ogg", path .. "fire-05.ogg", path .. "fire-06.ogg"}
    local tail = ")/arccw_uc/common/357mag/"
    local fire357dist = {tail .. "fire-dist-357mag-pistol-ext-01.ogg", tail .. "fire-dist-357mag-pistol-ext-02.ogg", tail .. "fire-dist-357mag-pistol-ext-03.ogg", tail .. "fire-dist-357mag-pistol-ext-04.ogg", tail .. "fire-dist-357mag-pistol-ext-05.ogg", tail .. "fire-dist-357mag-pistol-ext-06.ogg"}
    ATT.Category = "ur_deagle_caliber"
    ATT.ClipSizeMult = 1.3
    ATT.RecoilMult = 0.7
    ATT.DamageMaxMult = 60 / 80
    ATT.DamageMinMult = 20 / 12
    ATT.SpeedMultShooting = 1.2
    ATT.RPMMult = 1 + (1 / 3)
    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", ATT.CompactName)
    ATT.ShellModel = "models/weapons/arccw/uc_shells/357sig.mdl"
    ATT.ShellScale = 1
    ATT.ActivateElements = {"ur_deagle_caliber_357"}
    ATT.ShootSoundHook = function(wep, sound)
        if wep:GetUBGL() then return end
        if wep:GetValue("Silencer") then
            return
        else
            return fire357
        end
    end

    ATT.ShootSoundSilencedHook = ATT.ShootSoundHook
    ATT.DistantShootSoundHook = function(wep, distancesound)
        if wep:GetUBGL() then return end
        if not wep:GetValue("Silencer") then return fire357dist end
    end

    ARC9.LoadAttachment(ATT, "ur_deagle_caliber_357")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_deagle_caliber_410.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_deagle_caliber_410.compactname")
    ATT.Icon = Material("entities/att/uc_bullets/20g.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_deagle_caliber_410.description")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_deagle_caliber_410.printname.variant1") end
    ATT.CustomPros = {
        ["ur.deagle.410.1"] = "",
    }

    ATT.CustomCons = {
        ["ur.deagle.410.2"] = "",
    }

    ATT.Category = "ur_deagle_caliber"
    ATT.SortOrder = -1
    ATT.Num = 4
    ATT.RangeMaxMult = 0.5
    ATT.Spread = 35 * ARC9.UC.MOA
    ATT.Spread_Priority = 0
    ATT.ClipSizeMult = 1.15
    ATT.RecoilMult = 0.75
    ATT.DamageMaxMult = 72 / 70
    ATT.DamageMinMult = 20 / 17
    ATT.HullSize = 0.1
    ATT.BodyDamageMults = ARC9.UC.BodyDamageMults_Shotgun
    ATT.Penetration = 1
    ATT.UC_IsShotgun = true
    ATT.Ammo = "buckshot"
    ATT.ShellModel = "models/weapons/arccw/uc_shells/410bore.mdl"
    ATT.ShellScale = 1
    ATT.ShellSounds = ARC9.ShotgunShellSoundsTable
    ATT.Class = "ur_deagle_caliber_410.class"
    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", ATT.CompactName)
    local tail = ")/arccw_uc/common/357mag/"
    ATT.RangeMinMult = 0.5
    ATT.ActivateElements = {"ur_deagle_caliber_410"}
    ATT.ShootSoundHook = function(wep, sound)
        if wep:GetUBGL() then return end
        if wep:GetValue("Silencer") then
            return "weapons/arccw_ud/glock/fire_supp_10.ogg"
        else
            return {"weapons/arccw_ur/deagle/fire-410-01.ogg", "weapons/arccw_ur/deagle/fire-410-02.ogg", "weapons/arccw_ur/deagle/fire-410-03.ogg", "weapons/arccw_ur/deagle/fire-410-04.ogg", "weapons/arccw_ur/deagle/fire-410-05.ogg", "weapons/arccw_ur/deagle/fire-410-06.ogg"}
        end
    end

    ATT.ShootSoundSilencedHook = ATT.ShootSoundHook
    ATT.DistantShootSoundHook = function(wep, distancesound)
        if wep:GetUBGL() then return end
        if not wep:GetValue("Silencer") then return {tail .. "fire-dist-357mag-pistol-ext-01.ogg", tail .. "fire-dist-357mag-pistol-ext-02.ogg", tail .. "fire-dist-357mag-pistol-ext-03.ogg", tail .. "fire-dist-357mag-pistol-ext-04.ogg", tail .. "fire-dist-357mag-pistol-ext-05.ogg", tail .. "fire-dist-357mag-pistol-ext-06.ogg"} end
    end

    ATT.UC_DefaultSlots = {
        [6] = {
            Name = "ur_deagle_caliber_410.slot6",
            Icon = Material("entities/att/acwatt_ur_deagle_mag_7.png", "mips smooth")
        },
        [9] = {
            Name = "ur_deagle_caliber_410.slot9",
            Icon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth")
        },
    }

    ARC9.LoadAttachment(ATT, "ur_deagle_caliber_410")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_deagle_caliber_44.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_deagle_caliber_44.compactname")
    ATT.Icon = Material("entities/att/uc_bullets/44magnum.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_deagle_caliber_44.description")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_deagle_caliber_44.printname.variant1") end
    ATT.Category = "ur_deagle_caliber"
    ATT.ClipSizeMult = 1.15
    ATT.RecoilMult = 0.85
    ATT.DamageMaxMult = 75 / 80
    ATT.DamageMinMult = 16 / 12
    ATT.SpeedMultShooting = 1.1
    ATT.RPMMult = 1 + (1 / 6)
    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", ATT.CompactName)
    ATT.ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
    ATT.ShellScale = 1
    local path = ")^weapons/arccw_ur/sw329/"
    local fire44 = {path .. "fire-01.ogg", path .. "fire-02.ogg", path .. "fire-03.ogg", path .. "fire-04.ogg", path .. "fire-05.ogg", path .. "fire-06.ogg"}
    local tail = ")/arccw_uc/common/44mag/"
    local fire44dist = {tail .. "fire-dist-44mag-pistol-ext-01.ogg", tail .. "fire-dist-44mag-pistol-ext-02.ogg", tail .. "fire-dist-44mag-pistol-ext-03.ogg", tail .. "fire-dist-44mag-pistol-ext-04.ogg", tail .. "fire-dist-44mag-pistol-ext-05.ogg", tail .. "fire-dist-44mag-pistol-ext-06.ogg"}
    ATT.ActivateElements = {"ur_deagle_caliber_44"}
    ATT.ShootSoundHook = function(wep, sound)
        if wep:GetUBGL() then return end
        if wep:GetValue("Silencer") then
            return
        else
            return fire44
        end
    end

    ATT.ShootSoundSilencedHook = ATT.ShootSoundHook
    ATT.DistantShootSoundHook = function(wep, distancesound)
        if wep:GetUBGL() then return end
        if not wep:GetValue("Silencer") then return fire44dist end
    end

    ARC9.LoadAttachment(ATT, "ur_deagle_caliber_44")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_deagle_grip_rubber.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_deagle_grip_rubber.compactname")
    ATT.Icon = Material("entities/att/acwatt_ur_deagle_grip_rubber.png", "mips smooth")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_deagle_grip_rubber.printname.variant1") end
    ATT.Description = ARC9:GetPhrase("ur_deagle_grip_rubber.description")
    ATT.Category = "ur_deagle_grip"
    ATT.RecoilMult = 0.95
    ATT.RecoilRandomSideMult = 0.9
    ATT.SpeedMultSights = 0.95
    ATT.ActivateElements = {"ur_deagle_grip_rubber"}

    ARC9.LoadAttachment(ATT, "ur_deagle_grip_rubber")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_deagle_grip_wood.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_deagle_grip_wood.compactname")
    ATT.Icon = Material("entities/att/acwatt_ur_deagle_grip_plastic.png", "smooth mips")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_deagle_grip_wood.printname.variant1") end
    ATT.Description = ARC9:GetPhrase("ur_deagle_grip_wood.description")
    ATT.Category = "ur_deagle_grip"
    ATT.RecoilMult = 1.05
    ATT.RecoilRandomSideMult = 1.1
    ATT.AimDownSightsTimeMult = 0.95
    ATT.SprintToFireTimeMult = 0.95
    ATT.ActivateElements = {"ur_deagle_grip_wood", "ur_deagle_grip_wooden"}

    ARC9.LoadAttachment(ATT, "ur_deagle_grip_wood")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_deagle_mag_10.printname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_deagle_mag_10.printname.variant1") end
    ATT.CompactName = ARC9:GetPhrase("ur_deagle_mag_10.compactname")
    ATT.Icon = Material("entities/att/acwatt_ur_deagle_mag_10.png", "mips smooth")
    ATT.Description = ARC9:GetPhrase("ur_deagle_mag_10.description")
    ATT.Category = "ur_deagle_mag"
    ATT.ClipSize = 10
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.ReloadTimeMult = 1.15
    ATT.SwayMult = 1.5
    ATT.SpeedMult = 0.98
    ATT.SpeedMultShooting = 0.95
    ATT.UC_HipDispersionMult = 1.25
    ATT.ActivateElements = {"ur_deagle_mag_10", "ur_deagle_mag_ext"}

    ARC9.LoadAttachment(ATT, "ur_deagle_mag_10")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_deagle_skin_black.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_deagle_skin_black.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_deagle_skin_black.printname.variant1") end
    ATT.Icon = Material("entities/att/acwatt_ur_deagle_finish_black.png", "mips smooth")
    ATT.Description = ARC9:GetPhrase("ur_deagle_skin_black.description")
    ATT.Category = "ur_deagle_skin"
    ATT.CustomPros = {
        ["uc.cosmetic"] = "",
    }

    ATT.SortOrder = 2
    ATT.Free = true
    ATT.ActivateElements = {"ur_deagle_skin_black"}

    ARC9.LoadAttachment(ATT, "ur_deagle_skin_black")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_deagle_skin_chrome.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_deagle_skin_chrome.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_deagle_skin_chrome.printname.variant1") end
    ATT.Icon = Material("entities/att/acwatt_ur_deagle_finish_chrome.png", "mips smooth")
    ATT.Description = ARC9:GetPhrase("ur_deagle_skin_chrome.description")
    ATT.Category = "ur_deagle_skin"
    ATT.CustomPros = {
        ["uc.cosmetic"] = "",
    }

    ATT.SortOrder = 2
    ATT.Free = true
    ATT.ActivateElements = {"ur_deagle_skin_chrome"}

    ARC9.LoadAttachment(ATT, "ur_deagle_skin_chrome")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_deagle_skin_gold.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_deagle_skin_gold.compactname")
    ATT.Icon = Material("entities/att/acwatt_ur_deagle_finish_gold.png", "mips smooth")
    ATT.Description = ARC9:GetPhrase("ur_deagle_skin_gold.description")
    if not ARC9:UseTrueNames() then
        ATT.PrintName = ARC9:GetPhrase("ur_deagle_skin_gold.printname.variant1")
        ATT.Description = ARC9:GetPhrase("ur_deagle_skin_gold.description.variant1")
    end

    ATT.Category = "ur_deagle_skin"
    ATT.CustomPros = {
        ["uc.cosmetic"] = "",
    }

    ATT.SortOrder = 1
    ATT.Free = true
    ATT.ActivateElements = {"ur_deagle_skin_gold"}

    ARC9.LoadAttachment(ATT, "ur_deagle_skin_gold")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_deagle_skin_modern.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_deagle_skin_modern.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_deagle_skin_modern.printname.variant1") end
    ATT.Icon = Material("entities/att/acwatt_ur_deagle_finish_modern.png", "mips smooth")
    ATT.Description = ARC9:GetPhrase("ur_deagle_skin_modern.description")
    ATT.Category = "ur_deagle_skin"
    ATT.CustomPros = {
        ["uc.cosmetic"] = "",
    }

    ATT.SortOrder = 2
    ATT.Free = true
    ATT.ActivateElements = {"ur_deagle_skin_modern", "tac_rail"}

    ARC9.LoadAttachment(ATT, "ur_deagle_skin_modern")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_deagle_skin_sex.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_deagle_skin_sex.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_deagle_skin_sex.printname.variant1") end
    ATT.Icon = Material("entities/att/acwatt_ur_deagle_finish_sex.png", "mips smooth")
    ATT.Description = ARC9:GetPhrase("ur_deagle_skin_sex.description")
    ATT.Category = "ur_deagle_skin"
    ATT.CustomPros = {
        ["uc.cosmetic"] = "",
    }

    ATT.Free = true
    ATT.ActivateElements = {"ur_deagle_skin_sex"}

    ARC9.LoadAttachment(ATT, "ur_deagle_skin_sex")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_deagle_tritium.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_deagle_tritium.compactname")
    ATT.Icon = Material("entities/att/acwatt_ur_deagle_tritium.png", "mips smooth")
    ATT.Description = ARC9:GetPhrase("ur_deagle_tritium.description")
    ATT.Category = "ur_deagle_tritium"
    ATT.CustomPros = {
        ["uc.cosmetic"] = "",
    }

    ATT.SortOrder = 999
    ATT.ActivateElements = {"ur_deagle_tritium"}

    ARC9.LoadAttachment(ATT, "ur_deagle_tritium")
end
