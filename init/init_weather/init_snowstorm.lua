local function GetSandstormLevel(inst)
	local x, y, z = inst.Transform:GetWorldPosition()
    local ents = TheSim:FindEntities(x, y, z, 4, {"wall"})
    local suppressorNearby1 = (#ents > 2)
	
    local ents2 = TheSim:FindEntities(x, y, z, 6, {"fire"})
    local suppressorNearby2 = (#ents2 > 0)
	
	local ents3 = TheSim:FindEntities(x, y, z, 5.5, {"shelter"})
    local suppressorNearby3 = (#ents3 > 2)

	if GLOBAL.TheWorld.state.issnowing and not suppressorNearby1 and not suppressorNearby2 and not suppressorNearby3 then
		return 1
	else
		return inst.player_classified ~= nil and inst.player_classified.sandstormlevel:value() / 7 or 0
	end
end

local function SetInstanceFunctions(inst)
        inst.GetSandstormLevel = GetSandstormLevel
end

AddPlayerPostInit(function(inst)

	if not GLOBAL.TheWorld.ismastersim then
        return inst
    end
		
	if GLOBAL.TheWorld.ismastersim then
		inst:AddComponent("snowstormwatcher")
	end
	
	SetInstanceFunctions(inst)
	
	inst:AddComponent("firerain")
end)