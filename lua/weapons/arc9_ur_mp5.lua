SWEP.Base = "arc9_uc_base"
SWEP.DrawCustomModel = ARC9.UC.DrawCustomModel
SWEP.AfterShotFunction = ARC9.UC.AfterShotFunction
SWEP.BuildSubAttachments = ARC9.UC.BuildSubAttachments
SWEP.UC_MalfunctionVariance = 0.25
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Urban Coalition"
SWEP.SubCategory = "ur.title"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Effects --

SWEP.MuzzleParticle = "muzzleflash_mp5"
SWEP.ShellEffect = "arc9_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arc9/uc/uc_shells/9x19.mdl"
SWEP.ShellScale = 1
SWEP.ShellPitch = 100
SWEP.ShellSounds = ARC9.PistolShellSoundsTable

SWEP.MuzzleEffectQCA = 1
SWEP.CaseEffectQCA = 2
SWEP.TracerNum = 1
SWEP.TracerNum_Priority = 0
SWEP.TracerColor = Color(255, 225, 200)

SWEP.EjectDelay = 0.03

-- Names --

SWEP.PrintName = ARC9:GetPhrase("arc9_ur_mp5.printname")
SWEP.TrueName = ARC9:GetPhrase("arc9_ur_mp5.truename")

SWEP.Class = "uc.class.smg"
SWEP.Description = "arc9_ur_mp5.description"
SWEP.Trivia = {
    ["uc.trivia.manufacturer1"] = ARC9:UseTrueNames() and "arc9_ur_mp5.trivia.manufacturer.true" or "arc9_ur_mp5.trivia.manufacturer",
    ["uc.trivia.calibre2"] = "uc.calibre.9x19mm_parabellum",
    ["uc.trivia.mechanism3"] = "ur.mechanism.roller_delayed_blowback",
    ["uc.trivia.country4"] = "ur.country.germany",
    ["uc.trivia.year5"] = 1966,
}

-- Weapon slot --

SWEP.Slot = 2

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arc9/uc/c_ur_mp5.mdl"
SWEP.WorldModel = "models/weapons/arc9/uc/c_ur_mp5.mdl"
SWEP.DefaultBodygroups = "000000000"
-- Spare magazine and rounds have separate vertex weights in the compiled model.
SWEP.HideBones = {"magb", "bullet1", "bullet2", "bullet3"}
SWEP.ViewModelFOVBase = 70
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

-- Damage --

SWEP.DamageMax = ARC9.UC.StdDmg["9mm"].max
SWEP.DamageMin = ARC9.UC.StdDmg["9mm"].min
SWEP.Penetration = ARC9.UC.StdDmg["9mm"].pen
SWEP.PenetrationDelta = 0

SWEP.RangeMin = 20 * ARC9.UC.Meter
SWEP.RangeMax = 100 * ARC9.UC.Meter
SWEP.CurvedDamageScaling = false
SWEP.NormalizeNumDamage = true

SWEP.DamageType = DMG_BULLET
SWEP.PhysBulletMuzzleVelocity = 400 * ARC9.UC.Meter

SWEP.BodyDamageMults = ARC9.UC.BodyDamageMults

-- Mag size --

SWEP.ChamberSize = 1
SWEP.ClipSize = 30
SWEP.ClipSize_Priority = 0

-- Recoil --

SWEP.Recoil = 0.22 * ARC9.UC.Recoil
SWEP.RecoilUp = 1
SWEP.RecoilSide = 0
SWEP.RecoilRandomUp = 0
SWEP.RecoilRandomSide = 0.17 / 0.22
SWEP.RecoilPatternDrift = 0
SWEP.RecoilAutoControl = 0
SWEP.UseVisualRecoil = true
SWEP.VisualRecoil = 1.25
SWEP.VisualRecoilUp = 0.22
SWEP.VisualRecoilPunch = 1
SWEP.VisualRecoilMultSights = 0.5
SWEP.VisualRecoilPunchMultSights = 1

SWEP.Sway = 0.25 * ARC9.UC.Sway
SWEP.SwayMultSights = 1
SWEP.SwayMultMove = 1.5
SWEP.SwayMultCrouch = 0.75
SWEP.SwayMultMidAir = 2

-- Firerate / Firemodes --

SWEP.RPM = 800
SWEP.Num = 1
SWEP.Firemodes = {
    {Mode = -1},
    {Mode = 3, UC_MoveDispersionMult = 0.75, UC_HipDispersionMult = 0.9},
    {Mode = 1},
}
SWEP.Firemodes_Priority = 0
SWEP.RunawayBurst = false
SWEP.AutoBurst = false

SWEP.ShootPitch = 100
SWEP.ShootPitchVariation = 5
SWEP.ShootVolume = 120

SWEP.ReloadInSights = true

-- NPC --

SWEP.ARC9WeaponCategory = ARC9.WEAPON_SMG

-- Accuracy --

SWEP.Spread = 3 * ARC9.UC.MOA
SWEP.UC_HipDispersion = 500 * ARC9.UC.Dispersion
SWEP.UC_MoveDispersion = 150 * ARC9.UC.Dispersion
SWEP.UC_JumpDispersion = 1000 * ARC9.UC.Dispersion
SWEP.UC_SightsDispersion = 0
SWEP.UC_BipodDispersion = 1
SWEP.UseDispersion = true
SWEP.DispersionSpread = 0
SWEP.FreeAimRadius = math.Clamp(500 / 80, 3, 10)

SWEP.Ammo = "pistol"

SWEP.HeatCapacity = 75
SWEP.HeatDissipation = 15
SWEP.HeatDelayTime = 3

SWEP.MalfunctionMeanShotsToFail = 200
SWEP.MalfunctionWait = 0.5
SWEP.MalfunctionNeverLastShoot = false

SWEP.DoPrimaryAttack = ARC9.UC.DoPrimaryAttack
SWEP.HookP_BlockFire = ARC9.UC.BlockFireJam
SWEP.RollJam = ARC9.UC.SkipPostFireJam
SWEP.UnJam = ARC9.UC.UnJam

-- Speed multipliers --

SWEP.Speed = 0.925
SWEP.SpeedMultSights = 0.75
SWEP.AimDownSightsTime = 0.3
SWEP.SprintToFireTime = 0.3
SWEP.SpeedMultShooting = 0.95
SWEP.SpeedMultMelee = 1

-- Melee --

SWEP.Bash = true
SWEP.BashDamage = 25
SWEP.BashRange = 48
SWEP.BashLungeRange = 64
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.3
SWEP.UC_MeleeTime = 1
SWEP.UC_MeleeWaitTime = 1
SWEP.UC_DrawTime = 1

-- Length --

SWEP.BarrelLength = 24
SWEP.UC_BarrelOffsetHip = Vector(4, 0, -4)
SWEP.UC_ExtraSightDist = 2

-- Ironsights / Customization / Poses --

-- ArcCW poses converted to ARC9's rotation order and unrotated position axes, including
-- the one-unit drop ArcCW applies outside sights.
SWEP.RestPos = Vector(0.707385, -1.889195, 0.424910)
SWEP.RestAng = Angle(8.087680, -8.416675, -11.191555)
SWEP.NearWallPos = Vector(0.515385, -1.742824, 1.395329)
SWEP.NearWallAng = Angle(8.087680, -8.416675, -11.191555)
-- ArcCW drops procedural bob while a sprint animation plays.
SWEP.BobSprintMult = 0
SWEP.SprintVerticalOffset = false

SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeHolstered = "normal"
SWEP.HoldType = "ar2"
SWEP.HoldTypeSights = "rpg"

SWEP.IronSights = {
    Pos = Vector(-3.170000, -1.004681, 0.592128),
    Ang = Angle(0, 0.450000, 0),
    Magnification = 1,
    ViewModelFOV = 60,
}

SWEP.ActivePos = Vector(-0.292973, 1.100000, -0.405175)
SWEP.ActiveAng = Angle(0.000000, 0.000000, -1.000000)

SWEP.CustomizeRotateAnchor = Vector(18, -3.17, -3)
SWEP.CustomizeSnapshotFOV = 30
SWEP.CustomizeSnapshotPos = Vector(-9.1, 83.4, 0.77)

SWEP.UC_CrouchPos = Vector(-1.698669, 0.500000, -1.454140)
SWEP.UC_CrouchAng = Angle(0.000000, 0.000000, -14.000000)

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.TPIKforcelefthand = true
SWEP.WorldModelOffset = {
    Pos = Vector(-8, 4, -5),
    Ang = Angle(-12, 0, 180),
    TPIKPos = Vector(-7.95, 4.88, -5.86),
    Scale = 1
}

SWEP.SprintPos = Vector(0.000000, -3.000000, -1.000000)
SWEP.SprintAng = Angle(0.000000, 0.000000, 0.000000)
SWEP.SprintPosHook = ARC9.UC.SprintPos
SWEP.SprintAngHook = ARC9.UC.SprintAng

local path = ")weapons/arccw_ur/mp5/"
local common = ")/arccw_uc/common/"

SWEP.ShootSound = {
    path .. "fire-01.ogg",
    path .. "fire-02.ogg",
    path .. "fire-03.ogg"
}
SWEP.ShootSoundSilenced = {
    path .. "fire-sup-01.ogg",
    path .. "fire-sup-02.ogg",
    path .. "fire-sup-03.ogg",
    path .. "fire-sup-04.ogg",
    path .. "fire-sup-05.ogg",
    path .. "fire-sup-06.ogg"
}
SWEP.DryFireSound = path .. "dryfire.ogg"

local tail = ")/arccw_uc/common/9x19/"

SWEP.DistantShootSound = {
    path .. "fire-dist-01.ogg",
    path .. "fire-dist-02.ogg",
    path .. "fire-dist-03.ogg",
    path .. "fire-dist-04.ogg",
    path .. "fire-dist-05.ogg",
    path .. "fire-dist-06.ogg"
}
SWEP.DistantShootSoundIndoor = {
    tail .. "fire-dist-9x19-pistol-int-01.ogg",
    tail .. "fire-dist-9x19-pistol-int-02.ogg",
    tail .. "fire-dist-9x19-pistol-int-03.ogg",
    tail .. "fire-dist-9x19-pistol-int-04.ogg",
    tail .. "fire-dist-9x19-pistol-int-05.ogg",
    tail .. "fire-dist-9x19-pistol-int-06.ogg"
}
SWEP.DistantShootSoundSilenced = {
    common .. "sup-tail-01.ogg",
    common .. "sup-tail-02.ogg",
    common .. "sup-tail-03.ogg",
    common .. "sup-tail-04.ogg",
    common .. "sup-tail-05.ogg",
    common .. "sup-tail-06.ogg",
    common .. "sup-tail-07.ogg",
    common .. "sup-tail-08.ogg",
    common .. "sup-tail-09.ogg",
    common .. "sup-tail-10.ogg"
}
SWEP.DistantShootSoundSilencedIndoor = {
    common .. "fire-dist-int-pistol-light-01.ogg",
    common .. "fire-dist-int-pistol-light-02.ogg",
    common .. "fire-dist-int-pistol-light-03.ogg",
    common .. "fire-dist-int-pistol-light-04.ogg",
    common .. "fire-dist-int-pistol-light-05.ogg",
    common .. "fire-dist-int-pistol-light-06.ogg"
}
SWEP.UC_IndoorTailVolume = 0.6
SWEP.HookP_TranslateSound = ARC9.UC.ShootSound

SWEP.Hook_Think = function(wep)
    ARC9.UC.NearWallThink(wep)
    ARC9.UC.LoopSprintIdle(wep)
    if CLIENT then
        wep.UC_ADSBipod = math.Approach(wep.UC_ADSBipod or 0, wep:GetBipod() and 1 or 0, FrameTime() / 0.5)
    end
end

local function UsesAutoRail(wep)
    local atts = wep.Attachments
    local barrel = atts[2].Installed
    local handguard = atts[5].Installed
    return (atts[6].Installed or atts[7].Installed)
        and barrel != "ur_mp5_barrel_sd" and barrel != "ur_mp5_barrel_eod"
        and (!handguard or handguard == "ur_mp5_ub_classic")
end

if CLIENT then
    function SWEP:CreateHUD_Bottom()
        ARC9.UC.CreateHUD_Bottom(self)
        local handguard = self.Attachments[5]
        local button = handguard.lowerbutton
        if self.BottomBarMode != 0 or !IsValid(button) or !UsesAutoRail(self) then return end

        button:SetButtonText(ARC9:GetPhrase(handguard.Installed and "ur.mp5.slim_railed" or "ur.mp5.auto_rail"))
        button:SetIcon(ARC9.GetAttTable("ur_mp5_ub_ris").Icon)
    end

    function SWEP:CreateFlashlights()
        baseclass.Get("arc9_base").CreateFlashlights(self)
        for _, light in ipairs(self.Flashlights) do
            local att = light.slottbl.Installed
            if att == "ur_mp5_ub_surefire" or att == "ur_mp5_ub_surefire_mlok" then
                light.light:SetQuadraticAttenuation(0)
                light.light:SetLinearAttenuation(100)
                light.light:Update()
            end
        end
    end

    local function UpdateHandguardLights(wep)
        if !wep.Flashlights then return end
        for _, light in ipairs(wep.Flashlights) do
            local att = light.slottbl.Installed
            if att != "ur_mp5_ub_surefire" and att != "ur_mp5_ub_surefire_mlok" then continue end
            -- ARC9 keeps new lights disabled at zero until their position is ready.
            if IsValid(light.light) and light.light:GetNearZ() == 4 then
                light.light:SetNearZ(1)
                light.light:Update()
            end
        end
    end

    function SWEP:DrawFlashlightsVM()
        baseclass.Get("arc9_base").DrawFlashlightsVM(self)
        UpdateHandguardLights(self)
    end

    function SWEP:DrawFlashlightsWM()
        baseclass.Get("arc9_base").DrawFlashlightsWM(self)
        UpdateHandguardLights(self)
    end
end

local handguardBodygroups = {
    ur_mp5_ub_classic = 3,
    ur_mp5_ub_ris = 4,
    ur_mp5_ub_surefire = 1,
    ur_mp5_ub_surefire_mlok = 2,
    ur_mp5_ub_kurzgrip = 6,
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local atts = wep.Attachments
    local model = data.model
    local barrel = atts[2].Installed
    local handguard = atts[5].Installed
    local amount = math.max(wep:GetSightAmount(), wep.UC_ADSBipod or 0)
    model:SetPoseParameter("sights", math.ease.InOutCubic(amount))

    -- ARC9's element table has no stable order; resolve overlapping source parts here.
    local handguardGroup = handguardBodygroups[handguard]
    if handguardGroup then
        model:SetBodygroup(4, handguardGroup)
    elseif barrel == "ur_mp5_barrel_sd" then
        model:SetBodygroup(4, 9)
    elseif barrel == "ur_mp5_barrel_eod" then
        model:SetBodygroup(4, 10)
    elseif barrel == "ur_mp5_barrel_kurz" then
        model:SetBodygroup(4, 7)
    end

    model:SetBodygroup(8, 0)
    if atts[6].Installed or atts[7].Installed then
        if barrel == "ur_mp5_barrel_sd" then
            model:SetBodygroup(8, 1)
        elseif barrel == "ur_mp5_barrel_eod" then
            model:SetBodygroup(8, 2)
        elseif UsesAutoRail(wep) then
            model:SetBodygroup(4, 4)
        end
    end

    if handguard == "ur_mp5_ub_mlok" then
        model:SetBodygroup(4, barrel == "ur_mp5_barrel_kurz" and 8 or 5)
    end

    local optic = atts[1].Installed
    local mount = atts[14].Installed == "ur_mp5_optic_mount"
    model:SetBodygroup(6, ((optic and optic != "ur_mp5_optic_alt") or mount) and 1 or 0)
    if barrel == "ur_mp5_barrel_sword" then
        model:SetBodygroup(0, optic and 3 or 1)
        model:SetBodygroup(6, 0)
    end
end

SWEP.Hook_TranslateAnimation = function(wep, anim)
    if wep:GetUBGL() or (anim != "reload" and anim != "reload_empty") then return ARC9.UC.InspectIdle(wep, anim) end

    local magazine = wep.Attachments[9].Installed
    if magazine == "ur_mp5_mag_50" then return anim .. "_drum" end

    if wep.Attachments[2].Installed == "ur_mp5_barrel_kurz" then
        if anim == "reload_empty" and magazine == "ur_mp5_mag_15" then return "reload_empty_kurz_15" end
        return anim .. "_kurz"
    end

    if magazine == "ur_mp5_mag_15" then return anim .. "_15" end
end

SWEP.AttachmentElements = {
    ["ur_mp5_barrel_sd"] = {
        Bodygroups = {
            {1, 1},
            {4, 9},
        },
        AttPosMods = {
            [6] = {
                Pos = Vector(0, 1.3, 10),
                Ang = Angle(90, 0, -90),
            },
            [7] = {
                Pos = Vector(-1.15, 0.3, 8),
                Ang = Angle(90, 0, 180),
            },
        },
    },
    ["ur_mp5_barrel_eod"] = {
        Bodygroups = {
            {4, 10},
        },
        AttPosMods = {
            [6] = {
                Pos = Vector(0, 1.5, 10),
                Ang = Angle(90, 0, -90),
            },
            [7] = {
                Pos = Vector(-0.95, 0.3, 8),
                Ang = Angle(90, 0, 180),
            },
        }
    },
    ["ur_mp5_barrel_kurz"] = {
        Bodygroups = {
            {1, 2},
            {4, 7},
        },
        AttPosMods = {[4] = {
            Pos = Vector(-0.1, 0.3, 11.5),
            Ang = Angle(90, 0, -90),
        }}
    },
    ["ur_mp5_barrel_swordfish"] = {
        Bodygroups = {
            {1, 3},
            {6, 0},
        },
    },

    ["ur_mp5_rail_fg"] = {
        Bodygroups = {{4, 4}},
    },
    ["ur_mp5_ub_classic"] = {
        Bodygroups = {{4, 3}},
    },
    ["ur_mp5_ub_surefire"] = {
        Bodygroups = {{4, 1}},
    },
    ["ur_mp5_ub_surelock"] = {
        Bodygroups = {{4, 2}},
    },
    ["ur_mp5_ub_kurzgrip"] = {
        Bodygroups = {{4, 6}},
    },
    ["ur_mp5_ub_kurzmlok"] = {
        Bodygroups = {{4, 8}},
    },
    ["ur_mp5_ub_wood"] = {
        Bodygroups = {{4, 3}},
    },

    ["ur_mp5_mag_15"] = {
        Bodygroups = {{5, 1}},
    },
    ["ur_mp5_mag_40"] = {
        Bodygroups = {{5, 3}},
    },
    ["ur_mp5_mag_50"] = {
        Bodygroups = {{5, 3}},
    },
    ["ur_mp5_mag_waffle"] = {
        Bodygroups = {{5, 2}},
    },

    ["ur_mp5_rail_optic"] = {
        Bodygroups = {{6, 1}},
    },

    ["ur_mp5_clamp"] = {
        Bodygroups = {{5, 1}},
    },

    ["receiver_lower"] = {
        Bodygroups = {{2, 1}},
    },
    -- The source requests lower bodygroup 2, but this model only contains 0 and 1.
    ["receiver_lower_semi"] = {},
    ["receiver_lower_0"] = {
        Bodygroups = {{2, 0}},
    },
    ["receiver_upper_0"] = {
        Bodygroups = {{7, 0}},
    },

    ["stock_a3"] = {
        Bodygroups = {
            {3, 1},
        },
    },
    ["stock_a3_folded"] = {
        Bodygroups = {
            {3, 2},
        },
    },
    ["ur_mp5_stock_remove"] = {
        Bodygroups = {{3, 10}},
    },
    ["ur_mp5_stock_wood"] = {
    },
    ["stock_pdw"] = {
        Bodygroups = {{3, 3}},
    },
    ["stock_pdw_folded"] = {
        Bodygroups = {{3, 4}},
    },
    ["stock_ump"] = {
        Bodygroups = {{3, 5}},
    },
    ["stock_ump_folded"] = {
        Bodygroups = {{3, 6}},
    },
    ["stock_future"] = {
        Bodygroups = {{3, 7}},
    },
    ["stock_future_folded"] = {
        Bodygroups = {{3, 8}},
    },
    ["ur_mp5_precision_irons"] = {
        Bodygroups = {
            {0, 2},
            {6, 0},
            },
    },
}

local function Variant(wep)
    local atts = wep.Attachments
    local barr = string.Replace(atts[2].Installed or "default","ur_mp5_barrel_","")
    local cal = string.Replace(atts[3].Installed or "default","ur_mp5_caliber_","")
    local stock = string.Replace(atts[8].Installed or "default","ur_mp5_stock_","")
    local fakeNames = !ARC9:UseTrueNames()
    local defaultCals = {
        ["default"] = true,
        ["noburst"] = true,
        ["semi"] = true
    }

    local start = "MP5"
    local mid = "A"
    local num = "4"
    if fakeNames then
        start = "PK5"
        mid = "-"
    end

    if cal == "semi" then
        if fakeNames then
            return "PK5-CIV"
        else
            if barr == "long" or barr == "sd" then
                start = "HK94"
            else
                return "SP5" .. ((barr == "kurz" and "K-PDW") or "")
            end
        end
    end

    if !defaultCals[cal] then
        if barr == "sd" then
            num = "SD"
        else
            num = ""
        end
        if cal == "10auto" then
            mid = "/10"
        elseif cal == "40sw" then
            mid = "/40"
        elseif cal == "22lr" then
            if barr == "sd" then
                mid = "SD"
                num = " .22 LR"
            else
                mid = " .22 LR"
            end
        end
    else
        if barr == "kurz" then
            if fakeNames then
                mid = "C"
            else
                mid = "K"
            end
            if stock == "pdw" then
                num = "-PDW"
            elseif cal == "default" then
                if fakeNames then
                    num = "-4"
                else
                    num = "A4"
                end
            else
                num = ""
            end
        else
            if barr == "sd" then
                mid = "SD"
            end

            if cal == "noburst" or cal == "semi" then
                if stock == "a3" then
                    num = "3"
                elseif stock == "none" then
                    num = "1"
                else
                    num = "2"
                end
            else
                if stock == "a3" then
                    if barr == "sd" then
                        num = "6"
                    else
                        num = "5"
                    end
                elseif stock == "none" then
                    if barr == "sd" then
                        num = "4"
                    end
                else
                    if barr == "sd" then
                        num = "5"
                    end
                end
            end
        end
    end

    return start .. mid .. num
end

SWEP.HookP_NameChange = function(wep, name)
    local key = string.lower(Variant(wep)):gsub("[^%w]", "_")
    return ARC9:GetPhrase("ur.mp5.name." .. key)
end

local ratel = {common .. "rattle1.ogg", common .. "rattle2.ogg", common .. "rattle3.ogg"}
local rottle = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 1 / 30,
    },
    ["ready"] = {
        Source = "ready",
        Time = 38 / 30,
        IKTimeLine = ARC9.UC.LHIK(38 / 30, 0.4, 0.4, 0.6, 0.15),
        EventTable = {
            {s = rottle, t = 0.15},
            {s = path .. "rack1.ogg",         t = 0.15},
            {s = path .. "rack2.ogg",         t = 0.38},
            {s = ratel,         t = 0.75},
        }
    },
    ["draw"] = {
        Source = "draw",
        Time = 20 / 30,
        EventTable = ARC9.UC.DrawSounds,
    },
    ["holster"] = {
        Source = "holster",
        Time = 16 / 30,
        EventTable = ARC9.UC.HolsterSounds,
    },
    ["fire"] = {
        Source = "fire",
        Time = 13 / 30,
        EventTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0, v = 0.25 }},
    },
    ["fire_iron"] = {
        Source = "fire",
        Time = 13 / 30,
        EventTable = {
            {s = common .. "common_mech_light.ogg", t = 0, v = 0.25},
            { s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 }
        },
    },

    ["fix"] = {
        Source = "fix",
        Time = 40 / 30,
        IKTimeLine = ARC9.UC.LHIK(40 / 30, 0.4, 0.4, 0.4, 0.15),
        EjectAt = 0.36,
        EventTable = {
            {s = rottle, t = 0.15},
            {s = path .. "rack1.ogg",         t = 0.27},
            {s = path .. "rack2.ogg",         t = 0.5},
        },
    },

    ["reload"] = {
        Source = "reload",
        Time = 70 / 30,
        MinProgressTime = 1.2,
        MagSwapTime = 2,
        IKTimeLine = ARC9.UC.LHIK(70 / 30, 0.2, 0.2, 0.6, 0.15),
        EventTable = {
            {s = rottle, t = 0},
            {s = common .. "magpouch.ogg", t = 0.05},
            {s = path .. "magout.ogg",        t = 0.4},
            {s = rottle, t = 0.25},
            {s = path .. "magin.ogg",         t = 0.61},
            {s = common .. "magpouchin.ogg", t = 1.25},
            {s = ratel,  t = 1.55},
            {s = common .. "shoulder.ogg",  t = 1.75},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 89 / 30,
        MinProgressTime = 2.2,
        MagSwapTime = 1.8,
        IKTimeLine = ARC9.UC.LHIK(89 / 30, 0.3, 0.3, 0.55, 0.2),
        EventTable = {
            {s = rottle, t = 0},
            {s = path .. "chback.ogg",         t = 0.045},
            {s = path .. "chlock.ogg",         t = 0.18},
            {s = common .. "magpouch.ogg", t = 0.4},
            {s = path .. "magout.ogg",        t = 0.86},
            {s = rottle, t = 0.25},
            {s = path .. "magin.ogg",         t = 1.13},
            {s = common .. "magdrop_smg.ogg",  t = 1.5},
            {s = rottle, t = 1.25},
            {s = path .. "chamber.ogg",         t = 2.05},
            {s = ratel,  t = 2.3},
            {s = common .. "shoulder.ogg",  t = 2.45},
        },
    },
    ["reload_kurz"] = {
        Source = "reload",
        Time = 70 / 30,
        MinProgressTime = 1.2,
        MagSwapTime = 2,
        IKTimeLine = ARC9.UC.LHIK(70 / 30, 0.2, 0.2, 0.6, 0.15),
        EventTable = {
            {s = rottle, t = 0},
            {s = common .. "magpouch.ogg", t = 0.05},
            {s = path .. "magout.ogg",        t = 0.4},
            {s = rottle, t = 0.25},
            {s = path .. "magin.ogg",         t = 0.63},
            {s = common .. "magpouchin.ogg", t = 1.25},
            {s = ratel,  t = 1.55},
            {s = common .. "shoulder.ogg",  t = 1.5},
        },
    },
    ["reload_empty_kurz"] = {
        Source = "reload_empty_kurz",
        Time = 89 / 30,
        MinProgressTime = 2.2,
        MagSwapTime = 1.8,
        IKTimeLine = ARC9.UC.LHIK(89 / 30, 0.3, 0.3, 0.55, 0.2),
        EventTable = {
            {s = rottle, t = 0},
            {s = path .. "chback.ogg",         t = 0.066},
            {s = path .. "chlock.ogg",         t = 0.2},
            {s = common .. "magpouch.ogg", t = 0.4},
            {s = path .. "magout.ogg",        t = 0.86},
            {s = rottle, t = 0.25},
            {s = path .. "magin.ogg",         t = 1.13},
            {s = common .. "magdrop_smg.ogg",  t = 1.5},
            {s = rottle, t = 1.25},
            {s = path .. "chamber.ogg",         t = 2.1},
            {s = ratel,  t = 2.4},
            {s = common .. "shoulder.ogg",  t = 2.6},
        },
    },

    ["reload_15"] = {
        Source = "reload",
        Time = 70 / 30,
        MinProgressTime = 1.2,
        MagSwapTime = 67 / 30,
        IKTimeLine = ARC9.UC.LHIK(70 / 30, 0.2, 0.2, 0.6, 0.15),
        EventTable = {
            {s = rottle, t = 0},
            {s = common .. "magpouch.ogg", t = 0.05},
            {s = path .. "magout.ogg",        t = 0.25},
            {s = rottle, t = 0.25},
            {s = path .. "magin.ogg",         t = 0.5},
            {s = common .. "magpouchin.ogg", t = 1.25},
            {s = ratel,  t = 1.55},
            {s = common .. "shoulder.ogg",  t = 1.75},
        },
    },
    ["reload_empty_15"] = {
        Source = "reload_empty",
        Time = 89 / 30,
        MinProgressTime = 2.2,
        MagSwapTime = 1.8,
        IKTimeLine = ARC9.UC.LHIK(89 / 30, 0.3, 0.3, 0.55, 0.2),
        EventTable = {
            {s = rottle, t = 0},
            {s = path .. "chback.ogg",         t = 0.1},
            {s = path .. "chlock.ogg",         t = 0.19},
            {s = common .. "magpouch.ogg", t = 0.4},
            {s = path .. "magout.ogg",        t = .9},
            {s = rottle, t = 0.25},
            {s = path .. "magin.ogg",         t = 1.2},
            {s = common .. "magdrop_smg.ogg",  t = 1.5},
            {s = rottle, t = 1.25},
            {s = path .. "chamber.ogg",         t = 2.13},
            {s = ratel,  t = 2.4},
            {s = common .. "shoulder.ogg",  t = 2.45},
        },
    },
    ["reload_empty_kurz_15"] = {
        Source = "reload_empty_kurz",
        Time = 89 / 30,
        MinProgressTime = 2.2,
        MagSwapTime = 1.8,
        IKTimeLine = ARC9.UC.LHIK(89 / 30, 0.3, 0.3, 0.55, 0.2),
        EventTable = {
            {s = rottle, t = 0},
            {s = path .. "chback.ogg",         t = 0.1},
            {s = path .. "chlock.ogg",         t = 0.19},
            {s = common .. "magpouch.ogg", t = 0.4},
            {s = path .. "magout.ogg",        t = .9},
            {s = rottle, t = 0.25},
            {s = path .. "magin.ogg",         t = 1.2},
            {s = common .. "magdrop_smg.ogg",  t = 1.5},
            {s = rottle, t = 1.25},
            {s = path .. "chamber.ogg",         t = 2.13},
            {s = ratel,  t = 2.4},
            {s = common .. "shoulder.ogg",  t = 2.6},
        },
    },

    ["reload_40"] = {
        Source = "reload",
        Time = 70 / 30,
        MinProgressTime = 1.2,
        MagSwapTime = 67 / 30,
        IKTimeLine = ARC9.UC.LHIK(70 / 30, 0.4, 0.4, 0.6, 0.15),
        EventTable = {
            {s = rottle, t = 0},
            {s = common .. "magpouch.ogg", t = 0.05},
            {s = path .. "magout.ogg",        t = 0.25},
            {s = rottle, t = 0.25},
            {s = path .. "magin.ogg",         t = 0.5},
            {s = common .. "magpouchin.ogg", t = 1.25},
            {s = ratel,  t = 1.55},
            {s = common .. "shoulder.ogg",  t = 1.5},
        },
    },
    ["reload_empty_40"] = {
        Source = "reload_empty",
        Time = 89 / 30,
        MinProgressTime = 2.2,
        MagSwapTime = 1.8,
        IKTimeLine = ARC9.UC.LHIK(89 / 30, 0.3, 0.3, 0.55, 0.2),
        EventTable = {
            {s = rottle, t = 0},
            {s = path .. "chback.ogg",         t = 0.1},
            {s = path .. "chlock.ogg",         t = 0.19},
            {s = common .. "magpouch.ogg", t = 0.4},
            {s = path .. "magout.ogg",        t = .9},
            {s = rottle, t = 0.25},
            {s = path .. "magin.ogg",         t = 1.2},
            {s = common .. "magdrop_smg.ogg",  t = 1.5},
            {s = rottle, t = 1.25},
            {s = path .. "chamber.ogg",         t = 2.13},
            {s = ratel,  t = 2.4},
            {s = common .. "shoulder.ogg",  t = 2.6},
        },
    },
    ["reload_empty_kurz_40"] = {
        Source = "reload_empty_kurz",
        Time = 89 / 30,
        MinProgressTime = 2.2,
        MagSwapTime = 1.8,
        IKTimeLine = ARC9.UC.LHIK(89 / 30, 0.3, 0.3, 0.55, 0.2),
        EventTable = {
            {s = rottle, t = 0},
            {s = path .. "chback.ogg",         t = 0.1},
            {s = path .. "chlock.ogg",         t = 0.19},
            {s = common .. "magpouch.ogg", t = 0.4},
            {s = path .. "magout.ogg",        t = .9},
            {s = rottle, t = 0.25},
            {s = path .. "magin.ogg",         t = 1.2},
            {s = common .. "magdrop_smg.ogg",  t = 1.5},
            {s = rottle, t = 1.25},
            {s = path .. "chamber.ogg",         t = 2.13},
            {s = ratel,  t = 2.4},
            {s = common .. "shoulder.ogg",  t = 2.6},
        },
    },

    ["reload_drum"] = {
        Source = "reload_drum",
        Time = 97 / 30,
        MinProgressTime = 1.6,
        MagSwapTime = 1,
        IKTimeLine = ARC9.UC.LHIK(97 / 30, 0.4, 0.4, 0.9, 0.15),
        EventTable = {
            {s = rottle, t = 0},
            {s = path .. "magout.ogg",        t = 0.32},
            {s = rottle, t = 0.25},
            {s = rottle, t = 0.75},
            {s = path .. "magin.ogg",         t = 1.05},
            {s = common .. "cloth_4.ogg",  t = 1.65},
            {s = path .. "magtap.ogg",         t = 1.755},
            {s = common .. "shoulder.ogg",  t = 2.25},
        },
    },
    ["reload_empty_drum"] = {
        Source = "reload_empty_drum",
        Time = 117 / 30,
        MinProgressTime = 2.4,
        MagSwapTime = 1.8,
        IKTimeLine = ARC9.UC.LHIK(117 / 30, 0.3, 0.3, 1, 0.2),
        EventTable = {
            {s = rottle, t = 0},
            {s = path .. "magout.ogg",        t = 0.3},
            {s = rottle, t = 0.25},
            {s = rottle, t = 0.75},
            {s = common .. "magdrop.ogg",  t = 1.0},
            {s = path .. "magin.ogg",         t = 1.05},
            {s = common .. "cloth_4.ogg",  t = 1.65},
            {s = path .. "magtap.ogg",         t = 1.755},
            {s = path .. "rack1.ogg",         t = 2.3},
            {s = path .. "rack2.ogg",         t = 2.5},
            {s = common .. "shoulder.ogg",  t = 3.0},
        },
    },

    ["enter_inspect"] = {
        Source = "inspect_enter",
        Time = 36 / 37,
        IKTimeLine = {{t = 0, lhik = 1}, {t = 1, lhik = 1}},
        EventTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-smg-03.ogg", t = 0},
        },
    },
    ["idle_inspect"] = {
        Source = "inspect_loop",
        Time = 70 / 24,
        IKTimeLine = {{t = 0, lhik = 1}, {t = 1, lhik = 1}},
    },
    ["exit_inspect"] = {
        Source = "inspect_exit",
        Time = 78 / 37,
        IKTimeLine = {{t = 0, lhik = 1}, {t = 1, lhik = 1}},
        EventTable = {
            {s = common .. "movement-smg-01.ogg", t = 0.2},
            {s = rottle, t = 0.25},
            {s = rottle, t = 1.2},
            {s = common .. "movement-smg-04.ogg", t = 1.25},
        },
    },

    ["enter_sprint"] = {
        Source = "sprint_enter",
        IKTimeLine = ARC9.UC.LHIK(.5, 0.2, 0.2, 0, nil, true),
        Time = .5,
    },
    ["idle_sprint"] = {
        Source = "sprint_loop",
        Time = 28 / 60,
        IKTimeLine = ARC9.UC.LHIK(28 / 60, 0, nil, 0, nil, true),
    },
    ["exit_sprint"] = {
        Source = "sprint_exit",
        IKTimeLine = ARC9.UC.LHIK(.5, 0, nil, 0.5, 0.4),
        Time = .5,
    },
}

SWEP.Attachments = {
    {
        PrintName = "uc.slot.optic",
        DefaultName = ARC9:GetPhrase("uc.default.iron_sights"),
        Category = {"optic_lp","optic","ur_mp5_optic"},
        Bone = "body",
        Pos = Vector(-0.1, -1.6, 3),
        Ang = Angle(90, 0, -90),

        InstalledElements = {"ur_mp5_rail_optic"},
    },
    {
        PrintName = "ur.slot.upper_receiver",
        DefaultName = ARC9:GetPhrase("ur.default.mp5_upper"),
        DefaultIcon = Material("entities/att/ur_mp5/upper_std.png", "smooth mips"),
        Category = "ur_mp5_barrel",
        Bone = "body",
        Pos = Vector(2.6, -3.7, -17.3),
        Ang = Angle(90, 0, -90),
        Icon_Offset = Vector(22.3, 2.6, -2.8),
    },
    {
        PrintName = "ur.slot.lower_receiver",
        DefaultName = ARC9:GetPhrase("ur.default.mp5_lower"),
        DefaultIcon = Material("entities/att/ur_mp5/grip.png", "smooth mips"),
        Category = "ur_mp5_caliber",
        Bone = "body",
        Pos = Vector(0, 2.6, 0.8),
        UnInstalledElements = {"receiver_lower_0"}
    },
    {
        PrintName = "uc.slot.muzzle",
        DefaultName = ARC9:GetPhrase("uc.default.standard_muzzle"),
        Category = {"muzzle"},
        Bone = "body",
        Pos = Vector(0, 0.3, 14.8),
        Ang = Angle(90, 0, -90),

        ExcludeElements = {"barrel_sd","barrel_eod","barrel_sword"}
    },
    {
        PrintName = "uc.slot.handguard",
        DefaultName = ARC9:GetPhrase("ur.default.mp5_handguard"),
        DefaultIcon = Material("entities/att/ur_mp5/hg_std.png", "smooth mips"),
        Category = {"ur_mp5_hg"},
        ExcludeElements = {"barrel_sd", "barrel_eod"},
        Bone = "body",
        Pos = Vector(0, .9, 10),
        Ang = Angle(90, 0, -90),
        Icon_Offset = Vector(0, 0, 1.35),
    },
    {
        PrintName = "uc.slot.underbarrel",
        Category = {"foregrip"},
        Bone = "body",
        Pos = Vector(0, .9, 10),
        Ang = Angle(90, 0, -90),

        InstalledElements = {"mp5_rail"},
        ExcludeElements = {"mp5_badhg","mp5_kurz"},
        MergeSlots = {15},
    },
    {
        PrintName = "uc.slot.tactical",
        Category = "tac",
        Bone = "body",
        Pos = Vector(-0.9, 0.2, 8),
        Ang = Angle(90, 0, 180),

        Scale = 0.8,
        InstalledElements = {"mp5_rail"},
    },
    {
        PrintName = "uc.slot.stock",
        Category = {"ur_mp5_stock"},
        Bone = "body",
        Pos = Vector(0, 1.2, -6),
        DefaultName = ARC9:GetPhrase("uc.default.full_stock"),
        DefaultIcon = Material("entities/att/ur_mp5/stock_std.png", "smooth mips"),
    },
    {
        PrintName = "uc.slot.magazine",
        Category = {"ur_mp5_mag"},
        Bone = "mag",
        Pos = Vector(0.01, 1.52, 1.17),
        DefaultName = ARC9:GetPhrase("uc.default.30_round_mag"),
        DefaultIcon = Material("entities/att/ur_mp5/mag30.png", "smooth mips"),
        ExcludeElements = {"ur_mp5_cal_40sw","ur_mp5_cal_10mm"}
    },
    {
        PrintName = "uc.slot.ammo",
        DefaultName = ARC9:GetPhrase("uc.default.fmj"),
        DefaultIcon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth"),
        Category = "uc_ammo",
    },
    {
        PrintName = "uc.slot.powder",
        Category = "uc_powder",
        DefaultName = ARC9:GetPhrase("uc.default.standard_load"),
        ExcludeElements = {"barrel_sd"}
    },
    {
        PrintName = "uc.slot.tp",
        Category = "uc_tp",
        DefaultName = ARC9:GetPhrase("uc.default.basic_training")
    },
    {
        PrintName = "uc.slot.internals",
        Category = "uc_fg",
        DefaultName = ARC9:GetPhrase("uc.default.standard_internals")
    },
    {
        PrintName = "uc.slot.charm",
        Category = {"charm", "fml_charm", "mp5_charm"},
        CosmeticOnly = true,
        Bone = "body",
        Pos = Vector(0.6, 1.1, 2.5),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "uc.slot.underbarrel",
        Category = "uc_ubgl",
        Bone = "body",
        Pos = Vector(0, 0, 7.9),
        Ang = Angle(90, 0, -90),

        Hidden = true,
        ExcludeElements = {"mp5_badhg","mp5_kurz"},
    }
}

ARC9.UC.ConvertAttachmentAngles(SWEP)
