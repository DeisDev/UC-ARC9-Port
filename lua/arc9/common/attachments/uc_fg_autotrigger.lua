ATT.PrintName = ARC9.UC.AttName("uc_fg_autotrigger")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.auto"] = "",
}
ATT.CustomCons = {
    ["uc.frcd_visrec"] = "",
}
ATT.ExcludeElements = {"needsmanual"}

ATT.Icon = Material("entities/att/arccw_uc_forcedresettrigger.png", "mips smooth")
ATT.Category = "uc_fg"
ATT.SortOrder = 2
ATT.UC_Compatible = function(wep)
    if ARC9.UC.IsManualAction(wep) or wep:GetValue("TriggerDelay") then return false end

    -- for i, v in pairs(wep.Firemodes) do
    --     if !v then continue end
    --     if !v.Mode then continue end
    --     if v.Mode == 2 then
    --         -- Not available if gun has automatic firemode
    --         return false
    --     -- elseif v.Mode < 0 then
    --     --     -- Use burst variant
    --     --     return false
    --     end
    -- end
end
ATT.Firemodes_Priority = 100
ATT.Firemodes = {
    {
        Mode = -1,
        PrintName = "fcg.frcd.abbrev",
    }
}
ATT.RecoilRandomSideMult = 1.25
ATT.VisualRecoilMult = 2
ATT.MalfunctionMeanShotsToFailMult = .85
ATT.InstallSound = "arccw_uc/common/gunsmith/internal_modification.ogg"
