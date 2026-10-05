do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_tac_anpeq16a")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.light"] = "",
    }
    ATT.CustomCons = {
        ["uc.base.con.light"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_uc_tac_anpeq16a.png", "mips smooth")
    ATT.Category = {"tac"}
    ATT.SortOrder = 20 + 4
    ATT.Model = "models/weapons/arccw/atts/uc_anpeq16a.mdl"
    ATT.UC_StackHeight = 1.35
    ATT.Attachments = ARC9.UC.TacticalStackSlot()
    ATT.ModelOffset = Vector(0, 0.1, 0.25)
    ATT.ModelAngleOffset = Angle(0, 0,180)
    ATT.Scale = 1.2
    ATT.ModelSkin = 1
    ATT.Laser = false
    ATT.LaserStrength = 2 / 5
    ATT.LaserAttachment = 2
    ATT.LaserColor = Color(255, 0, 0, 150)
    ATT.AimDownSightsTimeMult = 1.05
    ATT.SprintToFireTimeMult = 1.05
    ATT.SpeedMultSights = 0.95
    ATT.SpeedMult = 1
    ATT.Flashlight = false
    ATT.FlashlightFOV = 50
    ATT.FlashlightDistance = 512 -- how far it goes
    ATT.FlashlightColor = Color(255, 235, 229)
    ATT.FlashlightMaterial = "effects/flashlight001"
    ATT.FlashlightBrightness = 2
    ATT.FlashlightAttachment = 2
    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.laser",
            Laser = true,
            UC_HipDispersionMult = 0.8,
            UC_MoveDispersionMult = 0.8,
        },
        {
            PrintName = "uc.toggle.both",
            Laser = true,
            Flashlight = true,
            UC_HipDispersionMult = 0.8,
            UC_MoveDispersionMult = 0.8,
        },
        {
            PrintName = "uc.toggle.light",
            Flashlight = true,
        },
        {
            PrintName = "uc.toggle.off",
        }
    }
    ATT.ToggleOnF = true

    ARC9.LoadAttachment(ATT, "uc_tac_anpeq16a")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_tac_anpeq16a_tan")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.light"] = "",
    }
    ATT.CustomCons = {
        ["uc.base.con.light"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_uc_tac_anpeq16a_tan.png", "mips smooth")
    ATT.Category = {"tac"}
    ATT.SortOrder = 20 + 2
    ATT.Model = "models/weapons/arccw/atts/uc_anpeq16a.mdl"
    ATT.UC_StackHeight = 1.35
    ATT.Attachments = ARC9.UC.TacticalStackSlot()
    ATT.ModelOffset = Vector(0, 0.1, 0.25)
    ATT.ModelAngleOffset = Angle(0, 0,180)
    ATT.Scale = 1.2
    ATT.Laser = false
    ATT.LaserStrength = 2 / 5
    ATT.LaserAttachment = 2
    ATT.LaserColor = Color(255, 0, 0, 150)
    ATT.AimDownSightsTimeMult = 1.05
    ATT.SprintToFireTimeMult = 1.05
    ATT.SpeedMultSights = 0.95
    ATT.SpeedMult = 1
    ATT.Flashlight = false
    ATT.FlashlightFOV = 50
    ATT.FlashlightDistance = 512 -- how far it goes
    ATT.FlashlightColor = Color(255, 235, 229)
    ATT.FlashlightMaterial = "effects/flashlight001"
    ATT.FlashlightBrightness = 2
    ATT.FlashlightAttachment = 2
    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.laser",
            Laser = true,
            UC_HipDispersionMult = 0.8,
            UC_MoveDispersionMult = 0.8,
        },
        {
            PrintName = "uc.toggle.both",
            Laser = true,
            Flashlight = true,
            UC_HipDispersionMult = 0.8,
            UC_MoveDispersionMult = 0.8,
        },
        {
            PrintName = "uc.toggle.light",
            Flashlight = true,
        },
        {
            PrintName = "uc.toggle.off",
        }
    }
    ATT.ToggleOnF = true

    ARC9.LoadAttachment(ATT, "uc_tac_anpeq16a_tan")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_tac_anpeq2")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.light"] = "",
    }
    ATT.CustomCons = {
        ["uc.base.con.light"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_uc_tac_anpeq2.png", "mips smooth")
    ATT.Category = {"tac"}
    ATT.SortOrder = 20 + 3
    ATT.Model = "models/weapons/arccw/atts/uc_anpeq2.mdl"
    ATT.UC_StackHeight = 1.6
    ATT.Attachments = ARC9.UC.TacticalStackSlot()
    ATT.ModelOffset = Vector(0, 0.01, 0.35)
    ATT.ModelAngleOffset = Angle(0, 0,180)
    ATT.Scale = 1.2
    ATT.ModelSkin = 1
    ATT.Laser = false
    ATT.LaserStrength = 3.5 / 5
    ATT.LaserAttachment = 2
    ATT.LaserColor = Color(255, 0, 0, 150)
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.SpeedMultSights = 0.9
    ATT.SpeedMult = 1
    ATT.Flashlight = false
    ATT.FlashlightFOV = 50
    ATT.FlashlightDistance = 512 -- how far it goes
    ATT.FlashlightColor = Color(255, 235, 229)
    ATT.FlashlightMaterial = "effects/flashlight001"
    ATT.FlashlightBrightness = 2
    ATT.FlashlightAttachment = 2
    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.laser",
            Laser = true,
            UC_HipDispersionMult = 0.7,
            UC_MoveDispersionMult = 0.8,
            AimDownSightsTimeMult = .9,
            SprintToFireTimeMult = .9,
            SpeedMultSights = .75,
        },
        {
            PrintName = "uc.toggle.both",
            Laser = true,
            Flashlight = true,
            UC_HipDispersionMult = 0.7,
            UC_MoveDispersionMult = 0.8,
            AimDownSightsTimeMult = .9,
            SprintToFireTimeMult = .9,
            SpeedMultSights = .75,
        },
        {
            PrintName = "uc.toggle.light",
            Flashlight = true,
        },
        {
            PrintName = "uc.toggle.off",
        }
    }
    ATT.ToggleOnF = true

    ARC9.LoadAttachment(ATT, "uc_tac_anpeq2")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_tac_anpeq2_tan")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.light"] = "",
    }
    ATT.CustomCons = {
        ["uc.base.con.light"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_uc_tac_anpeq2_tan.png", "mips smooth")
    ATT.Category = {"tac"}
    ATT.SortOrder = 20 + 1
    ATT.Model = "models/weapons/arccw/atts/uc_anpeq2.mdl"
    ATT.UC_StackHeight = 1.6
    ATT.Attachments = ARC9.UC.TacticalStackSlot()
    ATT.ModelOffset = Vector(0, 0.01, 0.35)
    ATT.ModelAngleOffset = Angle(0, 0,180)
    ATT.Scale = 1.2
    ATT.Laser = false
    ATT.LaserStrength = 3.5 / 5
    ATT.LaserAttachment = 2
    ATT.LaserColor = Color(255, 0, 0, 150)
    ATT.AimDownSightsTimeMult = 1.1
    ATT.SprintToFireTimeMult = 1.1
    ATT.SpeedMultSights = 0.9
    ATT.SpeedMult = 1
    ATT.Flashlight = false
    ATT.FlashlightFOV = 50
    ATT.FlashlightDistance = 512 -- how far it goes
    ATT.FlashlightColor = Color(255, 235, 229)
    ATT.FlashlightMaterial = "effects/flashlight001"
    ATT.FlashlightBrightness = 2
    ATT.FlashlightAttachment = 2
    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.laser",
            Laser = true,
            UC_HipDispersionMult = 0.7,
            UC_MoveDispersionMult = 0.8,
            AimDownSightsTimeMult = .9,
            SprintToFireTimeMult = .9,
            SpeedMultSights = .75,
        },
        {
            PrintName = "uc.toggle.both",
            Laser = true,
            Flashlight = true,
            UC_HipDispersionMult = 0.7,
            UC_MoveDispersionMult = 0.8,
            AimDownSightsTimeMult = .9,
            SprintToFireTimeMult = .9,
            SpeedMultSights = .75,
        },
        {
            PrintName = "uc.toggle.light",
            Flashlight = true,
        },
        {
            PrintName = "uc.toggle.off",
        }
    }
    ATT.ToggleOnF = true

    ARC9.LoadAttachment(ATT, "uc_tac_anpeq2_tan")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_tac_flashlight1")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.light"] = "",
    }
    ATT.CustomCons = {
        ["uc.base.con.light"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_uc_tac_flashlight1.png", "mips smooth")
    ATT.Category = {"tac","tac_pistol"}
    ATT.SortOrder = 30 + 1
    ATT.Model = "models/weapons/arccw/atts/ud_flashlight_1.mdl"
    ATT.UC_StackHeight = 1.8
    ATT.Attachments = ARC9.UC.TacticalStackSlot()
    ATT.ModelOffset = Vector(0,0,0)
    ATT.ModelAngleOffset = Angle(0,0,180)
    ATT.Scale = 1.2
    ATT.Flashlight = false
    ATT.FlashlightFOV = 50
    ATT.FlashlightDistance = 1024 -- how far it goes
    ATT.FlashlightColor = Color(255, 242, 229)
    ATT.FlashlightMaterial = "effects/flashlight001"
    ATT.FlashlightBrightness = 3
    ATT.FlashlightAttachment = 1
    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.on",
            Flashlight = true,
        },
        {
            PrintName = "uc.toggle.wide",
            Flashlight = true,
            FlashlightFOV = 80,
            FlashlightDistance = 768,
            FlashlightBrightness = 1,
        },
        {
            PrintName = "uc.toggle.off",
            Flashlight = false,
        }
    }
    ATT.ToggleOnF = true

    ARC9.LoadAttachment(ATT, "uc_tac_flashlight1")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_tac_flashlight2")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.light"] = "",
    }
    ATT.CustomCons = {
        ["uc.base.con.light"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_uc_tac_flashlight2.png", "mips smooth")
    ATT.Category = {"tac","tac_pistol"}
    ATT.SortOrder = 30 + 2
    ATT.Model = "models/weapons/arccw/atts/ud_flashlight_2.mdl"
    ATT.UC_StackHeight = 1.8
    ATT.Attachments = ARC9.UC.TacticalStackSlot()
    ATT.ModelOffset = Vector(0,0,-.1)
    ATT.Flashlight = false
    ATT.FlashlightFOV = 50
    ATT.FlashlightDistance = 1024 -- how far it goes
    ATT.FlashlightColor = Color(255, 255, 255)
    ATT.FlashlightMaterial = "effects/flashlight001"
    ATT.FlashlightBrightness = 3
    ATT.FlashlightAttachment = 1
    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.on",
            Flashlight = true,
        },
        {
            PrintName = "uc.toggle.tight",
            Flashlight = true,
            FlashlightFOV = 30,
            FlashlightDistance = 1536,
            FlashlightBrightness = 5,
        },
        {
            PrintName = "uc.toggle.off",
            Flashlight = false,
        }
    }
    ATT.ToggleOnF = true

    ARC9.LoadAttachment(ATT, "uc_tac_flashlight2")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_tac_flashlight3")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.light"] = "",
    }
    ATT.CustomCons = {
        ["uc.base.con.light"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_uc_tac_flashlight3.png", "mips smooth")
    ATT.Category = {"tac"}
    ATT.SortOrder = 30 + 3
    ATT.Model = "models/weapons/arccw/atts/uc_flashlight.mdl"
    ATT.UC_StackHeight = 1.75
    ATT.Attachments = ARC9.UC.TacticalStackSlot()
    ATT.ModelOffset = Vector(0.5,0,-0.07)
    ATT.ModelAngleOffset = Angle(0,0,0)
    ATT.Scale = 0.75
    ATT.Flashlight = false
    ATT.FlashlightFOV = 40
    ATT.FlashlightDistance = 1536 -- how far it goes
    ATT.FlashlightColor = Color(255, 229, 200)
    ATT.FlashlightMaterial = "effects/flashlight001"
    ATT.FlashlightBrightness = 4
    ATT.FlashlightAttachment = 1
    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.on",
            Flashlight = true,
        },
        {
            PrintName = "uc.toggle.off",
            Flashlight = false,
        }
    }
    ATT.ToggleOnF = true

    ARC9.LoadAttachment(ATT, "uc_tac_flashlight3")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_tac_laser_green")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["uc.base.con.light"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_uc_tac_flashlight2.png", "mips smooth")
    ATT.Category = {"tac","tac_pistol"}
    ATT.SortOrder = 29
    ATT.Model = "models/weapons/arccw/atts/ud_flashlight_1.mdl"
    ATT.UC_StackHeight = 1.8
    ATT.Attachments = ARC9.UC.TacticalStackSlot()
    ATT.ModelOffset = Vector(0,0,0)
    ATT.ModelAngleOffset = Angle(0,0,180)
    ATT.Scale = 1.2
    ATT.Laser = false
    ATT.LaserStrength = 2 / 5
    ATT.LaserAttachment = 1
    ATT.LaserColor = Color(0, 255, 0, 150)
    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.on",
            Laser = true,
            UC_HipDispersionMult = 0.8,
            UC_MoveDispersionMult = 0.8,
        },
        {
            PrintName = "uc.toggle.off",
            Laser = false,
        }
    }
    ATT.ToggleOnF = true

    ARC9.LoadAttachment(ATT, "uc_tac_laser_green")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_tac_laser_red")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomCons = {
        ["uc.base.con.light"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_uc_tac_flashlight2.png", "mips smooth")
    ATT.Category = {"tac","tac_pistol"}
    ATT.SortOrder = 29
    ATT.Model = "models/weapons/arccw/atts/ud_flashlight_1.mdl"
    ATT.UC_StackHeight = 1.8
    ATT.Attachments = ARC9.UC.TacticalStackSlot()
    ATT.ModelOffset = Vector(0,0,0)
    ATT.ModelAngleOffset = Angle(0,0,180)
    ATT.Scale = 1.2
    ATT.Laser = false
    ATT.LaserStrength = 2 / 5
    ATT.LaserAttachment = 1
    ATT.LaserColor = Color(255, 0, 0, 150)
    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.on",
            Laser = true,
            UC_HipDispersionMult = 0.8,
            UC_MoveDispersionMult = 0.8,
        },
        {
            PrintName = "uc.toggle.off",
            Laser = false,
        }
    }
    ATT.ToggleOnF = true

    ARC9.LoadAttachment(ATT, "uc_tac_laser_red")
end

do
    local ATT = {}

    ATT.PrintName = ARC9.UC.AttName("uc_tac_tlr2hl")
    ATT.MenuCategory = "ARC9 - Urban Coalition"
    ATT.CustomPros = {
        ["uc.light"] = "",
    }
    ATT.CustomCons = {
        ["uc.base.con.light"] = "",
    }

    ATT.Icon = Material("entities/att/acwatt_uc_tac_tlr2hl.png", "mips smooth")
    ATT.Category = {"tac","tac_pistol"}
    ATT.SortOrder = 20 + 4
    ATT.Model = "models/weapons/arccw/atts/uc_tlr2hl.mdl"
    ATT.UC_StackHeight = 1.95
    ATT.Attachments = ARC9.UC.TacticalStackSlot()
    ATT.ModelOffset = Vector(0.75, 0, -0.1)
    ATT.ModelAngleOffset = Angle(0,0,0)
    ATT.Scale = 0.75
    ATT.Laser = false
    ATT.LaserStrength = 2 / 5
    ATT.LaserAttachment = 2
    ATT.LaserColor = Color(255, 0, 0, 150)
    ATT.AimDownSightsTimeMult = 1.05
    ATT.SprintToFireTimeMult = 1.05
    ATT.SpeedMultSights = 0.95
    ATT.SpeedMult = 1
    ATT.Flashlight = false
    ATT.FlashlightFOV = 50
    ATT.FlashlightDistance = 1024 -- how far it goes
    ATT.FlashlightColor = Color(255, 235, 229)
    ATT.FlashlightMaterial = "effects/flashlight001"
    ATT.FlashlightBrightness = 0.5
    ATT.FlashlightAttachment = 2
    ATT.ToggleStats = {
        {
            PrintName = "uc.toggle.laser",
            Laser = true,
            UC_HipDispersionMult = 0.8,
            UC_MoveDispersionMult = 0.8,
        },
        {
            PrintName = "uc.toggle.both",
            Laser = true,
            Flashlight = true,
            UC_HipDispersionMult = 0.8,
            UC_MoveDispersionMult = 0.8,
        },
        {
            PrintName = "uc.toggle.light",
            Flashlight = true,
        },
        {
            PrintName = "uc.toggle.off",
        }
    }
    ATT.ToggleOnF = true

    ARC9.LoadAttachment(ATT, "uc_tac_tlr2hl")
end
