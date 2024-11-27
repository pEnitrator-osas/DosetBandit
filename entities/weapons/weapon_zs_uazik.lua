AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_uazik_name"
	SWEP.TranslateDesc = "weapon_uazik_desc"
	SWEP.ViewModelFlip = false
	SWEP.ViewModelFOV = 70



	SWEP.ViewModelBoneMods = {
		["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(3.394, 2.048, 2.238), angle = Angle(6.872, 12.678, 27.803) },
		["ValveBiped.Bip01_R_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0.028, 1.694), angle = Angle(-14.252, 16.636, -38.793) }
	}
	
	SWEP.VElements = {
		["Car"] = { type = "Model", model = "models/props_vehicles/car005a_physics.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "", pos = Vector(-9.3, -11, -8.445), angle = Angle(0, 75, 90), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["Computer"] = { type = "Model", model = "models/props_lab/monitor02.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bro", pos = Vector(-0.731, -0.262, 2.357), angle = Angle(-25.263, 1.698, 10.681), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["GeorgeBody"] = { type = "Model", model = "models/Gibs/Fast_Zombie_Torso.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "GeorgeLegs", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.6, 0.6, 0.6), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["GeorgeLegs"] = { type = "Model", model = "models/Gibs/Fast_Zombie_Legs.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Car", pos = Vector(-13.078, 13.03387, -8.13604), angle = Angle(43.38496, 20.35005, 0), size = Vector(0.6, 0.6, 0.6), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["Head"] = { type = "Model", model = "models/maxofs2d/balloon_gman.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "toy", pos = Vector(0, 0, 2.659), angle = Angle(0, 0, 0), size = Vector(0.15, 0.15, 0.15), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		--["Mirror"] = { type = "Model", model = "models/props_combine/breenclock.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Car", pos = Vector(11.756, 1.488, 25.981), angle = Angle(0, 180, 180), size = Vector(0.6, 0.6, 0.6), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["Phone"] = { type = "Model", model = "models/props/cs_office/phone.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Car", pos = Vector(19.38348, 6.81879, 9.34171), angle = Angle(-50.57507, 179.99998, 1e-05), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["Switch"] = { type = "Model", model = "models/props_phx/games/chess/black_pawn.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Car", pos = Vector(10.60992, 0.62592, -9.82246), angle = Angle(5e-05, -89.99988, -14.99997), size = Vector(0.2, 0.2, 0.6), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["axe"] = { type = "Model", model = "models/props/cs_militia/axe.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Car", pos = Vector(20.47504, 24.62195, -5.17709), angle = Angle(-1e-05, -147.73601, 48.88702), size = Vector(0.62, 0.62, 0.62), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["bro"] = { type = "Model", model = "models/props_c17/doll01.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Car", pos = Vector(-36.68475, -15.96503, 10.04593), angle = Angle(30.05198, 3e-05, -1e-05), size = Vector(1.5, 1.5, 1.5), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["bryn"] = { type = "Model", model = "models/props_combine/breenbust.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Car", pos = Vector(-6.72211, 14.41095, 11.43707), angle = Angle(-3e-05, 60.92099, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["map"] = { type = "Model", model = "models/props_canal/canalmap001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bryn", pos = Vector(7.05, 11.654, -7.781), angle = Angle(-17.437, -102.389, 0), size = Vector(0.23, 0.23, 0.23), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		--["mirror"] = { type = "Model", model = "models/hunter/blocks/cube075x1x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Mirror", pos = Vector(0.723, 0, 0), angle = Angle(90, 0, 0), size = Vector(0.15, 0.15, 0.05), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "pp/blury", skin = 0, bodygroup = {} },
		["ohno"] = { type = "Model", model = "models/weapons/w_357.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Car", pos = Vector(23.61005, 5.32104, 11.72395), angle = Angle(-1.846, 132.01704, 73.87096), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["portfel"] = { type = "Model", model = "models/props_c17/SuitCase001a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Car", pos = Vector(-31.6781, -8.81213, 6.60697), angle = Angle(8.77499, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["radio"] = { type = "Model", model = "models/props_lab/reciever01b.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Car", pos = Vector(22.79755, -1.09302, 7.54878), angle = Angle(31.71398, -180, -3e-05), size = Vector(0.7, 0.7, 0.7), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["radio2"] = { type = "Model", model = "models/props_lab/citizenradio.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Car", pos = Vector(20.70532, 0.39008, -2.49905), angle = Angle(19.99999, -180, 2e-05), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["randommelon"] = { type = "Model", model = "models/props_junk/watermelon01.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Car", pos = Vector(-36.00385, 11.27472, 3.30396), angle = Angle(77.8079, -27.87194, -90.00006), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["toy"] = { type = "Model", model = "models/items/hevsuit.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Car", pos = Vector(23.58008, -4.16113, 10.42809), angle = Angle(2.04, -180, -2e-05), size = Vector(0.05, 0.05, 0.05), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["womanAaaaa"] = { type = "Model", model = "models/props_lab/huladoll.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Car", pos = Vector(-35.46002, 0.23712, -1.88307), angle = Angle(18.129, 0, 0), size = Vector(4, 4, 4), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} }
	}
		
	--SWEP.WElements = {
	--	["Car"] = { type = "Model", model = "models/props_vehicles/car005a_physics.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "", pos = Vector(-15.245, -8.888, 2.408), angle = Angle(0, 80, 85), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} }
	--}
end

SWEP.Base = "weapon_zs_basemelee"

SWEP.Stamina = 0

SWEP.CanBlock = false
SWEP.HoldType = "normal"
SWEP.DamageType = DMG_CLUB
SWEP.FakeDamageType = DMG_SLASH
SWEP.ShowViewModel = false
SWEP.ShowWorldModel = true
SWEP.ViewModel = "models/weapons/cstrike/c_knife_t.mdl"
SWEP.WorldModel = "models/props_vehicles/car005a_physics.mdl"
SWEP.UseHands = true
SWEP.HitDecal = "Manhackcut"

SWEP.MeleeDamage = 1
SWEP.MeleeRange = 25
SWEP.MeleeSize = 20

SWEP.NextLmao = 0

SWEP.WalkSpeed = SPEED_SLOWEST*0.1

SWEP.Primary.Delay = 0.1
SWEP.Secondary.Delay = 3
SWEP.HitAnim = nil --ACT_VM_MISSCENTER
SWEP.ChargeSpeed = 1000
SWEP.ChargeStoping = false
SWEP.IsCharging = false


SWEP.PlayingCalmLoop =false
SWEP.PlayingActionLoop = false


function SWEP:SetupDataTables()
	self:NetworkVar("Float", 11, "ChargePerc")
	self:NetworkVar("Float", 12, "ChargeStart")
	if self.BaseClass.SetupDataTables then
		self.BaseClass.SetupDataTables(self)
	end
end

function SWEP:Deploy()
	self:EmitSound("player/intro_gasgasgas.wav")
	self:GetOwner():GiveStatus("knockdown", 5)  --not working but why bruh
	gamemode.Call("WeaponDeployed", self:GetOwner(), self)
	self.IdleAnimation = CurTime() + self:SequenceDuration()
	return true
end

function SWEP:Reload()
	if self:GetChargePerc() > 0 and self:GetOwner():KeyPressed(IN_RELOAD) then
		self.ChargeSpeed=math.min(self.ChargeSpeed+100, 10000)
		self:SetChargePerc(math.Clamp(self:GetChargePerc()*0.75,1,100))
	else return end
end

function SWEP:HaveAbility()
	if self:GetChargePerc() > 0 then
		self.ChargeSpeed=math.max(self.ChargeSpeed-100, 0)
	else return end
end


function SWEP:OnRemove()
	local owner = self:GetOwner()
	if SERVER and owner.m_EnergyChargeTrail and IsValid(owner.m_EnergyChargeTrail) then
		owner.m_EnergyChargeTrail:Remove()
		owner.m_EnergyChargeTrail = nil
	end
end

function SWEP:Holster()
	local owner = self:GetOwner()
	if SERVER and owner.m_EnergyChargeTrail and IsValid(owner.m_EnergyChargeTrail) then
		owner.m_EnergyChargeTrail:Remove()
		owner.m_EnergyChargeTrail = nil
	end
	return self.BaseClass.Holster(self)
end


function SWEP:PlayHitSound()
	--self:EmitSound("player/metal_pipe.wav")
/*

	local snd = math.Round(math.Rand(1,3))
	if snd == 1 then 
		self:EmitSound("physics/concrete/rock_impact_hard"..math.random(6)..".wav", 75, math.Rand(86, 90))
	elseif snd ==  2 then 
		self:EmitSound("weapons/melee/shovel/shovel_hit-0"..math.random(4)..".ogg")
	else 
		self:EmitSound("Weapon_Crowbar.Melee_HitWorld") 
	end
*/
	return
end
function SWEP:PlaySwingSound()
	return
end
function SWEP:PlayHitFleshSound()
	--self:EmitSound("player/metal_pipe.wav")
	
	/*
	local snd = math.Round(math.Rand(1,3))
	if snd == 1 then 
		self:EmitSound("physics/body/body_medium_break"..math.random(2, 4)..".wav", 75, math.Rand(86, 90))
	elseif snd ==  2 then 
		self:EmitSound("physics/body/body_medium_break"..math.random(2, 4)..".wav")
	else 
		self:EmitSound("Weapon_Crowbar.Melee_Hit")
	end
	*/
	return
end

function SWEP:OnMeleeHit(hitent, hitflesh, tr)
	local ent = tr.Entity
	local edata = EffectData()
		edata:SetEntity(hitent)
		edata:SetMagnitude(2)
		edata:SetScale(1)
		util.Effect("TeslaHitBoxes", edata) 
		edata:SetOrigin(tr.HitPos)
		edata:SetNormal(tr.HitNormal)
		edata:SetMagnitude(1)
		edata:SetScale(1)
		util.Effect("AR2Impact", edata)
		util.Decal("Manhackcut", tr.HitPos + tr.HitNormal, tr.HitPos - tr.HitNormal)
end

function SWEP:PostHitUtil(owner, hitent, dmginfo, tr, vel)
	--if hitent:IsValid() and hitent:IsPlayer() and hitent:WouldDieFrom(dmginfo:GetDamage(), dmginfo:GetDamagePosition()) then
	--	dmginfo:SetDamageType(DMG_DISSOLVE)
	--end
	self.BaseClass.PostHitUtil(self, owner, hitent, dmginfo, tr, vel)
end

function SWEP:PrimaryAttack()
	if self.IsCharing and !self:GetOwner():KeyPressed(IN_ATTACK) and self:GetOwner():GetNextPrimaryFire() <= CurTime() then
		self.BaseClass.PrimaryAttack(self)
		self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	else return false end 
end

function SWEP:Think()
	local curtime = CurTime()
	local owner = self:GetOwner()
	if owner and owner:IsValid() and owner:IsPlayer() and owner:Alive() then
		if self:GetChargePerc() > 0 and !self.IsCharging then
			local toincrease = math.Clamp(self:GetChargePerc()/1000,1,100)
			self:SetChargePerc(math.Clamp(self:GetChargePerc()-toincrease,0,100))
		elseif self:GetChargePerc() < 100 and self.IsCharging then
			local toincrease = math.Clamp(self:GetChargePerc()/1000,1,100)			
			self:SetChargePerc(math.Clamp(self:GetChargePerc()+toincrease,0,100))
		end
		if self:GetChargePerc() > 0 and owner:Crouching() then
			owner:RemoveFlags(FL_DUCKING)
			owner:RemoveFlags(FL_ANIMDUCKING)
			--print("crounching in charge")
		end
		if !self.IsCharging and self:GetChargePerc() <= 0 and !self.PlayingCalmLoop and !self.PlayingActionLoop then 
			self:EmitSound("player/calm_loop_gasgasgas.wav")
			self.PlayingCalmLoop = true
		elseif self.IsCharging and self:GetChargePerc() > 0 and !self.PlayingActionLoop then
			self:EmitSound("player/action_loop_gasgasgas.wav")
			self.PlayingActionLoop = true 
			self.PlayingCalmLoop = false
		end

		local trace = owner:CompensatedMeleeTrace(10, 10)
		trace.HitNormal.z = 0
		if trace.Hit and !trace.HitWorld and trace.Entity:IsValid() and self:GetChargePerc() > 0 then
			
			/*
			if trace.Entity:GetName() == "prop_playergib" then
				trace.Entity:SetCollisionGroup(COLLISION_GROUP_PASSABLE_DOOR)
			end
			*/
			--print("tracehit")
			--print("tracehitent = ", trace.Entity:GetClass())
			local ownervel = owner:GetVelocity()
			local ownerspeed = math.min(ownervel:Length(),self.ChargeSpeed)
			local hitent = trace.Entity
			local hitflesh = trace.MatType == MAT_FLESH or trace.MatType == MAT_BLOODYFLESH or trace.MatType == MAT_ANTLION or trace.MatType == MAT_ALIENFLESH
			local ent = trace.Entity
			if ent and ent:IsPlayer() and self:GetNextPrimaryFire() <= CurTime() then
				local nearest = ent:NearestPoint(trace.StartPos)
				ent:ThrowFromPositionSetZ(nearest, ownerspeed^1.1 * 0.25)
				if SERVER then
					local phys = ent:GetPhysicsObject()
					if ent:GetMoveType() == MOVETYPE_VPHYSICS and phys:IsValid() and phys:IsMoveable() then
						ent:SetPhysicsAttacker(owner)
					end
				end
				self.MeleeDamage = owner:GetVelocity():LengthSqr() + self.MeleeDamage
				self:PrimaryAttack()
				self:OnMeleeHit(ent, hitflesh, trace)
				self:MeleeHitEntity(trace, ent, math.Clamp(ownerspeed/self.ChargeSpeed,0,1))
				self:SetNextPrimaryFire(CurTime() + self.Primary.Delay*2)
				if self.PostOnMeleeHit then self:PostOnMeleeHit(ent, hitflesh, trace) end
				if self.HitAnim then
					self:SendWeaponAnim(self.HitAnim)
				end
				self.IdleAnimation = CurTime() + self:SequenceDuration()
				if hitflesh then
					self:PlayHitFleshSound()
					local damage = self.MeleeDamage
					if SERVER then
						util.Blood(trace.HitPos, math.Rand(damage * 0.25, damage * 0.6), (trace.HitPos - owner:GetShootPos()):GetNormalized(), math.min(400, math.Rand(damage * 6, damage * 12)), true)
					end
					if not self.NoHitSoundFlesh then
						self:PlayHitSound()
					end
				else
					self:PlayHitSound()
				end
				owner:DoAttackEvent()
				self:SendWeaponAnim(self.HitAnim)
			elseif ent and !ent:IsPlayer() then
				if SERVER then
					ent:SetCollisionGroup(COLLISION_GROUP_PASSABLE_DOOR)
					if ent:GetClass() == "prop_playergib" then  
						print("trace.Entity:GetClass() = ", ent:GetClass())
						ent:Remove() 
					end
				end
			end
		elseif trace.Hit and trace.HitWorld and self:GetChargePerc() > 0 then
			self.IsCharging = false
			self:SetChargePerc(0)
			self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
			self:SetNextSecondaryFire(CurTime() + self.Secondary.Delay)
			self:GetOwner():TakeSpecialDamage(5000, DMG_DISSOLVE, self:GetOwner(), self)
			self.PlayingActionLoop = false
			self.PlayingCalmLoop = false
			local effectdata = EffectData()
			effectdata:SetOrigin(self:GetPos())
			--сюда можно звук ломающейся машины добавить
			util.Effect("Explosion", effectdata, true, true)
		end
	else
		if SERVER and owner.m_EnergyChargeTrail and IsValid(owner.m_EnergyChargeTrail) then
			owner.m_EnergyChargeTrail:Remove()
			owner.m_EnergyChargeTrail = nil
		end
	end
	/*if SERVER and self:GetOwner():GetVelocity():LengthSqr() > self.WalkSpeed*self.WalkSpeed then
		--Здесь функция поворота колес и их вращения	
	end*/
	/*
	if CLIENT then
		if self:GetChargePerc() > 0 then
			--музыка при движении абилкой
			--self:GetChargePerc() можно использовать для регулировки громкости музыки
		else 
			--музыка при ходьбе и остановке
		end
	end
	*/
	self.BaseClass.Think(self)
	self:NextThink(curtime)
	return true
end

function SWEP:SecondaryAttack()
	if self:GetOwner():IsHolding() or self:GetOwner():GetBarricadeGhosting() or (!self.IsCharging and self:GetChargePerc() > 0) then 
		self:SetNextSecondaryFire(CurTime() + 0.5)
		return false 
	end
	if self:GetNextSecondaryFire() <= CurTime() and self:GetChargePerc() <= 0 and !self.ChargeStopping and !self.IsCharging then
		self:SetNextSecondaryFire(CurTime() + self.Secondary.Delay)
		self:EmitSound("npc/env_headcrabcanister/incoming.wav", 75, math.Rand(90, 110))
		self:EmitSound("physics/nearmiss/whoosh_large1.wav",75,math.Rand(140, 180),0.7,CHAN_AUTO + 21)
		local owner = self:GetOwner()
		self.ChargeSpeed = 500
		self.IsCharging = true
		if SERVER then
			owner:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
			owner:DoAttackEvent()
			if not (owner.m_EnergyChargeTrail and IsValid(owner.m_EnergyChargeTrail)) then
				local attch = owner:LookupAttachment("hips")
				owner.m_EnergyChargeTrail = util.SpriteTrail(owner, attch, COLOR_CYAN , true, 15, 1, 1, 0.025, "trails/tube" )
			end
			self:SendWeaponAnim( ACT_VM_MISSCENTER )
		end
	elseif self:GetNextSecondaryFire() <= CurTime() and self:GetChargePerc() > 0 then 
		self.PlayingActionLoop = false
		self.IsCharging = false 
		self:GetOwner():SetCollisionGroup(COLLISION_GROUP_PLAYER)
	end 
end

function SWEP:Deploy()
	if self.BaseClass.Deploy then
		self.BaseClass.Deploy(self)
	end
	self:SetChargePerc(0)
	self:SetChargeStart(0)
	self.IsCharging = false
	return true
end

function SWEP:Move(mv)
	if SERVER then
		if self:GetChargePerc() == 0 and !self.IsCharging then
			return
		elseif self:GetChargePerc() > 0 and self.IsCharging then
			local chargeratio = math.Clamp(self:GetChargePerc()/100,0,1)
			local speed = self.ChargeSpeed*chargeratio
			mv:SetForwardSpeed(10000)
			mv:SetSideSpeed(mv:GetSideSpeed() * 0)
			mv:SetMaxSpeed(speed)
			mv:SetMaxClientSpeed(speed)	
		end
	end
end

if not CLIENT then return end
/*
function SWEP:CreateMove(cmd)
	if self.m_LastViewAngles and (self:GetChargeStart() != 0) then
		local perc = self:GetChargePerc()
		local difflimit = 15+512*(1-math.Clamp(perc/100,0,1))
		local maxdiff = FrameTime() * difflimit
		local mindiff = -maxdiff
		local originalangles = self.m_LastViewAngles
		local viewangles = cmd:GetViewAngles()

		local diff = math.AngleDifference(viewangles.yaw, originalangles.yaw)
		if diff > maxdiff or diff < mindiff then
			viewangles.yaw = math.NormalizeAngle(originalangles.yaw + math.Clamp(diff, mindiff, maxdiff))
		end

		self.m_LastViewAngles = viewangles

		cmd:SetViewAngles(viewangles)
	end
end
*/
local texGradDown = surface.GetTextureID("VGUI/gradient_down")
function SWEP:DrawHUD()
	local scrW = ScrW()
	local scrH = ScrH()
	local width = 200
	local height = 30
	local x, y = (ScrW() - width)*0.5, (ScrH() + height)*0.75
	--local ratioAtk = math.max(self:GetNextSecondaryFire()-CurTime(),0) / self.Secondary.Delay
	local ratio = math.Clamp(self:GetChargePerc()/100,0,1)
	if ratio > 0 then
		local color = Color(math.Clamp(self:GetChargePerc()*2.55*2, 0, 255), math.Clamp(2*(255 - self:GetChargePerc()*2.55),0,255),0,180)
		surface.SetDrawColor(5, 5, 5, 180)
		surface.DrawRect(x, y, width, height)
		surface.SetDrawColor(color)
		surface.SetTexture(texGradDown)
		surface.DrawTexturedRect(x, y, width*ratio, height)
		surface.SetDrawColor(255,0,0,180)
		surface.DrawOutlinedRect(x - 1, y - 1, width + 2, height + 2)
		draw.SimpleText("Current Speed: " .. math.floor(self:GetOwner():GetVelocity():Length(),1), "ZSHUDFontSmallest", x, y-height)
		if self.IsCharging and self:GetChargePerc() > 0 then draw.SimpleText("Secondary: Stop uazik", "ZSHUDFontSmallest", x, y-height*2)
		elseif !self.IsCharging and self:GetChargePerc() > 0 then draw.SimpleText("Stopping uazik...", "ZSHUDFontSmallest", x, y-height*2)
		else draw.SimpleText("Secondary: Start uazik", "ZSHUDFontSmallest", x, y-height*2) end
	end
	if self.BaseClass.DrawHUD then
		self.BaseClass.DrawHUD(self)
	end
end


