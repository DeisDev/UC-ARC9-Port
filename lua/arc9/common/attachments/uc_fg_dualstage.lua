ATT.PrintName = ARC9.UC.AttName("uc_fg_dualstage")
ATT.MenuCategory = "ARC9 - Urban Coalition"
ATT.CustomPros = {
    ["uc.dualstage.pro"] = "",
}
ATT.CustomCons = {
    ["uc.dualstage.con"] = "",
}

ATT.Icon = Material("entities/att/arccw_uc_dualstagetrigger.png", "mips smooth")
ATT.Category = "uc_fg"
ATT.SortOrder = 2
ATT.UC_Compatible = function(wep)
    if ARC9.UC.IsManualAction(wep) then
        return false
    end
    for i, v in pairs(wep.Firemodes) do
        if !v then continue end
        if v.Mode and v.Mode != 1 and v.Mode != 0 then
            return
        end
    end
    return false
end
ATT.RPMMult = 1.1
ATT.TriggerDelayTimeMult = 0
-- +0.1s before the second shot outside semi-automatic
ATT.RPMHookFirstShot = function(wep, rpm)
    if wep:GetCurrentFiremodeTable().Mode != 1 and (!wep:GetOwner():IsPlayer() or wep:GetOwner():KeyDown(IN_ATTACK)) then
        return 60 / (60 / rpm + 0.1)
    end
end
ATT.Hook_Think = function(wep)
    if wep:GetOwner():IsPlayer() and wep:GetOwner():KeyReleased(IN_ATTACK) and wep:GetBurstCount() == 0 and IsFirstTimePredicted() then
        wep:SetNextPrimaryFire((wep.TriggerDownTime or CurTime()) + 60 / wep:GetProcessedValue("RPM"))
    elseif wep:GetOwner():IsPlayer() and wep:GetOwner():KeyPressed(IN_ATTACK) and wep:GetBurstCount() == 0 and IsFirstTimePredicted() then
        wep.TriggerDownTime = CurTime()
    end
end
ATT.InstallSound = "arccw_uc/common/gunsmith/internal_modification.ogg"
