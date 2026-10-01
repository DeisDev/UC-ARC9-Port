SWEP.Base = "arc9_base"
SWEP.ThinkUBGL = ARC9.UC.ThinkUBGL
SWEP.PostModify = ARC9.UC.PostModify
SWEP.BuildSubAttachments = ARC9.UC.BuildSubAttachments
SWEP.SetupDataTables = ARC9.UC.SetupDataTables
SWEP.RollJam = ARC9.UC.RollJam
SWEP.SendAttachmentTree = ARC9.UC.SendRailTree
SWEP.ReceiveAttachmentTree = ARC9.UC.ReceiveRailTree
SWEP.UC_MalfunctionVariance = 0.25
if CLIENT then
    function SWEP:ClientInitialize()
        self.CustomizeButtonsOriginal = table.Copy(baseclass.Get("arc9_base").CustomizeButtonsOriginal)
        table.insert(self.CustomizeButtonsOriginal, 3, {title = "uc.rails", func = ARC9.UC.CreateRailPanel})
        self.CustomizeButtons = table.Copy(self.CustomizeButtonsOriginal)
        baseclass.Get("arc9_base").ClientInitialize(self)
    end

    function SWEP:PruneUnnecessaryAttachmentDataRecursive(tree)
        local rail = tree.UC_Rail
        baseclass.Get("arc9_base").PruneUnnecessaryAttachmentDataRecursive(self, tree)
        tree.UC_Rail = rail
    end

    function SWEP:WriteAttachmentTree(tree)
        local result = baseclass.Get("arc9_base").WriteAttachmentTree(self, tree)
        result.UC_Rail = tree and tree.UC_Rail
        return result
    end
end
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Urban Coalition"
SWEP.SubCategory = "ud.title"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleParticle = "muzzleflash_1"
SWEP.ShellEffect = "arc9_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/556x45.mdl"
SWEP.ShellScale = .666
SWEP.ShellPitch = 100

SWEP.MuzzleEffectQCA = 1
SWEP.CaseEffectQCA = 2
SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.TracerNum = 1
SWEP.TracerColor = Color(255, 225, 200)

SWEP.EjectDelay = 0.01
SWEP.NoShellEjectManualAction = true

-- Names --

-- AMCAR stands for (american) Colt Assault Rifle, not Carbine!! ~Fesiug
-- shut up retard ~zenith
SWEP.PrintName = ARC9:GetPhrase("arc9_ud_m16.printname")
SWEP.TrueName = ARC9:GetPhrase("arc9_ud_m16.truename")

SWEP.Class = "uc.class.assault_rifle"
SWEP.Description = "arc9_ud_m16.description"
SWEP.Trivia = {
    ["uc.trivia.manufacturer1"] = ARC9:UseTrueNames() and "arc9_ud_m16.trivia.manufacturer.true" or "arc9_ud_m16.trivia.manufacturer",
    ["uc.trivia.calibre2"] = "uc.calibre.5_56x45mm_nato",
    ["uc.trivia.mechanism3"] = "uc.mechanism.gas_operated_rotating_bolt",
    ["uc.trivia.country4"] = "uc.country.usa",
    ["uc.trivia.year5"] = 1959,
}

-- Weapon slot --

SWEP.Slot = 2

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ud_m16.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ud_m16.mdl"
SWEP.ViewModelFOVBase = 80
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2

-- Damage --

SWEP.DamageMax = ARC9.UC.StdDmg["556"].max
SWEP.DamageMin = ARC9.UC.StdDmg["556"].min
SWEP.RangeMin = 50 * ARC9.UC.Meter
SWEP.RangeMax = 350 * ARC9.UC.Meter -- 4 shot until ~250m
SWEP.CurvedDamageScaling = false
SWEP.NormalizeNumDamage = true

SWEP.Penetration = ARC9.UC.StdDmg["556"].pen
SWEP.DamageType = DMG_BULLET
SWEP.PhysBulletMuzzleVelocity = 960 * ARC9.UC.Meter

SWEP.BodyDamageMults = ARC9.UC.BodyDamageMults

-- Mag size --

SWEP.ChamberSize = 1
SWEP.ClipSize = 30

-- Recoil --

SWEP.Recoil = 0.5 * ARC9.UC.Recoil
SWEP.RecoilUp = 1
SWEP.RecoilSide = 0
SWEP.RecoilRandomUp = 0
SWEP.RecoilRandomSide = 0.25 / 0.5
SWEP.RecoilPatternDrift = 0
SWEP.RecoilAutoControl = 0
SWEP.VisualRecoil = 1

SWEP.Sway = 0.5

-- Firerate / Firemodes --

SWEP.RPM = 900
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = 3,
        PostBurstDelay = 0.1,
        RunawayBurst = false, -- https://en.wikipedia.org/wiki/Burst_mode_(weapons)
    },
    {
        Mode = 1,
    },
}

SWEP.ShootPitch = 100
SWEP.ShootVolume = 120
SWEP.ShootPitchVariation = 0

SWEP.ReloadInSights = true

-- NPC --

SWEP.ARC9WeaponCategory = ARC9.WEAPON_AR

-- Accuracy --

SWEP.Spread = 4 * ARC9.UC.MOA
SWEP.SpreadAddHipFire = 800 * ARC9.UC.Dispersion
SWEP.SpreadAddMove = 200 * ARC9.UC.Dispersion
SWEP.SpreadAddMidAir = 1000 * ARC9.UC.Dispersion
SWEP.FreeAimRadius = math.Clamp(800 / 80, 3, 10)

SWEP.Ammo = "smg1"

SWEP.HeatCapacity = 150
SWEP.HeatDissipation = 10
SWEP.HeatDelayTime = 3

SWEP.MalfunctionMeanShotsToFail = 200

-- Speed multipliers --

SWEP.Speed = 0.925
SWEP.SpeedMultSights = 0.75
SWEP.AimDownSightsTime = 0.35
SWEP.SprintToFireTime = 0.35
SWEP.SpeedMultShooting = 0.9

-- Melee --

SWEP.Bash = true
SWEP.BashDamage = 25
SWEP.BashRange = 48
SWEP.BashLungeRange = 64
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.3

-- Length --

SWEP.BarrelLength = 48

-- Ironsights / Customization / Poses --

-- ArcCW poses converted to ARC9's rotation order and unrotated position axes.
SWEP.RestPos = Vector(0.367099, -0.734159, 1.419947)
SWEP.RestAng = Angle(8.087680, -8.416675, -11.191555)

SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldType = "ar2"
SWEP.HoldTypeSights = "rpg"

SWEP.IronSights = {
    Pos = Vector(-2.815, 0, 1.3),
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
}

SWEP.ActivePos = Vector(0.33, -2, 1.33)
SWEP.ActiveAng = Angle(0, 0, -3)

SWEP.CustomizeRotateAnchor = Vector(21.5, -2.815, -3)

SWEP.CrouchPos = Vector(-2.5, -2, -0.6)
SWEP.CrouchAng = Angle(0, 0, -14)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(-8.5, 4, -5),
    Ang = Angle(-12, 0, 180),
}

-- Firing sounds --

local path = ")weapons/arccw_ud/m16/"
local common = ")/arccw_uc/common/"

SWEP.ShootSound = {
    path .. "fire-01.ogg",
    path .. "fire-02.ogg",
    path .. "fire-03.ogg",
    path .. "fire-04.ogg",
    path .. "fire-05.ogg",
    path .. "fire-06.ogg"
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

local tail = ")/arccw_uc/common/556x45/"

SWEP.DistantShootSound = {
    tail .. "fire-dist-556x45-rif-ext-01.ogg",
    tail .. "fire-dist-556x45-rif-ext-02.ogg",
    tail .. "fire-dist-556x45-rif-ext-03.ogg",
    tail .. "fire-dist-556x45-rif-ext-04.ogg",
    tail .. "fire-dist-556x45-rif-ext-05.ogg",
    tail .. "fire-dist-556x45-rif-ext-06.ogg"
}
SWEP.DistantShootSoundIndoor = {
    common .. "fire-dist-int-rifle-01.ogg",
    common .. "fire-dist-int-rifle-02.ogg",
    common .. "fire-dist-int-rifle-03.ogg",
    common .. "fire-dist-int-rifle-04.ogg",
    common .. "fire-dist-int-rifle-05.ogg",
    common .. "fire-dist-int-rifle-06.ogg"
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

-- PMAGs have their own magazine sounds.
local sr_pmag = {
    [path .. "magout_empty.ogg"] = path .. "pmagout.ogg",
    [path .. "magin.ogg"] = path .. "pmagin.ogg",
}

SWEP.HookP_TranslateSound = function(wep, data)
    if wep:HasElement("ud_m16_pmag") and sr_pmag[data.sound] then
        data.sound = sr_pmag[data.sound]
        return data
    end

    return ARC9.UC.SubsonicTail(wep, data)
end

-- Bodygroups --

SWEP.BulletBones = {
    [1] = {},
    [2] = "m16_bullets1",    [3] = "m16_bullets2"
}

SWEP.DefaultBodygroups = "00000000000000000000000"

SWEP.AttachmentElements = {

    ["ud_m16_mag_20"] = {
        Bodygroups = {{2, 1}},
    },
    ["ud_m16_mag_40"] = {
        Bodygroups = {{2, 2}},
    },
    ["ud_m16_pmag"] = {
        Bodygroups = {{2, 9}},
    },
    ["ud_m16_mag_60"] = {
        Bodygroups = {{2, 3}},
    },
    ["ud_m16_mag_100"] = {
        Bodygroups = {{2, 4}},
    },
    ["ud_m16_9mm_mag"] = {
        Bodygroups = {{2, 5}},
    },
    ["ud_m16_9mm_mag_32"] = {
        Bodygroups = {{2, 6}},
    },
    ["ud_m16_mag_50beo"] = {
        Bodygroups = {{2, 8}},
    },
    ["ud_m16_mag_50beo_12"] = {
        Bodygroups = {{2, 0}},
    },

    ["upper_flat"] = {
        -- handled by code
    },
    ["upper_classic"] = {
        Bodygroups = {
            {1, 3},
        },
    },
    ["rail_fg"] = {
        Bodygroups = {{9, 1}}
    },

    ["stock_231_ex"] = {
        Bodygroups = {{7, 1}},
    },
    ["stock_231_in"] = {
        Bodygroups = {{7, 2}},
    },
    ["stock_231_tube"] = {
        Bodygroups = {{7, 3}},
    },
    ["stock_607_ex"] = {
        Bodygroups = {{7, 4}},
    },
    ["stock_607_in"] = {
        Bodygroups = {{7, 5}},
    },
    ["stock_608"] = {
        Bodygroups = {{7, 6}},
    },
    ["stock_carbine_ex"] = {
        Bodygroups = {{7, 7}},
    },
    ["stock_carbine_in"] = {
        Bodygroups = {{7, 8}},
    },
    ["stock_wood"] = {
        Bodygroups = {{7, 9}},
    },
    ["stock_adar"] = {
        Bodygroups = {
            {7, 10},
            {8, 4}
        },
    },
    ["stock_ru556"] = {
        Bodygroups = {{7, 11}},
    },
    ["grip_ergo"] = {
        Bodygroups = {{8, 1}},
    },
    ["grip_skel"] = {
        Bodygroups = {{8, 2}},
    },
    ["grip_wood"] = {
        Bodygroups = {{8, 3}},
    },

    ["gasblock_carbine"] = {
        Bodygroups = {{6, 3}},
    },
    ["fs_adar"] = {
        Bodygroups = {{6, 4}},
    },
    ["remove_lug"] = {
        Bodygroups = {{12, 1}},
    },

    ["mount_14"] = {
        AttPosMods = {
            [8] = {
                Pos = Vector(0, 0.3, 17.5),
                Ang = Angle(90, 0, -90),
            },
        },
    },
    ["mount_11"] = {
        AttPosMods = {
            [8] = {
                Pos = Vector(0.6, -0.3, 14.2),
                Ang = Angle(90, 0, 0),
            },
        },
    },
    ["mount_tactical"] = {
        AttPosMods = {
            [8] = {
                Pos = Vector(-1, -.35, 11.5),
                Ang = Angle(90, 150, 30),
            },
        },
    },

    ["barrel_14"] = {
        Bodygroups = {
            {4, 1},
            {6, 2},
        },
        AttPosMods = {
            [4] = {
                Pos = Vector(0, -0.33, 18.85),
                Ang = Angle(90, 0, -90),
            },
            [16] = {
                Pos = Vector(0, -1.65, 12.5), -- 21.75 or 15.75
                Ang = Angle(90, 0, -90),
            },
        }
    },
    ["barrel_11"] = {
        Bodygroups = {
            {4, 4},
            {6, 2},
        },
        AttPosMods = {
            [4] = {
                Pos = Vector(0, -0.33, 15.7),
                Ang = Angle(90, 0, -90),
            },
            [16] = {
                Pos = Vector(0, -1.65, 12.5), -- 21.75 or 15.75
                Ang = Angle(90, 0, -90),
            },
        }
    },
    ["barrel_fpw"] = {
        Bodygroups = {
            {4, 2},
            {6, 5},
        },
        AttPosMods = {
            [4] = {
                Pos = Vector(0, -0.07, 21.3),
                Ang = Angle(90, 0, -90),
            },
        }
    },
    ["barrel_11_ru556"] = {
        Bodygroups = {
            {4, 4},
            {6, 5},
        },
        AttPosMods = {
            [3] = {
                Pos = Vector(0, -0.07, 21.3),
                Ang = Angle(90, 0, -90),
            },
            [6] = {
                Pos = Vector(1.15, 0, 17.9),
                Ang = Angle(90, 0, 0),
            },
            [16] = {
                Pos = Vector(0, -1.65, 12.5), -- 21.75 or 15.75
                Ang = Angle(90, 0, -90),
            },
        }
    },

    ["hg_m16a4_ris"] = {
        Bodygroups = {
            {5, 2},
        },
        AttPosMods = {
            [5] = {
                Pos = Vector(-0.1, 1.05, 12),
                Ang = Angle(90, 0, -90),
            },
            [6] = {
                Pos = Vector(1.41, -.1, 20),
                Ang = Angle(90, 0, 0),
            },
            [16] = {
                Pos = Vector(0, -1.75, 21.75), -- 21.75 or 15.75
                Ang = Angle(90, 0, -90),
            },
        }
    },
    ["hg_m4a1_ris"] = {
        Bodygroups = {
            {5, 5},
        },
        AttPosMods = {
            [5] = {
                Pos = Vector(0, 1.4, 12),
                Ang = Angle(90, 0, -90),
            },
            [6] = {
                Pos = Vector(-1.41, -.2, 14),
                Ang = Angle(90, 0, 180),
            },
            [15] = {
                Pos = Vector(0, -1.75, 15.75), -- 21.75 or 15.75
                Ang = Angle(90, 0, -90),
            },
        },
    },
    ["hg_ru556"] = {
        AttPosMods = {
            [16] = {
                Pos = Vector(0, -1.65, 12.5), -- 21.75 or 15.75
                Ang = Angle(90, 0, -90),
            },
        },
    },
    ["hg_m4a1"] = {
        Bodygroups = {
            {5, 4},
        }
    },
    ["hg_cqbr"] = {
        Bodygroups = {
            {5, 4},
        },
    },
    ["hg_adar"] = {
        Bodygroups = {
            {5, 8},
        },
    },
    ["hg_fpw"] = {
        Bodygroups = {
            {5, 6},
        }
    },
    ["hg_m16a1"] = {
        Bodygroups = {
            {5, 1},
        }
    },
    ["hg_m16a1_wood"] = {
        Bodygroups = {
            {5, 1},
        },
        Skin = 1
    },
    ["ud_m16_hg_heat"] = {
        Models = {
            {
                Model = "models/weapons/arccw/atts/m203iron.mdl",
                Bone = "m16_parent",
                Scale = 1,
                Skin = 0,
                Pos = Vector(0, -1.2, 14.9),
                Ang = Angle(90, 0, -90),
            }
        },
        UC_UseClassicM203Mount = true,
    },
    ["hg_m605"] = {
        Bodygroups = {
            {5, 1},
            {4, 1},
        },
        AttPosMods = {
            [3] = {
                Pos = Vector(0, -0.05, 25.58),
                Ang = Angle(90, 0, -90),
            },
            [6] = { -- also has no rail
                Pos = Vector(0, 0.9, 22.2),
                Ang = Angle(90, 0, -90),
            },
        }
    },
    ["hg_m605_wood"] = {
        Bodygroups = {
            {5, 1},
            {4, 1},
        },
        AttPosMods = {
            [3] = {
                Pos = Vector(0, 0, 25),
                Ang = Angle(90, 0, -90),
            },
            [6] = { -- also has no rail
                Pos = Vector(0, 0.8, 22),
                Ang = Angle(90, 0, -90),
            },
        },
        Skin = 1
    },
    ["hg_lmg"] = {
        Bodygroups = {
            {5, 3},
        }
    },
    ["hg_sd"] = {
        Bodygroups = {
            {5, 9},
            {4, 3},
            {6, 5}
        },
        AttPosMods = { -- no rail, just pretend it's mounted to something
            [16] = {
                Pos = Vector(0, -1.65, 11.5), -- 21.75 or 15.75
                Ang = Angle(90, 0, -90),
            },
        }
    },

    ["ud_m16_upper_charm"] = {
        AttPosMods = {
            [1] = {
                Pos = Vector(0, -3.4, 3),
                UC_RailMin = Vector(0, -3.4, 1.5),
                UC_RailMax = Vector(0, -3.4, 4.5),
                Ang = Angle(90, 0, -90),
            },
        },
    },
    ["ud_m16_upper_charm2"] = {
        AttPosMods = {
            [1] = {
                Pos = Vector(0, -3.5, 3),
                UC_RailMin = Vector(0, -3.5, 1.5),
                UC_RailMax = Vector(0, -3.5, 4.5),
                Ang = Angle(90, 0, -90),
            },
        },
    },
    ["bravo_dicks_going_fart"] = {
        AttPosMods = {
            [8] = {
                Pos = Vector(0.25, -1.4, 12),
                Ang = Angle(90, 0, 90),
            },
        },
    },

    ---- Cut content
    ["hg_stub"] = {
        Bodygroups = {
            {5, 7},
        },
        AttPosMods = {
            [3] = {
                Pos = Vector(0, -0.35, 7),
                Ang = Angle(90, 0, -90)
            },
            [6] = {
                Pos = Vector(1.1, -0.4, 9),
                Ang = Angle(90, 0, 0),
            },
        }
    },
    ["barrel_stub"] = {
        Bodygroups = {
            {4, 4},
            {6, 4},
        }
    },
    ["hg_smg"] = {
        Bodygroups = {
            {5, 0},
        }
    },
    ["m16_strap"] = {
        Bodygroups = {
             {13, 1},
        },
    },
}

-- Animations --

local rottle = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local ratel = {common .. "rattle1.ogg", common .. "rattle2.ogg", common .. "rattle3.ogg"}
local mech = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}

SWEP.Animations = {
    ["ready"] = {
        Source = "fix",
        Time = 45 / 30,
        IKTimeLine = ARC9.UC.LHIK(45 / 30, 0.3, 0.4, 0.4, 0.15),
        EventTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "rattle.ogg", t = 0.2},
            {s = path .. "chback.ogg",   t = 0.15},
            {s = common .. "cloth_4.ogg",  t = 0.5},
            {s = path .. "chamber.ogg",  t = 0.5},
        },
    },
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle_empty",
    },
    ["draw"] = {
        Source = "draw",
        EventTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "shoulder.ogg", t = 0.15},
            {s = ratel, t = 0.2},
        },
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 20 / 30,
        EventTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "shoulder.ogg", t = 0.15},
            {s = ratel, t = 0.2},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = ARC9.UC.LHIK(20 / 30, 0.3, 0.4, 0.4, 0.15),
        EventTable = {
            {s = ratel, t = 0},
            {s = common .. "cloth_6.ogg", t = 0.2},
        },
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        Time = 20 / 30,
        IKTimeLine = ARC9.UC.LHIK(20 / 30, 0.3, 0.4, 0.4, 0.15),
        EventTable = {
            {s = ratel, t = 0},
            {s = common .. "cloth_6.ogg", t = 0.2},
        },
    },
    ["trigger"] = {
        Source = "idle",
        MinProgressTime = .1,
        EventTable = {
            {s = ")weapons/arccw_ud/uzi/prefire.ogg",         t = 0},
        },
    },
    ["fire"] = {
        Source = "fire",
        Time = 13 / 30,
        EventTable = {{ s = mech, t = 0, v = 0.25 }},
    },
    ["fire_iron"] = {
        Source = "fire",
        Time = 13 / 30,
        EventTable = {{ s = mech, t = 0 }},
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 13 / 30,
        EventTable = {
            {s = path .. "mech_last.ogg", t = 0}, -- Temporary
        },
    },
    ["fire_iron_empty"] = {
        Source = "fire_empty",
        Time = 13 / 30,
        EventTable = {
            {s = path .. "mech_last.ogg", t = 0}, -- Temporary
        },
    },

    ["fire_cycle"] = {
        Source = "fire",
        Time = 13 / 30,
    },

    ["cycle"] = {
        Source = "fix",
        Time = 36 / 30 * 0.7,
        EjectAt = 0.3,
        IKTimeLine = ARC9.UC.LHIK(36 / 30 * 0.7, 0.3 * 0.7, 0.4 * 0.7, 0.4 * 0.7, 0.15 * 0.7),
        EventTable = {
            {s = path .. "chback.ogg",   t = 0.05},
            {s = common .. "cloth_4.ogg",  t = 0.2},
            {s = path .. "chamber.ogg",  t = 0.3},
        },
    },

    ["fix"] = {
        Source = "fix",
        Time = 45 / 30,
        IKTimeLine = ARC9.UC.LHIK(45 / 30, 0.3, 0.4, 0.4, 0.15),
        EventTable = {
            {s = path .. "chback.ogg",   t = 0.15},
            {s = common .. "cloth_4.ogg",  t = 0.5},
            {s = path .. "chamber.ogg",  t = 0.5},
        },
    },
    ["fix_empty"] = {
        Source = "fix_empty",
        Time = 45 / 30,
        IKTimeLine = ARC9.UC.LHIK(45 / 30, 0.3, 0.4, 0.4, 0.15),
        EventTable = {
            {s = path .. "chback.ogg",   t = 0.15},
            {s = common .. "cloth_4.ogg",  t = 0.5},
            {s = path .. "ch_forward_empty.ogg",  t = 0.5},
        },
    },

    -- 30 Round Reloads --

    ["reload"] = {
        Source = "reload",
        Time = 71 / 30,
        MinProgressTime = 1.5,
        MagSwapTime = 0.9,
        IKTimeLine = ARC9.UC.LHIK(71 / 30, 0.2, 0.2, 0.7, 0.4),
        EventTable = {
            {s = rottle,  t = 0.0},
            {s = common .. "magpouch_gear.ogg", t = 0.2, v = 0.5},
            {s = ratel, t = 0.25},
            {s = path .. "magout_empty.ogg", 	 t = 0.23},
            {s = ratel, t = 0.5},
            {s = path .. "struggle.ogg",    t = 1, v = 0.4},
            {s = path .. "magin.ogg",    t = 0.97},
            {s = ratel, t = 1.1},
            {s = rottle,  t = 1.15},
            {s = common .. "grab-polymer.ogg", t = 1.77, v = 0.25},
            {s = common .. "rattle_b2i_rifle.ogg", t = 1.7},
            {s = common .. "shoulder.ogg", t = 1.8},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 87 / 30,
        MinProgressTime = 2,
        MagSwapTime = 0.7,
        IKTimeLine = ARC9.UC.LHIK(87 / 30, 0.2, 0.2, 0.9, 0.4),
        EventTable = {
            {s = rottle,  t = 0.0},
            {s = ratel, t = 0.25},
            {s = common .. "magpouch_gear.ogg", t = 0.1, v = 0.5},
            {s = path .. "magout_empty.ogg", 	 t = 0.2},
            {s = ratel, t = 0.5},
            {s = common .. "rifle_magdrop.ogg",  t = 0.65},
            {s = path .. "struggle.ogg",    t = 0.95, v = 0.4},
            {s = path .. "magin.ogg",    t = 0.95},
            {s = ratel, t = 1.1},
            {s = rottle,  t = 1.39},
            {s = path .. "boltdrop.ogg", t = 1.7},
            {s = ratel, t = 1.9},
            {s = common .. "rattle_b2i_rifle.ogg", t = 2.0},
            {s = common .. "grab-polymer.ogg", t = 2.1, v = 0.35},
            {s = common .. "shoulder.ogg", t = 2.1},
        },
    },

    -- 20 Round Reloads --

    ["reload_20"] = {
        Source = "reload_20",
        Time = 71 / 30,
        MinProgressTime = 1.5,
        MagSwapTime = 0.9,
        IKTimeLine = ARC9.UC.LHIK(71 / 30, 0.2, 0.2, 0.7, 0.4),
        EventTable = {
            {s = rottle,  t = 0.0},
            {s = ratel, t = 0.05},
            {s = path .. "magout_empty.ogg", 	 t = 0.09},
            {s = common .. "magpouch_gear.ogg", t = 0.1},
            {s = rottle,  t = 0.75},
            {s = ratel, t = 0.85},
            {s = path .. "struggle.ogg",    t = 0.9, v = 0.4},
            {s = path .. "magin.ogg",    t = 0.95},
            {s = rottle,  t = 1.1},
            {s = ratel, t = 1.125},
            {s = common .. "rattle_b2i_rifle.ogg", t = 1.65},
            {s = common .. "grab-polymer.ogg", t = 1.7, v = 0.25},
            {s = common .. "shoulder.ogg", t = 1.75},
        },
    },
    ["reload_empty_20"] = {
        Source = "reload_empty_20",
        Time = 86 / 30,
        MinProgressTime = 2,
        MagSwapTime = 0.7,
        IKTimeLine = ARC9.UC.LHIK(86 / 30, 0.2, 0.2, 0.8, 0.3),
        EventTable = {
            {s = common .. "magpouch_gear.ogg", t = 0},
            {s = rottle, t = 0.01},
            {s = ratel, t = 0.05},
            {s = path .. "magout_empty.ogg", 	 t = 0.075},
            {s = rottle, t = 0.75},
            {s = ratel, t = 0.9},
            {s = common .. "rifle_magdrop.ogg",  t = 0.65},
            {s = path .. "struggle.ogg",    t = 0.8, v = 0.4},
            {s = path .. "magin.ogg",    t = 0.85},
            {s = rottle, t = 1.4},
            {s = ratel, t = 1.4},
            {s = path .. "chamber_press.ogg", t = 1.72},
            {s = common .. "rattle_b2i_rifle.ogg", t = 1.95},
            {s = common .. "grab-polymer.ogg", t = 2.075, v = 0.25},
            {s = common .. "shoulder.ogg", t = 2.13},
        },
    },

    -- 40 Round Reloads --

    ["reload_40"] = {
        Source = "reload_40",
        Time = 71 / 30,
        MinProgressTime = 1.5,
        MagSwapTime = 0.9,
        IKTimeLine = ARC9.UC.LHIK(71 / 30, 0.2, 0.2, 0.7, 0.4),
        EventTable = {
            {s = rottle, t = 0.0},
            {s = ratel, t = 0.1},
            {s = path .. "magout_empty.ogg", 	 t = 0.2},
            {s = common .. "magpouch_gear.ogg", t = 0.25},
            {s = rottle, t = 0.75},
            {s = ratel, t = 0.8},
            {s = path .. "struggle.ogg",    t = 0.95, v = 0.4},
            {s = path .. "magin.ogg",    t = 1.0},
            {s = rottle, t = 1.1},
            {s = ratel, t = 1.25},
            {s = common .. "rattle_b2i_rifle.ogg", t = 1.65},
            {s = common .. "shoulder.ogg", t = 1.75},
        },
    },
    ["reload_empty_40"] = {
        Source = "reload_empty_40",
        Time = 85 / 30,
        MinProgressTime = 2,
        MagSwapTime = 0.7,
        IKTimeLine = ARC9.UC.LHIK(85 / 30, 0.2, 0.2, 0.8, 0.4),
        EventTable = {
            {s = rottle,  t = 0.0},
            {s = path .. "magout_empty.ogg", 	 t = 0.2},
            {s = common .. "magpouch_gear.ogg", t = 0.25},
            {s = rottle,  t = 0.75},
            {s = common .. "rifle_magdrop.ogg",  t = 0.8},
            {s = path .. "struggle.ogg",    t = 1.0, v = 0.4},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = rottle,  t = 1.475},
            {s = ratel,  t = 1.475},
            {s = path .. "boltdrop.ogg", t = 1.78},
            {s = common .. "rattle_b2i_rifle.ogg", t = 2.1},
            {s = common .. "shoulder.ogg", t = 2.2},
        },
    },

    -- 60 Round Reloads --

    ["reload_60"] = {
        Source = "reload_60",
        Time = 71 / 30,
        MinProgressTime = 1.5,
        MagSwapTime = 0.9,
        IKTimeLine = ARC9.UC.LHIK(71 / 30, 0.2, 0.2, 0.7, 0.4),
        EventTable = {
            {s = rottle, t = 0.0},
            {s = common .. "magpouch_gear.ogg", t = 0.2},
            {s = path .. "magout_empty.ogg", 	 t = 0.25},
            {s = rottle, t = 0.75},
            {s = path .. "struggle.ogg",    t = 1.0, v = 0.4},
            {s = path .. "magin.ogg",    t = 1.1},
            {s = rottle, t = 1.1},
            {s = common .. "grab-polymer.ogg", t = 1.78, v = 0.25},
            {s = common .. "rattle_b2i_rifle.ogg", t = 1.8},
            {s = common .. "shoulder.ogg", t = 1.9},
        },
    },
    ["reload_empty_60"] = {
        Source = "reload_empty_60",
        Time = 85 / 30,
        MinProgressTime = 2,
        MagSwapTime = 0.7,
        IKTimeLine = ARC9.UC.LHIK(85 / 30, 0.2, 0.2, 0.8, 0.4),
        EventTable = {
            {s = rottle, t = 0.0},
            {s = common .. "magpouch_gear.ogg", t = 0.2},
            {s = path .. "magout_empty.ogg", 	 t = 0.25},
            {s = rottle, t = 0.75},
            {s = common .. "rifle_magdrop.ogg",  t = 0.8},
            {s = path .. "struggle.ogg",    t = 1.0, v = 0.4},
            {s = path .. "magin.ogg",    t = 1.1},
            {s = rottle, t = 1.475},
            {s = ratel, t = 1.475},
            {s = path .. "boltdrop.ogg", t = 1.8},
            {s = common .. "rattle_b2i_rifle.ogg", t = 2.1},
            {s = common .. "grab-polymer.ogg", t = 2.15, v = 0.25},
            {s = common .. "shoulder.ogg", t = 2.2},
        },
    },

    -- 100 Round Reloads --

    ["reload_100"] = {
        Source = "reload_100",
        Time = 71 / 30,
        MinProgressTime = 1.75,
        MagSwapTime = 0.9,
        IKTimeLine = ARC9.UC.LHIK(71 / 30, 0.2, 0.2, 0.5, 0.3),
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout_empty.ogg", 	 t = 0.2},
            {s = rottle, t = 0.75},
            {s = path .. "struggle.ogg",    t = 0.95, v = 0.4},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = rottle, t = 1.1},
            {s = path .. "magtap.ogg",   t = 1.59},
            {s = common .. "cloth_4.ogg",  t = 1.65},
            {s = common .. "rattle_b2i_rifle.ogg", t = 1.8},
            {s = common .. "grab-polymer.ogg", t = 1.85, v = 0.25},
            {s = common .. "shoulder.ogg", t = 2.0},
        },
    },
    ["reload_empty_100"] = {
        Source = "reload_empty_100",
        Time = 90 / 30,
        MinProgressTime = 2.5,
        MagSwapTime = 0.7,
        IKTimeLine = ARC9.UC.LHIK(90 / 30, 0.2, 0.2, 0.6, 0.3),
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout_empty.ogg", 	 t = 0.2},
            {s = rottle, t = 0.75},
            {s = common .. "magdrop.ogg",  t = 0.65},
            {s = path .. "struggle.ogg",    t = 0.95, v = 0.4},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = path .. "magtap.ogg",   t = 1.59},
            {s = rottle, t = 1.75},
            {s = path .. "chback.ogg",   t = 2.0},
            {s = common .. "cloth_4.ogg",  t = 2.05},
            {s = path .. "chamber.ogg",  t = 2.22},
            {s = common .. "rattle_b2i_rifle.ogg", t = 2.5},
            {s = common .. "grab-polymer.ogg", t = 2.55, v = 0.25},
            {s = common .. "shoulder.ogg", t = 2.6},
        },
    },

    -- 9mm 32 Round Reloads --

    ["reload_9mm"] = {
        Source = "reload_9mm",
        Time = 70 / 30,
        MinProgressTime = 1.5,
        MagSwapTime = 0.9,
        IKTimeLine = ARC9.UC.LHIK(70 / 30, 0.4, 0.4, 0.5, 0.15),
        EventTable = {
            {s = rottle, t = 0.0},
            {s = common .. "magpouch.ogg", t = 0.15},
            {s = "weapons/arccw_ud/uzi/" .. "magout.ogg", 	 t = 16 / 30},
            {s = rottle, t = 0.75},
            {s = "weapons/arccw_ud/uzi/" .. "magin.ogg",    t = 27 / 30},
            {s = rottle, t = 1.1},
            {s = common .. "magpouchin.ogg", t = 1.55},
            {s = common .. "shoulder.ogg", t = 1.93},
        },
    },
    ["reload_empty_9mm"] = {
        Source = "reload_empty_9mm",
        Time = 80 / 30,
        MinProgressTime = 2,
        MagSwapTime = 0.7,
        IKTimeLine = ARC9.UC.LHIK(80 / 30, 0.1, 0.1, 0.9, 0.4),
        EventTable = {
            {s = rottle, t = 0.0},
            {s = "weapons/arccw_ud/uzi/" .. "magout.ogg", 	 t = 0.1},
            {s = common .. "magpouch.ogg", t = 0.45},
            {s = rottle, t = 0.75},
            {s = "weapons/arccw_ud/uzi/" .. "magin.ogg",    t = 0.8},
            {s = path .. "chamber_press.ogg", t = 1.7},
            {s = rottle, t = 1.39},
            {s = common .. "shoulder.ogg", t = 2.15},
        },
    },


    ["enter_inspect"] = {
        Source = "inspect_enter",
        EventTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-rifle-02.ogg", t = 0.1},
        },
    },
    ["idle_inspect"] = {
        Source = "inspect_loop",
    },
    ["exit_inspect"] = {
        Source = "inspect_exit",
        EventTable = {
            {s = common .. "movement-rifle-04.ogg", t = 0.2},
            {s = rottle, t = 0.25},
            {s = rottle, t = 1.2},
            {s = common .. "movement-rifle-03.ogg", t = 1.25},
        },
    },
    ["enter_inspect_empty"] = {
        Source = "inspect_enter_empty",
        EventTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-rifle-02.ogg", t = 0.1},
        },
    },
    ["idle_inspect_empty"] = {
        Source = "inspect_loop_empty",
    },
    ["exit_inspect_empty"] = {
        Source = "inspect_exit_empty",
        EventTable = {
            {s = common .. "movement-rifle-04.ogg", t = 0.2},
            {s = rottle, t = 0.25},
            {s = rottle, t = 1.2},
            {s = common .. "movement-rifle-03.ogg", t = 1.25},
        },
    },
}

local hgLookup = {
    ["default"]     = {0,4,0},
    ["tactical"]    = {2,5,0},
    ["a1"]          = {1,1,1},
    ["heat"]          = {10,10,1},
    ["heatm203"]          = {11,11,1},
    ["wood"]          = {1,1,1},
    ["lmg"]          = {3,3,1},
    ["fpw"]          = {6,6,2},
    ["ru556"]          = {7,7,3},
    ["adar"]          = {8,8,2},
    ["hk416"]          = {9,9,3},
    ["607"]          = {9,9,0},
}
-- Structure: 20in appearance, 14/11in appearance, gas block mode
-- Gas block modes: 0 standard, 1 always at 20" position, 2 at ADAR position when short, 3 at ADAR position when short and not flat

local barrLookup = {
    ["sd"] = -1,
    ["20in"] = 0,
    ["14in"] = 1,
    ["fpw"] = 1,
    ["10in"] = 2,
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local mdl = data.model
    local atts = wep.Attachments
    if !IsValid(mdl) then return end

    local barrel = string.Replace(atts[2].Installed or "20in","ud_m16_barrel_","")
    local barr = barrLookup[barrel]
    local hg = string.Replace(atts[3].Installed or "default","ud_m16_hg_","")
    hg = string.Replace(hg,"uf_m16_hg_","")

    local optic = atts[1].Installed
    local muzz = atts[4].Installed or barrel == "sd"
    local laser = atts[8].Installed
    local fs = atts[16].Installed
    local retro = wep:GetValue("UC_TopMount")

    -- Retro rail
    if optic then
        if retro then
            -- Raised rail (retro)
            mdl:SetBodygroup(3, retro)
        else
            -- Flat rail
            mdl:SetBodygroup(1, 1)
            mdl:SetBodygroup(3, 2)
        end
    end

    -- Dynamic handguard
    if barr == -1 then
        mdl:SetBodygroup(5,9)
    elseif barr == 0 and hgLookup[hg] then
        mdl:SetBodygroup(5,hgLookup[hg][1])
    elseif hgLookup[hg] then
        mdl:SetBodygroup(5,hgLookup[hg][2])
    else
        mdl:SetBodygroup(5,9)
    end

    -- Gas block
    if barrel == "sd" or (atts[6].Installed == "ud_m16_receiver_fpw" and barr > 0) then
        mdl:SetBodygroup(6,5)
    else
        local gbPos = hgLookup[hg] and hgLookup[hg][3] or 0
        local flat = (
            wep:GetValue("UC_FrontSight")
            or atts[6].Installed == "ud_m16_receiver_fpw"
            or (optic and fs ~= "ud_m16_charm_fs" and !(wep:GetValue("UC_IronSight") or wep:GetValue("UC_TopMount")))
        ) and 1 or 0

        if gbPos == 1 or barr == 0 then
            mdl:SetBodygroup(6, 0 + flat)
        elseif gbPos == 2 then
            mdl:SetBodygroup(6, 4 + flat * 2)
        elseif gbPos == 3 then
            mdl:SetBodygroup(6, 4 - flat)
        else
            mdl:SetBodygroup(6, 2 + flat)
        end
    end

    -- Default flash hider
    if !muzz then
        if barr == 0 then
            mdl:SetBodygroup(11,1)
        elseif barr == 1 then
            mdl:SetBodygroup(11,2)
        else
            mdl:SetBodygroup(11,3)
        end
    else
        mdl:SetBodygroup(11,0)
    end

    -- Tactical clamp
    if laser and hg ~= "tactical" then
        if barr == 0 then
            mdl:SetBodygroup(10,1)
        elseif barr == 1 then
            mdl:SetBodygroup(10,3)
        else
            mdl:SetBodygroup(10,2)
        end
    else
        mdl:SetBodygroup(10,0)
    end

    -- Disable tac rail element with tac hg
    if hg == "tactical" and (atts[7].Installed or atts[18].Installed) then
        mdl:SetBodygroup(9,0)
    end

    -- .50 Beowulf magazines
    if atts[5].Installed == "ud_m16_receiver_50beo" and !atts[11].Installed then
        mdl:SetBodygroup(2, 8)
    end
end

-- Patriot easter egg. Is it overpowered? I don't think so, a configuration like this is already pretty uncontrollable and imprecise as is, and overheating is the new magazine.
local patriot = {"patr1", "patr2", "patr3", "patr4", "patr5"}

local function IsPatriot(wep)
    for _, ele in ipairs(patriot) do
        if !wep:HasElement(ele) then return false end
    end

    return true
end

SWEP.BottomlessClipHook = function(wep, data)
    if IsPatriot(wep) then
        return true
    end
end

local function N(key)
    return ARC9:GetPhrase("arc9_ud_m16.name." .. key)
end

local function Desc(key)
    return "arc9_ud_m16.desc." .. key
end

-- Model designation and description for the installed parts.
local function Variant(wep)
    local trueNames = ARC9:UseTrueNames()
    local atts = wep.Attachments
    local flat = atts[1].Installed and !wep:GetValue("UC_TopMount")

    local barrel = string.Replace(atts[2].Installed or "20in","ud_m16_barrel_","")
    local barr = barrLookup[barrel]
    local hg = string.Replace(atts[3].Installed or "default","ud_m16_hg_","")
    local upr = string.Replace(atts[5].Installed or "default","ud_m16_receiver_","")
    local lwr = string.Replace(atts[6].Installed or "default","ud_m16_receiver_","")

    if IsPatriot(wep) then -- Patriot configuration
        return N("patriot"), Desc("patriot")
    elseif !trueNames then -- Custom lore-based fake names
        local pre = (lwr == "auto" and "AM" or "RAY")
        if upr == "9mm" then
            local sd = (barr == -1)
            if flat then
                return (sd and pre .. "SSMG-NG") or pre .. "PAW-" .. barr .. "NG", Desc("smg.fake")
            end
            return (sd and pre .. "SSMG") or pre .. "PAW-" .. barr, Desc("smg.fake")
        elseif upr == "50beo" then
            return N("rby"), Desc("beo.fake")
        elseif upr == "300blk" then
            return N("rby"), Desc("blk.fake")
        elseif lwr == "fpw" then
            return pre .. "FPW", Desc("bar1.fake")
        elseif lwr == "cali" then
            return N("ukcar"), Desc("uk.fake")
        else
            if barr == 0 then
                if hg == "lmg" then
                    return pre .. "SAW" .. (flat and "-NG" or ""), Desc("lmg.fake")
                elseif flat then
                    return pre .. "CAR-0NG", Desc("bar0.fake")
                else
                    return pre .. "CAR-0", Desc("bar0.fake")
                end
            elseif barr == 1 then
                if flat then
                    return pre .. "CAR-1NG", Desc("bar1.fake")
                end
                return pre .. "CAR-1", Desc("bar1.fake")
            elseif barr == 2 then
                if flat then
                    return pre .. "CAR-2NG", Desc("bar2.fake")
                end
                return pre .. "CAR-2", Desc("bar2.fake")
            end
        end

        return pre .. "CAR-0", Desc("bar0.fake")
    end

    if upr == "9mm" then
        if lwr == "semi" then
            return N("ar15_9mm"), Desc("smg")
        elseif flat then
            return N("r0991"), Desc("smg")
        end
        return N("r0635"), Desc("smg")
    end

    if lwr == "auto" then
        if upr == "a1" then
            if barr == 0 then
                return N("m16a1"), Desc("a1")
            elseif barr == 1 then
                return N("m605"), Desc("a1")
            end
            return N("car15"), Desc("car")
        end
        if barr == 0 then
            if hg == "lmg" then
                return N("colt_lmg"), Desc("lmg")
            elseif flat and hg == "tactical" then
                return N("r0901"), Desc("a3")
            end
            return N("m16a3"), Desc("a3")
        elseif barr == 1 then
            if flat then
                return N("m4a1"), Desc("m4")
            end
            return N("xm4"), Desc("m4")
        else
            if flat then
                if upr == "300blk" then
                    return N("mk18"), Desc("m4")
                end
                return N("mk18_mod0"), Desc("m4")
            end
            return N("car15"), Desc("car")
        end
    elseif lwr == "semi" or upr == "50beo" then
        if hg == "wood" then
            if barr == 0 then
                return N("service_rifle"), Desc("ncr")
            end
            return N("service_carbine"), Desc("ncr")
        elseif flat and hg == "adar" then
            return N("adar"), Desc("ar")
        elseif barr > 0 then
            if barr == 2 and atts[10].Installed == "ud_m16_stock_buffer" then
                return N("ar15_pistol"), Desc("ar")
            elseif upr == "a1" and barr == 1 then
                return N("crxm177e2b"), Desc("ar")
            else
                return N("ar15_sbr"), Desc("ar")
            end
        elseif upr == "a1" then
            return N("crm16a1"), Desc("ar")
        end
        return N("ar15"), Desc("ar")
    elseif lwr == "fpw" then
        return N("m231"), Desc("m4")
    elseif lwr == "cali" then
        return N("ar15gb"), Desc("uk")
    else
        if barr == 0 and flat then
            return N("m16a4"), "arc9_ud_m16.description"
        elseif barr == 1 then
            return N("m4"), Desc("m4")
        elseif barr == 2 then
            return N("m16_commando"), "arc9_ud_m16.description"
        end
    end

    return N("m16a2"), "arc9_ud_m16.description"
end

SWEP.HookP_NameChange = function(wep, name)
    return (Variant(wep))
end

SWEP.HookP_DescriptionChange = function(wep, desc)
    local _, variantdesc = Variant(wep)
    return variantdesc
end

local function D(key)
    return ARC9:GetPhrase("uc.default." .. key)
end

SWEP.Attachments = {
    {
        PrintName = "uc.slot.optic",
        DefaultName = D("iron_sights"),
        InstalledElements = {"upper_flat"},
        Category = {"optic", "optic_sniper", "ud_m16_rs"},
        Bone = "m16_parent",
        Pos = Vector(0, -1.6, 2.5),
        UC_RailMin = Vector(0, -1.6, 1),
        UC_RailMax = Vector(0, -1.6, 4),
        Ang = Angle(90, 0, -90),
        ExtraSightDistance = 2,
    },
    {
        PrintName = "uc.slot.barrel",
        DefaultName = D("20in_standard_barrel"),
        DefaultIcon = Material("entities/att/acwatt_ud_m16_barrel_20.png", "smooth mips"),
        Category = "ud_m16_blen",
        Bone = "m16_parent",
        Pos = Vector(2.8, -4.2, -11.5),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "uc.slot.handguard",
        DefaultName = D("ribbed_handguard"),
        DefaultIcon = Material("entities/att/acwatt_ud_m16_hg_ribbed.png", "smooth mips"),
        Category = "ud_m16_hg",
        Bone = "m16_parent",
        Pos = Vector(0, -1.63, -0.41),
        Ang = Angle(90, 0, -90),
        ExcludeElements = {"sd"},
    },
    {
        PrintName = "uc.slot.muzzle",
        DefaultName = D("standard_muzzle"),
        Category = {"muzzle", "ud_m16_muzzle"},
        Bone = "m16_parent",
        Pos = Vector(0, -.33, 23.27),
        Ang = Angle(90, 0, -90),
        ExcludeElements = {"sd", "m16_stub"},
    },
    {
        PrintName = "uc.slot.upper",
        DefaultName = D("5_56x45mm_upper"),
        DefaultIcon = Material("entities/att/uc_bullets/556x45.png", "smooth mips"),
        Category = {"ud_m16_receiver"},
        Bone = "m16_parent",
        Pos = Vector(2.8, -4.2, -11.5),
        Ang = Angle(90, 0, -90),
        ExcludeElements = {"ud_m16_fpw"},
    },
    {
        PrintName = "uc.slot.lower",
        DefaultName = D("burst_lower"),
        DefaultIcon = Material("entities/att/acwatt_ud_m16_receiver_default.png", "smooth mips"),
        Category = {"ud_m16_fcg"},
        Bone = "m16_parent",
        Pos = Vector(2.8, -4.2, -11.5),
        Ang = Angle(90, 0, -90),
        ExcludeElements = {"m16_nolower"},
    },
    {
        PrintName = "uc.slot.underbarrel",
        Category = "foregrip",
        Bone = "m16_parent",
        Pos = Vector(0, .65, 9.5),
        UC_RailMin = Vector(0, .65, 11.5),
        UC_RailMax = Vector(0, .65, 7.5),
        Ang = Angle(90, 0, -90),
        InstalledElements = {"rail_fg"},
        ExcludeElements = {"m16_lmg", "m16_stub"},
        MergeSlots = {18},
    },
    {
        PrintName = "uc.slot.tactical",
        Category = {"tac"},
        Bone = "m16_parent",
        Pos = Vector(0, 0.3, 21.25),
        Ang = Angle(90, 0, -90),
        InstalledElements = {"tac"},
    },
    {
        PrintName = "uc.slot.grip",
        Category = {"ud_m16_grip"},
        DefaultName = D("standard_grip"),
        DefaultIcon = Material("entities/att/acwatt_ud_m16_grip_default.png", "smooth mips"),
        ExcludeElements = {"m16_adar"},
    },
    {
        PrintName = "uc.slot.stock",
        Category = {"ud_m16_stock", "go_stock"},
        DefaultName = D("full_stock"),
        DefaultIcon = Material("entities/att/acwatt_ud_m16_stock_default.png", "smooth mips"),
        -- GSO support
        InstalledElements = {"stock_231_tube"},
        Bone = "m16_parent",
        Pos = Vector(-0.02, 0, -2.7),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "uc.slot.magazine",
        Category = {"ud_m16_mag"},
        DefaultName = D("30_round_mag"),
        DefaultIcon = Material("entities/att/acwatt_ud_m16_mag_30.png", "smooth mips"),
    },
    {
        PrintName = "uc.slot.ammo",
        DefaultName = D("fmj"),
        DefaultIcon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth"),
        Category = "uc_ammo",
    },
    {
        PrintName = "uc.slot.powder",
        Category = "uc_powder",
        DefaultName = D("standard_load"),
    },
    {
        PrintName = "uc.slot.tp",
        Category = "uc_tp",
        DefaultName = D("basic_training"),
    },
    {
        PrintName = "uc.slot.internals",
        Category = "uc_fg", -- Fire group
        DefaultName = D("standard_internals"),
    },
    {
        PrintName = "uc.slot.front_sight",
        Category = {"ud_m16_fs", "ud_m16_charm"},
        Bone = "m16_parent",
        Pos = Vector(0, -1.65, 16.75), -- 21.75 or 15.75
        Ang = Angle(90, 0, -90),
        ExcludeElements = {"sight_magpul"},
    },
    {
        PrintName = "uc.slot.charm",
        Category = {"charm", "fml_charm"},
        CosmeticOnly = true,
        Bone = "m16_parent",
        Pos = Vector(0.48, 0.5, 3.9),
        Ang = Angle(90, 0, -90),
    },
    {
        -- Merged into the underbarrel slot.
        PrintName = "uc.slot.ubgl",
        Category = "uc_ubgl",
        Bone = "m16_parent",
        Pos = Vector(0, -0.4, 7.2),
        Ang = Angle(90, 0, -90),
        InstalledElements = {"rail_fg"},
        ExcludeElements = {"m16_lmg", "m16_stub"},
    }
}
