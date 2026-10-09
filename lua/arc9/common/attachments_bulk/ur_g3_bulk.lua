do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_g3_barrel_12.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_g3_barrel_12.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_g3_barrel_12.printname.variant1") end
    ATT.Icon = Material("entities/att/ur_g3/barrel_k.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_g3_barrel_12.description")
    ATT.Category = "ur_g3_barrel"
    ATT.SortOrder = 12
    ATT.AimDownSightsTimeMult = 0.9
    ATT.SprintToFireTimeMult = 0.9
    ATT.BarrelLengthAdd = -4
    ATT.SpeedMultSights = 1.05
    ATT.UC_HipDispersionMult = 0.9
    ATT.SwayMult = 0.7
    ATT.RecoilMult = 1.15
    ATT.SpreadMult = 1.5
    ATT.RangeMaxMult = 0.5
    ATT.RPMMult = 1.1
    ATT.RangeMinMult = 0.5
    ATT.ActivateElements = {"ur_g3_barrel_12", "g3_not8"}

    ARC9.LoadAttachment(ATT, "ur_g3_barrel_12")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_g3_barrel_15.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_g3_barrel_15.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_g3_barrel_15.printname.variant1") end
    ATT.Icon = Material("entities/att/ur_g3/barrel_33.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_g3_barrel_15.description")
    ATT.Category = "ur_g3_barrel"
    ATT.SortOrder = 15
    ATT.AimDownSightsTimeMult = 0.9
    ATT.SprintToFireTimeMult = 0.9
    ATT.BarrelLengthAdd = -4
    ATT.SpeedMultSights = 1.05
    ATT.SwayMult = 0.85
    ATT.RecoilMult = 1.1
    ATT.SpreadMult = 1.1
    ATT.RangeMaxMult = 0.75
    ATT.RangeMinMult = 0.75
    ATT.ActivateElements = {"ur_g3_barrel_15", "g3_not8"}

    ARC9.LoadAttachment(ATT, "ur_g3_barrel_15")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_g3_barrel_26.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_g3_barrel_26.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_g3_barrel_26.printname.variant1") end
    ATT.Icon = Material("entities/att/ur_g3/barrel_psg.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_g3_barrel_26.description")
    ATT.Category = "ur_g3_barrel"
    ATT.CustomCons = {
        ["uc.nofs"] = "",
    }

    ATT.SortOrder = 26
    ATT.AimDownSightsTimeMult = 1.2
    ATT.SprintToFireTimeMult = 1.2
    ATT.BarrelLengthAdd = 6
    ATT.SpeedMultSights = 0.85
    ATT.RecoilMult = 0.75
    ATT.SpreadMult = 0.5
    ATT.RangeMaxMult = 1.25
    ATT.RPMMult = 360 / 400
    ATT.RangeMinMult = 2 * 1.25
    ATT.ActivateElements = {"ur_g3_barrel_26", "g3_nohg", "g3_not8"}
    ATT.UC_SightsDispersionHook = function(wep, dispersion) if not wep.Attachments[1].Installed then return dispersion + 250 * ARC9.UC.Dispersion end end

    ARC9.LoadAttachment(ATT, "ur_g3_barrel_26")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_g3_barrel_8.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_g3_barrel_8.compactname")
    if not ARC9:UseTrueNames() then
        ATT.PrintName = ARC9:GetPhrase("ur_g3_barrel_8.printname.variant1")
        ATT.CompactName = ARC9:GetPhrase("ur_g3_barrel_8.compactname.variant1")
    end

    ATT.Icon = Material("entities/att/ur_g3/barrel_51.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_g3_barrel_8.description")
    ATT.Category = "ur_g3_barrel"
    ATT.CustomPros = {
        ["ur.g3.8"] = "",
    }

    ATT.SortOrder = 8
    ATT.AimDownSightsTimeMult = 0.85
    ATT.SprintToFireTimeMult = 0.85
    ATT.BarrelLengthAdd = -6
    ATT.SpeedMultSights = 1.2
    ATT.UC_HipDispersionMult = 0.75
    ATT.SwayMult = 0.5
    ATT.RecoilMult = 1.3
    ATT.SpreadMult = 2
    ATT.RangeMaxMult = 0.35
    ATT.RPMMult = 1.2
    ATT.RangeMinMult = 0.35
    ATT.ActivateElements = {"ur_g3_barrel_8", "g3_hk51hg"}

    ARC9.LoadAttachment(ATT, "ur_g3_barrel_8")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_g3_bayobipod_bayonet.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_g3_bayobipod_bayonet.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_g3_bayobipod_bayonet.printname.variant1") end
    ATT.Icon = false
    ATT.Description = ARC9:GetPhrase("ur_g3_bayobipod_bayonet.description")
    ATT.Category = "ur_g3_bayobipod"
    ATT.SortOrder = 999
    ATT.Free = true
    ATT.Ignore = true
    ATT.ActivateElements = {"ur_g3_bayobipod_bayonet"}

    ARC9.LoadAttachment(ATT, "ur_g3_bayobipod_bayonet")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_g3_bayobipod_bipod.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_g3_bayobipod_bipod.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_g3_bayobipod_bipod.printname.variant1") end
    ATT.Icon = false
    ATT.Description = ARC9:GetPhrase("ur_g3_bayobipod_bipod.description")
    ATT.Category = "ur_g3_bayobipod"
    ATT.SortOrder = 998
    ATT.Free = true
    ATT.Ignore = true
    ATT.ActivateElements = {"ur_g3_bayobipod_bipod"}

    ARC9.LoadAttachment(ATT, "ur_g3_bayobipod_bipod")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_g3_hg_51_flash.printname")
    ATT.Description = ARC9:GetPhrase("ur_g3_hg_51_flash.description")
    ATT.CustomCons = {
        ["uc.noubs"] = "",
    }

    ATT.Category = "ur_g3_handguard"
    ATT.SortOrder = 3
    ATT.Model = "models/weapons/arccw/atts/ud_flashlight_1.mdl"
    ATT.ModelOffset = Vector(0, 0, .1)
    ATT.UC_ModelAngleOffset = Angle(0, 0, 180)
    ATT.Scale = .01
    ATT.Flashlight = false
    ATT.FlashlightFOV = 50
    ATT.FlashlightDistance = 1024
    ATT.FlashlightColor = Color(255, 242, 229)
    ATT.FlashlightMaterial = "effects/flashlight001"
    ATT.FlashlightBrightness = 3
    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.on",
            Flashlight = true
        },
        {
            PrintName = "uc.toggle.off",
            Flashlight = false,
        }
    }

    ATT.RequireElements = {"g3_hk51hg"}
    ATT.Ignore = true
    ATT.ActivateElements = {"ur_g3_hg_51_flash", "g3_noub"}
    ATT.ModelAngleOffset = ARC9.UC.AttachmentAngle(ATT.UC_ModelAngleOffset)
    ATT.FlashlightAttachment = 1
    ATT.NoDraw = true
    ATT.UC_HideIfBlocked = true

    ARC9.LoadAttachment(ATT, "ur_g3_hg_51_flash")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_g3_hg_51_mlok.printname")
    ATT.Description = ARC9:GetPhrase("ur_g3_hg_51_mlok.description")
    ATT.CustomCons = {
        ["uc.noubs"] = "",
    }

    ATT.Category = "ur_g3_handguard"
    ATT.SortOrder = 2
    ATT.ModelOffset = Vector(-21, -2.2, 4.3)
    ATT.Model = "models/weapons/arccw/ur_g3_lhik_slim.mdl"
    ATT.NoDraw = true
    ATT.LHIK = true
    ATT.LHIKPriority = 0
    ATT.SwayMult = .85
    ATT.AimDownSightsTimeMult = 1.05
    ATT.SprintToFireTimeMult = 1.05
    ATT.RecoilMult = .9
    ATT.RequireElements = {"g3_hk51hg"}
    ATT.Ignore = true
    ATT.ActivateElements = {"ur_g3_hg_51_mlok", "g3_noub"}
    ATT.UC_HideIfBlocked = true

    ARC9.LoadAttachment(ATT, "ur_g3_hg_51_mlok")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_g3_hg_pica.printname")
    ATT.Icon = Material("entities/att/ur_g3/hg_pica.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_g3_hg_pica.description")
    ATT.CustomPros = {
        ["uc.cosmetic"] = "",
    }

    ATT.Category = "ur_g3_handguard"
    ATT.SortOrder = 5
    ATT.ActivateElements = {"ur_g3_hg_pica"}

    ARC9.LoadAttachment(ATT, "ur_g3_hg_pica")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_g3_hg_slim.printname")
    ATT.Icon = Material("entities/att/ur_g3/hg_slim.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_g3_hg_slim.description")
    ATT.Category = "ur_g3_handguard"
    ATT.SortOrder = 5
    ATT.ModelOffset = Vector(-21, -2.2, 4.3)
    ATT.Model = "models/weapons/arccw/ur_g3_lhik_slim.mdl"
    ATT.NoDraw = true
    ATT.LHIK = true
    ATT.LHIKPriority = 0
    ATT.SwayMult = .85
    ATT.AimDownSightsTimeMult = .85
    ATT.SprintToFireTimeMult = .85
    ATT.RecoilMult = 1.1
    ATT.ActivateElements = {"ur_g3_hg_slim"}

    ARC9.LoadAttachment(ATT, "ur_g3_hg_slim")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_g3_mag_10.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_g3_mag_10.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_g3_mag_10.printname.variant1") end
    ATT.Icon = Material("entities/att/ur_g3/mag10.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_g3_mag_10.description")
    ATT.Category = {"ur_g3_mag"}
    ATT.SortOrder = 14
    ATT.ClipSize = 10
    ATT.AimDownSightsTimeMult = 0.9
    ATT.SprintToFireTimeMult = 0.9
    ATT.ReloadTimeMult = 0.95
    ATT.SwayMult = 0.7
    ATT.SpeedMult = 1.025
    ATT.SpeedMultShooting = 1.05
    ATT.UC_HipDispersionMult = 0.85
    ATT.ExcludeElements = {"cal_556"}
    ATT.ActivateElements = {"ur_g3_mag_10"}
    ATT.UC_HideIfBlocked = true

    ARC9.LoadAttachment(ATT, "ur_g3_mag_10")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_g3_mag_20_556.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_g3_mag_20_556.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_g3_mag_20_556.printname.variant1") end
    ATT.Icon = Material("entities/att/ur_g3/mag556_20.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_g3_mag_20_556.description")
    ATT.Category = {"ur_g3_mag"}
    ATT.SortOrder = 10
    ATT.ClipSize = 20
    ATT.ClipSize_Priority = 2
    ATT.AimDownSightsTimeMult = 0.85
    ATT.SprintToFireTimeMult = 0.85
    ATT.ReloadTimeMult = 0.9
    ATT.SwayMult = 0.75
    ATT.SpeedMult = 1.025
    ATT.SpeedMultSights = 1.05
    ATT.SpeedMultShooting = 1.05
    ATT.RequireElements = {"cal_556"}
    ATT.ActivateElements = {"ur_g3_mag_20_556"}
    ATT.UC_HideIfBlocked = true

    ARC9.LoadAttachment(ATT, "ur_g3_mag_20_556")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_g3_mag_40_556.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_g3_mag_40_556.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_g3_mag_40_556.printname.variant1") end
    ATT.Icon = Material("entities/att/ur_g3/mag556_40.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_g3_mag_40_556.description")
    ATT.Category = {"ur_g3_mag"}
    ATT.SortOrder = 10
    ATT.ClipSize = 40
    ATT.ClipSize_Priority = 2
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.ReloadTimeMult = 1.15
    ATT.SwayMult = 1.5
    ATT.SpeedMult = 0.975
    ATT.SpeedMultShooting = 0.95
    ATT.RequireElements = {"cal_556"}
    ATT.ActivateElements = {"ur_g3_mag_40_556"}
    ATT.UC_HideIfBlocked = true

    ARC9.LoadAttachment(ATT, "ur_g3_mag_40_556")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_g3_mag_50.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_g3_mag_50.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_g3_mag_50.printname.variant1") end
    ATT.Icon = Material("entities/att/ur_g3/mag50.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_g3_mag_50.description")
    ATT.Category = {"ur_g3_mag"}
    ATT.CustomCons = {
        ["uc.jam"] = "",
    }

    ATT.SortOrder = 15
    ATT.Malfunction = true
    ATT.MalfunctionMeanShotsToFailMult = 0.75
    ATT.UC_MalfunctionVarianceMult = 1.5
    ATT.ClipSize = 50
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.ReloadTimeMult = 1.2
    ATT.SwayMult = 1.1
    ATT.SpeedMult = 0.9
    ATT.SpeedMultShooting = 0.85
    ATT.UC_HipDispersionMult = 1.5
    ATT.ExcludeElements = {"cal_556"}
    ATT.ActivateElements = {"ur_g3_mag_50"}
    ATT.UC_HideIfBlocked = true

    ARC9.LoadAttachment(ATT, "ur_g3_mag_50")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_g3_optic_psg1.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_g3_optic_psg1.compactname")
    if not ARC9:UseTrueNames() then
        ATT.PrintName = ARC9:GetPhrase("ur_g3_optic_psg1.printname.variant1")
        ATT.CompactName = ARC9:GetPhrase("ur_g3_optic_psg1.compactname.variant1")
    end

    ATT.Icon = Material("entities/att/acwatt_ur_g3_optic_psg1.png", "mips smooth")
    ATT.Description = ARC9:GetPhrase("ur_g3_optic_psg1.description")
    ATT.SortOrder = 300
    ATT.CustomPros = {
        ["uc.base.autostat.holosight"] = "",
        ["uc.base.autostat.zoom"] = "",
    }

    ATT.Category = {"ur_g3_optic"}
    ATT.Model = "models/weapons/arccw/atts/g3_optic_psg.mdl"
    ATT.ModelOffset = Vector(0.55, 0, -1.7)
    ATT.SpeedMultSights = 0.84
    ATT.ActivateElements = {"ur_g3_optic_psg1"}
    ATT.Sights = {
        {
            Pos = Vector(0.01, 9.8, -2.82),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
            Blur = false
        }
    }

    ATT.RTScope = true
    ATT.RTScopeNew_DisableShader = true
    ATT.RTScopeSubmatIndex = ARC9.UC.NoLensIndex
    if CLIENT then ATT.DrawFunc = ARC9.UC.ScopePiece("models/weapons/arccw/atts/g3_optic_psg_hsp.mdl") end
    ATT.RTScopeReticle = Material("hud/scopes/PSG1_reticle.png", "mips smooth")
    ATT.RTScopeColorable = true
    ATT.RTScopeMagnification = ARC9.UC.ScopeMag(6)
    ATT.RTScopeReticleScale = ARC9.UC.ReticleScale(15, 9.25)

    ARC9.LoadAttachment(ATT, "ur_g3_optic_psg1")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_g3_optic_sg1.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_g3_optic_sg1.compactname")
    if not ARC9:UseTrueNames() then ATT.CompactName = ARC9:GetPhrase("ur_g3_optic_sg1.compactname.variant1") end
    ATT.Icon = Material("entities/att/acwatt_ur_g3_optic_sg1.png", "mips smooth")
    ATT.Description = ARC9:GetPhrase("ur_g3_optic_sg1.description")
    ATT.SortOrder = 300
    ATT.CustomPros = {
        ["uc.base.autostat.holosight"] = "",
        ["uc.base.autostat.zoom"] = "",
    }

    ATT.Category = {"ur_g3_optic"}
    ATT.Model = "models/weapons/arccw/atts/g3_optic_sg1.mdl"
    ATT.ModelOffset = Vector(0.55, 0, -1.7)
    ATT.SpeedMultSights = 0.78
    ATT.ActivateElements = {"ur_g3_optic_sg1"}
    ATT.Sights = {
        {
            Pos = Vector(0.01, 9.05, -2.88),
            Ang = Angle(0, 0, 0),
            Magnification = 1.1,
            ViewModelFOV = ARC9.UC.SightViewModelFOV,
            Blur = false
        }
    }

    ATT.RTScope = true
    ATT.RTScopeNew_DisableShader = true
    ATT.RTScopeSubmatIndex = ARC9.UC.NoLensIndex
    if CLIENT then ATT.DrawFunc = ARC9.UC.ScopePiece("models/weapons/arccw/atts/g3_optic_sg1_hsp.mdl") end
    ATT.RTScopeReticle = Material("hud/scopes/SG1_reticle.png", "mips smooth")
    ATT.RTScopeColorable = true
    ATT.RTScopeMagnification = ARC9.UC.ScopeMag(4.5)
    ATT.RTScopeReticleScale = ARC9.UC.ReticleScale(16, 8.5)
    ATT.RTScopeAdjustable = true
    ATT.RTScopeAdjustmentLevels = 5
    ATT.RTScopeMagnificationMin = ARC9.UC.ScopeMag(1.5)
    ATT.RTScopeMagnificationMax = ARC9.UC.ScopeMag(6)

    ARC9.LoadAttachment(ATT, "ur_g3_optic_sg1")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_g3_rec_hk33.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_g3_rec_hk33.compactname")
    if not ARC9:UseTrueNames() then
        ATT.PrintName = ARC9:GetPhrase("ur_g3_rec_hk33.printname.variant1")
        ATT.CompactName = ARC9:GetPhrase("ur_g3_rec_hk33.compactname.variant1")
    end

    ATT.Description = ARC9:GetPhrase("ur_g3_rec_hk33.description")
    ATT.Icon = Material("entities/att/ur_g3/rec_33.png", "smooth mips")
    ATT.Category = "ur_g3_rec"
    ATT.SortOrder = 12
    ATT.ClipSize = 30
    ATT.Ammo = "smg1"
    ATT.TriviaHook = ARC9.UC.TriviaHook("uc.trivia.calibre2", "ur_g3_rec_hk33.calibre")
    ATT.Class = "ur_g3_rec_hk33.class"
    ATT.RPMMult = 650 / 520
    ATT.SpeedMultSights = 1.05
    ATT.ReloadTimeMult = .95
    ATT.RecoilMult = 0.45
    ATT.UC_HipDispersionMult = .75
    ATT.PenetrationMult = 14 / 20
    ATT.DamageMinMult = 20 / 35
    ATT.DamageMaxMult = 34 / 65
    ATT.ShellModel = "models/weapons/arc9/uc/uc_shells/556x45.mdl"
    ATT.ShellScale = 1
    ATT.ShellSounds = ARC9.ShellSoundsTable
    ATT.Firemodes_Priority = 0.5
    ATT.Firemodes = {
        {
            Mode = -1,
        },
        {
            Mode = 1,
        },
    }

    local path = ")weapons/arccw_ur/g3/"
    local path1 = ")weapons/arccw_ur/ak/556/"
    local fire556 = {path .. "fire-556-01.ogg", path .. "fire-556-02.ogg", path .. "fire-556-03.ogg", path .. "fire-556-04.ogg", path .. "fire-556-05.ogg", path .. "fire-556-06.ogg"}
    local fire556sup = {path1 .. "fire-sup-01.ogg", path1 .. "fire-sup-02.ogg", path1 .. "fire-sup-03.ogg", path1 .. "fire-sup-04.ogg", path1 .. "fire-sup-05.ogg", path1 .. "fire-sup-06.ogg"}
    local tail = ")/arccw_uc/common/556x45/"
    local fire556dist = {tail .. "fire-dist-556x45-rif-ext-01.ogg", tail .. "fire-dist-556x45-rif-ext-02.ogg", tail .. "fire-dist-556x45-rif-ext-03.ogg", tail .. "fire-dist-556x45-rif-ext-04.ogg", tail .. "fire-dist-556x45-rif-ext-05.ogg", tail .. "fire-dist-556x45-rif-ext-06.ogg"}
    ATT.ActivateElements = {"ur_g3_rec_hk33", "cal_556"}
    ATT.ShootSoundHook = function(wep, sound)
        if wep:GetUBGL() then return end
        if wep:GetValue("Silencer") then
            return fire556sup
        else
            return fire556
        end
    end

    ATT.ShootSoundSilencedHook = ATT.ShootSoundHook
    ATT.DistantShootSoundHook = function(wep, distancesound)
        if wep:GetUBGL() then return end
        if not wep:GetValue("Silencer") then return fire556dist end
    end

    ATT.ClipSize_Priority = 1
    ATT.UC_DefaultSlots = {
        [9] = {
            Name = "ur_g3_rec_hk33.slot9",
            Icon = Material("entities/att/ur_g3/mag556_30.png", "mips smooth")
        },
    }

    ARC9.LoadAttachment(ATT, "ur_g3_rec_hk33")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_g3_rec_psg.printname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_g3_rec_psg.printname.variant1") end
    ATT.Description = ARC9:GetPhrase("ur_g3_rec_psg.description")
    ATT.Icon = Material("entities/att/ur_g3/rec_psg.png", "smooth mips")
    ATT.Category = "ur_g3_rec"
    ATT.CustomCons = {
        ["uc.semionly"] = "",
    }

    ATT.SortOrder = 13
    ATT.RPMMult = 400 / 520
    ATT.RecoilMult = 0.6
    ATT.SpreadMult = 0.5
    ATT.RangeMaxMult = 1.25
    ATT.UC_MoveDispersionMult = 0.5
    ATT.PhysBulletMuzzleVelocityMult = 1.15
    ATT.Firemodes_Priority = 0.5
    ATT.Firemodes = {
        {
            Mode = 1,
        },
    }

    ATT.Class = "ur_g3_rec_psg.class"
    ATT.RangeMinMult = 1.25
    ATT.ActivateElements = {"ur_g3_rec_psg"}

    ARC9.LoadAttachment(ATT, "ur_g3_rec_psg")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_g3_skin_custom.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_g3_skin_custom.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_g3_skin_custom.printname.variant1") end
    ATT.Description = ARC9:GetPhrase("ur_g3_skin_custom.description")
    ATT.Icon = Material("entities/att/ur_g3/skin_cust.png", "smooth mips")
    ATT.Category = "ur_g3_skin"
    ATT.CustomPros = {
        ["uc.cosmetic"] = "",
        ["uc.custcolor"] = "",
    }

    ATT.SortOrder = 1
    ATT.ActivateElements = {"ur_g3_skin_custom"}

    ARC9.LoadAttachment(ATT, "ur_g3_skin_custom")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_g3_skin_olive.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_g3_skin_olive.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_g3_skin_olive.printname.variant1") end
    ATT.Description = ARC9:GetPhrase("ur_g3_skin_olive.description")
    ATT.Icon = Material("entities/att/ur_g3/skin_oliva.png", "smooth mips")
    ATT.Category = "ur_g3_skin"
    ATT.CustomPros = {
        ["uc.cosmetic"] = "",
    }

    ATT.SortOrder = 1
    ATT.ActivateElements = {"ur_g3_skin_olive"}

    ARC9.LoadAttachment(ATT, "ur_g3_skin_olive")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_g3_skin_tan.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_g3_skin_tan.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_g3_skin_tan.printname.variant1") end
    ATT.Description = ARC9:GetPhrase("ur_g3_skin_tan.description")
    ATT.Icon = Material("entities/att/ur_g3/skin_fde.png", "smooth mips")
    ATT.Category = "ur_g3_skin"
    ATT.CustomPros = {
        ["uc.cosmetic"] = "",
    }

    ATT.SortOrder = 1
    ATT.ActivateElements = {"ur_g3_skin_tan"}

    ARC9.LoadAttachment(ATT, "ur_g3_skin_tan")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_g3_skin_wood.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_g3_skin_wood.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_g3_skin_wood.printname.variant1") end
    ATT.Icon = Material("entities/att/ur_g3/skin_wood.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_g3_skin_wood.description")
    ATT.Category = "ur_g3_skin"
    ATT.CustomPros = {
        ["uc.cosmetic"] = "",
    }

    ATT.SortOrder = 1
    ATT.ActivateElements = {"ur_g3_skin_wood"}

    ARC9.LoadAttachment(ATT, "ur_g3_skin_wood")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_g3_stock_collapsible.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_g3_stock_collapsible.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_g3_stock_collapsible.printname.variant1") end
    ATT.Icon = Material("entities/att/ur_g3/stock_colap.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_g3_stock_collapsible.description")
    ATT.Category = {"ur_g3_stock"}
    ATT.SortOrder = 10
    ATT.AimDownSightsTimeMult = 0.75
    ATT.SprintToFireTimeMult = 0.75
    ATT.UC_ToggleSound = "arccw_uc/common/stockslide.ogg"
    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.extended",
            ActivateElements = {"stock_g3_collapsible"},
            RecoilMult = 1.2,
        },
        {
            PrintName = "uc.toggle.collapsed",
            ActivateElements = {"stock_g3_collapsed"},
            UC_HipDispersionMult = .8,
            DeployTimeMult = 0.85,
            SpeedMultShooting = 1.15,
            BarrelLengthAdd = -5,
            RecoilMult = 1.5,
            RecoilRandomSideMult = 1.25,
            SwayMult = 3,
        }
    }

    ATT.ActivateElements = {"ur_g3_stock_collapsible"}
    ATT.ToggleAttSoundHook = ARC9.UC.ToggleSound
    ATT.Hook_Think = ARC9.UC.ToggleSoundThink

    ARC9.LoadAttachment(ATT, "ur_g3_stock_collapsible")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_g3_stock_psg.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_g3_stock_psg.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_g3_stock_psg.printname.variant1") end
    ATT.Icon = Material("entities/att/ur_g3/stock_psg.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_g3_stock_psg.description")
    ATT.Category = {"ur_g3_stock"}
    ATT.SortOrder = 11
    ATT.RecoilMult = 0.85
    ATT.SwayMult = .6
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.SpeedMult = 0.8
    ATT.ActivateElements = {"ur_g3_stock_psg"}

    ARC9.LoadAttachment(ATT, "ur_g3_stock_psg")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_g3_stock_rucar.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_g3_stock_rucar.compactname")
    ATT.Icon = Material("entities/att/ur_g3/stock_ar.png", "smooth mips")
    if ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_g3_stock_rucar.printname.variant1") end
    ATT.Description = ARC9:GetPhrase("ur_g3_stock_rucar.description")
    ATT.Category = {"ur_g3_stock"}
    ATT.SortOrder = 9
    ATT.SpeedMult = 1.05
    ATT.UC_MoveDispersionMult = .6
    ATT.AimDownSightsTimeMult = .9
    ATT.SprintToFireTimeMult = .9
    ATT.SwayMult = 1.5
    ATT.RecoilRandomSideMult = 1.5
    ATT.ActivateElements = {"ur_g3_stock_rucar"}

    ARC9.LoadAttachment(ATT, "ur_g3_stock_rucar")
end

do
    local ATT = {}

    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.PrintName = ARC9:GetPhrase("ur_g3_stock_sg.printname")
    ATT.CompactName = ARC9:GetPhrase("ur_g3_stock_sg.compactname")
    if not ARC9:UseTrueNames() then ATT.PrintName = ARC9:GetPhrase("ur_g3_stock_sg.printname.variant1") end
    ATT.Icon = Material("entities/att/ur_g3/stock_sg.png", "smooth mips")
    ATT.Description = ARC9:GetPhrase("ur_g3_stock_sg.description")
    ATT.Category = {"ur_g3_stock"}
    ATT.SortOrder = 11
    ATT.SwayMult = .75
    ATT.AimDownSightsTimeMult = 1.075
    ATT.SprintToFireTimeMult = 1.075
    ATT.ActivateElements = {"ur_g3_stock_sg"}

    ARC9.LoadAttachment(ATT, "ur_g3_stock_sg")
end
