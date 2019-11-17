local env = env
GLOBAL.setfenv(1, GLOBAL)

local UpvalueHacker = require("tools/upvaluehacker")

local function ongrowsproutsdone(inst, data)
    if data.name == "growsprouts" and TheWorld.state.isautumn and TheWorld.state.cycles > 70 then
        USSR.SendShardRPC(USSR.SHARD_RPC.UncomprimisingSurvival.AcidMushroomSpawnerStartSinkholes, nil, nil)
        inst.components.acidmushroomspawner:StartSinkholes()
        inst.components.timer:StartTimer("growsprouts", 1440)
    else
        inst.components.timer:StartTimer("growsprouts", 1440)
    end
end

-----------------------------------------------------------------
env.AddPrefabPostInit("toadstool_cap", function(inst)
    if not TheWorld.ismastersim then
        return
    end

    local _onspawntoad, _ongrown, _fn_i, scope_fn
    _onspawntoad, _fn_i, scope_fn = UpvalueHacker.GetUpvalue(inst.OnLoad, "setstate", "onspawntoad")
    debug.setupvalue(scope_fn, _fn_i, function(...)
        local ret = {_onspawntoad(...)}
        inst.components.timer:StopTimer("growsprouts")
        return unpack(ret)
    end)
    _ongrown, _fn_i, scope_fn = UpvalueHacker.GetUpvalue(inst.OnLoad, "setstate", "ongrown")
    debug.setupvalue(scope_fn, _fn_i, function(...)
        inst.components.timer:StartTimer("growsprouts", 1440)
        return _ongrown(...)
    end)
    
    inst:AddComponent("acidmushroomspawner")

    inst:ListenForEvent("timerdone", ongrowsproutsdone)
end)