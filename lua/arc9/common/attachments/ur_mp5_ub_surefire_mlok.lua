ATT.PrintName = ARC9.UC.AttName("ur_mp5_ub_surefire_mlok")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/ur_mp5/hg_flash_mlok.png", "smooth mips")
ATT.CustomPros = {
    ["uc.light"] = "",
}
ATT.CustomCons = {
    ["uc.base.con.light"] = "",
    ["uc.noubs"] = "",
}

ATT.Category = "ur_mp5_hg"
ATT.SortOrder = 998

ATT.Model = "models/weapons/arccw/atts/ud_flashlight_1.mdl"
ATT.ModelOffset = Vector(0,0,.1)
ATT.UC_ModelAngleOffset = Angle(0,0,180)
ATT.ModelAngleOffset = ARC9.UC.AttachmentAngle(ATT.UC_ModelAngleOffset)
ATT.Scale = 0.01

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

ATT.AimDownSightsTimeMult = 0.9
ATT.SprintToFireTimeMult = 0.9

ATT.ExcludeElements = {"barrel_sd","mp5_kurz"}

ATT.ActivateElements = {"ur_mp5_ub_surefire_mlok", "ur_mp5_ub_surelock", "hg_surefire", "mp5_badhg"}

ATT.FlashlightAttachment = 1
ATT.ToggleOnF = true
