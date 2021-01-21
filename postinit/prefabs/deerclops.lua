local UpvalueHacker = GLOBAL.require("tools/upvaluehacker")
local env = env
GLOBAL.setfenv(1, GLOBAL)
-----------------------------------------------------------------


local PHASE2_HEALTH = .5

local function OnNewState(inst, data)
    if not (inst.sg:HasStateTag("sleeping") or inst.sg:HasStateTag("waking")) then
        inst.Light:SetIntensity(.6)
        inst.Light:SetRadius(8)
        inst.Light:SetFalloff(3)
        inst.Light:SetColour(0, 0, 1)
		--inst.Light:Enable(true)
	--else
		--inst:DoTaskInTime(2, inst.Light:Enable(false))
    end
end

local function EnterPhase2Trigger(inst)
    if not inst.components.health:IsDead() then
		local upgradeburst = SpawnPrefab("maxwell_smoke")
		upgradeburst.Transform:SetPosition(inst.Transform:GetWorldPosition())
		upgradeburst.Transform:SetScale(3, 3, 3)
		
		inst.Transform:SetScale(1.85, 1.85, 1.85)
		inst.components.combat:SetRange(TUNING.DEERCLOPS_ATTACK_RANGE * 1.1)
		inst.components.combat:SetAreaDamage(TUNING.DEERCLOPS_AOE_RANGE * 1.1, TUNING.DEERCLOPS_AOE_SCALE * 1.1)
		inst.components.combat:SetAttackPeriod(TUNING.DEERCLOPS_ATTACK_PERIOD * 0.9)
		
		

			--if not IsSpecialEventActive(SPECIAL_EVENTS.WINTERS_FEAST) then
				inst.AnimState:SetBuild("deerclops_yule_blue")

				--inst.entity:AddLight()
				inst.Light:SetIntensity(.6)
				inst.Light:SetRadius(8)
				inst.Light:SetFalloff(3)
				inst.Light:SetColour(0, 0, 1)
				inst.Light:Enable(true)

				inst:DoTaskInTime(0.1, inst:AddComponent("timer"))
				inst:ListenForEvent("newstate", OnNewState)
				
			--end
		
		inst.sg:GoToState("taunt")
		inst.enraged = true
	
	end
end

local function UpdateLevelIce(inst)  --Save For Tier2
if inst.components.workable ~= nil then
inst.components.health:SetAbsorptionAmount(.8)
end
end
local function OnWork(inst, worker, workleft) --Save for Tier 2
    if workleft <= 0 then
	inst:RemoveComponent("workable")
	UpdateLevelIce(inst)
	inst.components.timer:StartTimer("freezearmor",30+math.random(0,10))
	end
end
local function FreezeArmor(inst,data) --Save For Tier 2
    if data ~= nil then
        if data.name == "freezearmor" then
		inst:AddComponent("workable")
		inst.components.workable:SetWorkAction(ACTIONS.MINE)
		inst.components.workable:SetWorkLeft(TUNING.ROCKS_MINE)
		inst.components.workable:SetOnWorkCallback(OnWork)
		inst.sg:GoToState("taunt")
		UpdateLevelIce(inst)
		end
	end
end


local function AuraFreezeEnemies(inst)
if inst.components.combat.target ~= nil then
if inst:GetDistanceSqToPoint(inst.components.combat.target:GetPosition()) < 6 then
inst.sg:GoToState("aurafreeze_pre")
inst:DoTaskInTime(15,function(inst) inst.AnimState:PlayAnimation("fortresscast_pst")
inst.sg:GoToState("idle")
inst.components.timer:StartTimer("auratime", 15)
end)
end
else
inst.components.timer:StartTimer("auratime", 15)
end
end
local function IceyCheck(inst,data)
if data ~= nil and data.name == "auratime" then
AuraFreezeEnemies(inst)
end
end
---------

---------

local function MakeEnrageable(inst)
inst:AddComponent("healthtrigger")
inst.components.health:SetMaxHealth(4400)
inst.components.healthtrigger:AddTrigger(PHASE2_HEALTH, EnterPhase2Trigger)
inst.upgrade = "enrage_mutation"
end
local function MakeStrong(inst)
inst.components.health:SetMaxHealth(4500)
inst.upgrade = "strength_mutation"
inst:DoTaskInTime(0.1, function(inst) inst:AddComponent("timer") end)
if inst.components.healthtrigger ~= nil then
inst:RemoveComponent("healthtrigger")      --Bandaid fix to attempt to correct the health trigger just getting added anyways
end
end
local function MakeIcey(inst)
inst.components.health:SetMaxHealth(4250)
inst.upgrade = "ice_mutation"
inst:DoTaskInTime(0.1, function(inst) inst:AddComponent("timer")
inst.components.timer:StartTimer("auratime", 15) end)
inst:ListenForEvent("timerdone", IceyCheck)
if inst.components.healthtrigger ~= nil then
inst:RemoveComponent("healthtrigger")      --Bandaid fix to attempt to correct the health trigger just getting added anyways
end
end
--[[ Save For Tier 2
inst:AddComponent("timer")
inst:ListenForEvent("timerdone", FreezeArmor)
inst.components.timer:StartTimer("freezearmor",0.1)]]
------------

------------
local function ChooseUpgrades(inst)
if inst.upgrades == nil then
--[[
if math.random() > 0.5 then
MakeEnrageable(inst)
else
MakeStrong(inst)
end]]
MakeIcey(inst)
else
			if data.upgrade == "enrage_mutation" then
			MakeEnrageable(inst)
			end
			if data.upgrade == "strength_mutation" then
			MakeStrong(inst)
			end
			if data.upgrade == "ice_mutation" then
			MakeStrong(inst)
			end
end
end
local function OnSave(inst, data)
    data.enraged = inst.enraged or nil
	data.upgrade = inst.upgrade
end

local function OnPreLoad(inst, data)
    if data ~= nil then
        if data.enraged then
            EnterPhase2Trigger(inst)
        end
    end
end
local function OnLoad(inst, data)
    if data then
		if data.upgrade == nil then
		ChooseUpgrades(inst)
		else
		
			if data.upgrade == "enrage_mutation" then
			MakeEnrageable(inst)
			end
			if data.upgrade == "strength_mutation" then
			MakeStrong(inst)
			end
			if data.upgrade == "ice_mutation" then
			MakeIcey(inst)
			end
		end
    end
end
local function oncollapse(inst, other)
    if other:IsValid() and other.components.workable ~= nil and other.components.workable:CanBeWorked() then
        SpawnPrefab("collapse_small").Transform:SetPosition(other.Transform:GetWorldPosition())
        other.components.workable:Destroy(inst)
    end
end

local function oncollide(inst, other)
    if other ~= nil and
        (other:HasTag("tree") or other:HasTag("boulder")) and not other:HasTag("giant_tree") and --HasTag implies IsValid
        Vector3(inst.Physics:GetVelocity()):LengthSq() >= 1 then
        inst:DoTaskInTime(2 * FRAMES, oncollapse, other)
    end
end

env.AddPrefabPostInit("deerclops", function(inst)

	local _OnHitOther = UpvalueHacker.GetUpvalue(Prefabs.deerclops.fn, "OnHitOther")

	local function OnHitOther(inst,data)
	if inst.sg:HasStateTag("heavyhit") then
		local other = data.target
		if other ~= nil then
			if not (other.components.health ~= nil and other.components.health:IsDead()) then
			if other ~= nil and other.components and other.components.inventory ~= nil and not other:HasTag("fat_gang") and not other:HasTag("foodknockbackimmune") and (other.components.inventory:GetEquippedItem(EQUIPSLOTS.BODY) == nil or not other.components.inventory:GetEquippedItem(EQUIPSLOTS.BODY):HasTag("marble") and not other.components.inventory:GetEquippedItem(EQUIPSLOTS.BODY):HasTag("knockback_protection")) then
			other:PushEvent("knockback", {knocker = inst, radius = 150, strengthmult = 1.2})
			end
			end
		end
	else
	if not inst.sg:HasStateTag("noice") then
	_OnHitOther(inst,data)
	end
	end
	end

	inst:RemoveEventCallback("onhitother", _OnHitOther)
    inst:ListenForEvent("onhitother", OnHitOther)
	
	if not IsSpecialEventActive(SPECIAL_EVENTS.WINTERS_FEAST) then
		inst.entity:AddLight()
		inst.Light:SetIntensity(.6)
        inst.Light:SetRadius(8)
        inst.Light:SetFalloff(3)
        inst.Light:SetColour(0, 0, 1)
		
		inst.Light:Enable(false)
	end
	

	if not TheWorld.ismastersim then
		return
	end
	
    inst.Physics:SetCollisionCallback(oncollide)
	
	inst.OnSave = OnSave
    inst.OnPreLoad = OnPreLoad
	inst.OnLoad = OnLoad
	inst:RemoveComponent("freezable")
	

	
	if inst.components.lootdropper ~= nil then
		inst.components.lootdropper:AddChanceLoot("cursed_antler", 1)
	end
	
	inst:AddComponent("groundpounder")
	inst.components.groundpounder.destroyer = true
	inst.components.groundpounder.damageRings = 2
    inst.components.groundpounder.destructionRings = 2
    inst.components.groundpounder.platformPushingRings = 2
    inst.components.groundpounder.numRings = 3
	inst:DoTaskInTime(0.1,ChooseUpgrades(inst))	--Incase we need to specify an upgrade because this deerclops despawned.

end)