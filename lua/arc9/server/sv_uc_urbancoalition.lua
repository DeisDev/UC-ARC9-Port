-- Urban Coalition server features: custom color relay and asset caching.

util.AddNetworkString("ARC9_UC_CustColor")

net.Receive("ARC9_UC_CustColor", function(len, ply)
    if (ply.UC_LastColorUpdate or 0) + ARC9.UC.CustColorUpdateInterval > CurTime() then return end
    ply.UC_LastColorUpdate = CurTime()

    net.Start("ARC9_UC_CustColor")
        net.WriteEntity(ply)
        local enabled = tobool(ply:GetInfoNum("arc9_uc_custcolor_enable", 0))
        net.WriteBool(enabled)
        if enabled then
            net.WriteColor(Color(ply:GetInfoNum("arc9_uc_custcolor_1_r", 255), ply:GetInfoNum("arc9_uc_custcolor_1_g", 255), ply:GetInfoNum("arc9_uc_custcolor_1_b", 255)), false)
            net.WriteColor(Color(ply:GetInfoNum("arc9_uc_custcolor_2_r", 255), ply:GetInfoNum("arc9_uc_custcolor_2_g", 255), ply:GetInfoNum("arc9_uc_custcolor_2_b", 255)), false)
        end
    net.SendOmit(ply)
end)

local procedure = {
    ["sound"] = function(asset)
        local cmdl = ents.Create("prop_dynamic")
        asset = string.Replace(asset, "sound\\", "")
        asset = string.Replace(asset, "sound/", "")
        cmdl:EmitSound(asset, 75, 100, 0.4, CHAN_WEAPON)
        cmdl:Remove()
    end,
    ["model"] = function(asset)
        local cmdl = ents.Create("prop_dynamic")
        cmdl:SetModel(asset)
        cmdl:Spawn()
        cmdl:Remove()
    end,
}

concommand.Add("arc9_uc_cache_server", function(ply)
    if IsValid(ply) and !ply:IsSuperAdmin() then return end

    for i, fie in ipairs(ARC9.UC.FindCacheAssets()) do
        timer.Simple(i / 20, function()
            if string.GetExtensionFromFilename(fie) == "mdl" then
                procedure["model"](fie)
            else
                procedure["sound"](fie)
            end
        end)
    end
end, nil, "Command the server to cache all Urban Coalition assets.")
