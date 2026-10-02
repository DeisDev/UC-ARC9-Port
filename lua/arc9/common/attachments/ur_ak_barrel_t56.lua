ATT.PrintName = ARC9.UC.AttName("ur_ak_barrel_t56")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.Icon = Material("entities/att/ur_ak/barrel/type.png", "mips smooth")
ATT.Category = {"ur_ak_barrel"}
ATT.SortOrder = 16
ATT.SpeedMultSights = .95
ATT.ToggleStats = {
    {
        PrintName = "uc.toggle.extended",
        ActivateElements = {"barrel_t56_ext"},
        BashRangeAdd = 16,
        BashDamageMult = 3,
        UC_MeleeWaitTimeMult = 2,
        UC_Bayonet = true,
        BarrelLengthAdd = 10,
        SwayMult = 1.2,
        Hook_TranslateAnimation = function(wep, anim) if anim == "bash" then return "bash_bayonet" end end
    },
    {
        PrintName = "ur.toggle.folded",
        ActivateElements = {"barrel_t56"},
    },
}

ATT.ExcludeElements = {"ak_bayonet2"}
ATT.ActivateElements = {"ak_bayonet1"}
