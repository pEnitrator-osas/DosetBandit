AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_energysword_name"
	SWEP.TranslateDesc = "weapon_energysword_desc"
	SWEP.ViewModelFlip = false
	SWEP.ViewModelFOV = 70

	SWEP.ShowViewModel = false
	SWEP.ShowWorldModel = false

SWEP.VElements = {
	["Blade"] = { type = "Model", model = "models/props_combine/combine_fence01b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-2.967, 1.404, -9.174), angle = Angle(-180, -90, 8.237), size = Vector(0.103, 0.305, 0.156), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["Handle"] = { type = "Model", model = "models/items/combine_rifle_cartridge01.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-0.983, 1.299, -0.692), angle = Angle(0, -11.07, 0), size = Vector(0.913, 0.913, 0.913), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["Handle"] = { type = "Model", model = "models/items/combine_rifle_cartridge01.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.285, 0.587, -0.67), angle = Angle(25.451, -7.106, -12.844), size = Vector(0.47, 0.828, 0.671), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["Blade"] = { type = "Model", model = "models/props_combine/combine_fence01b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.098, 1.679, -7.317), angle = Angle(-6.257, 90.987, 168.966), size = Vector(0.127, 0.127, 0.237), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
end

SWEP.Base = "weapon_zs_basemelee"

SWEP.Stamina = 0

SWEP.CanBlock = false
SWEP.HoldType = "melee2"
SWEP.DamageType = DMG_DISSOLVE
SWEP.FakeDamageType = DMG_SLASH
SWEP.ViewModel = "models/weapons/c_crowbar.mdl"
SWEP.ShowWorldModel = false
SWEP.WorldModel = "models/weapons/w_knife_t.mdl"
SWEP.UseHands = true
SWEP.HitDecal = "Manhackcut"

SWEP.MeleeDamage = 500
SWEP.MeleeRange = 25
SWEP.MeleeSize = 20

SWEP.NextLmao = 0

SWEP.WalkSpeed = SPEED_SLOWEST*0.1

SWEP.Primary.Delay = 0.3
SWEP.Secondary.Delay = 3
SWEP.HitAnim = ACT_VM_MISSCENTER
SWEP.ChargeSpeed = 1000
SWEP.ChargeStoping = false
SWEP.IsCharging = false

function SWEP:SetupDataTables()
	self:NetworkVar("Float", 11, "ChargePerc")
	self:NetworkVar("Float", 12, "ChargeStart")
	if self.BaseClass.SetupDataTables then
		self.BaseClass.SetupDataTables(self)
	end
end

function SWEP:Reload()
	if self:GetChargePerc() > 0 and self:GetOwner():KeyPressed(IN_RELOAD) then
		math.Clamp(self.ChargeSpeed*2, 100, 10000)
		print("Before",self:GetChargePerc())
		self:SetChargePerc(math.Clamp(self:GetChargePerc()*0.75,1,100))
		print("Post",self:GetChargePerc())
	else return end
end

function SWEP:HaveAbility()
	if self:GetChargePerc() > 0 then
		math.Clamp(self.ChargeSpeed/2, 100, self:GetOwner():GetForwardSpeed())
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
	self:EmitSound("ambient/energy/weld"..math.random(2)..".wav", 75, math.random(120,150))
end
function SWEP:PlaySwingSound()
	self:EmitSound("weapons/physcannon/energy_bounce"..math.random(2)..".wav", 75, math.random(80,110))
end
function SWEP:PlayHitFleshSound()
	self:EmitSound("physics/flesh/flesh_bloody_break.wav", 80, math.Rand(90, 100))
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
	if hitent:IsValid() and hitent:IsPlayer() and hitent:WouldDieFrom(dmginfo:GetDamage(), dmginfo:GetDamagePosition())then
		dmginfo:SetDamage(9999999)
		hitent.gibbed = CurTime()
		if gamemode.Call("PlayerShouldTakeDamage", hitent, owner) then hitent:SetHealth(1)	end
	else
		self.IsCharging = false
		self:SetChargePerc(0)
		self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
		self:SetNextSecondaryFire(CurTime() + self.Secondary.Delay)
		self:GetOwner():TakeSpecialDamage(50, DMG_DISSOLVE, self:GetOwner(), self)
		local effectdata = EffectData()
			effectdata:SetOrigin(self:GetPos())
			--сюда можно звук ломающейся машины добавить
		util.Effect("Explosion", effectdata, true, true)
	end
	self.BaseClass.PostHitUtil(self, owner, hitent, dmginfo, tr, vel)
end

function SWEP:PrimaryAttack()
	if self.IsCharing and !self:GetOwner():KeyPressed(IN_ATTACK) and self:GetOwner():GetNextPrimaryFire() <= CurTime() then
		self.BaseClass.PrimaryAttack(self)
		self:SetNextPrimaryFire(CurTime() + self.Primary.Delay*2)
	else return false end 
end

function SWEP:Think()
	local curtime = CurTime()
	local owner = self:GetOwner()
	if owner and owner:IsValid() and owner:IsPlayer() and owner:Alive() then
		if self:GetChargePerc() > 0 and !self.IsCharging then
			local toincrease = math.Clamp(self:GetChargePerc()/100,1,100)
			self:SetChargePerc(math.Clamp(self:GetChargePerc()-toincrease,0,100))
		elseif self:GetChargePerc() < 100 and self.IsCharging then
			local toincrease = math.Clamp(self:GetChargePerc()/1000,1,100)			
			self:SetChargePerc(math.Clamp(self:GetChargePerc()+toincrease,0,100))
		end
		if self:GetChargePerc() > 0 and owner:Crouching() then
			owner:RemoveFlags(FL_DUCKING)
			owner:RemoveFlags(FL_ANIMDUCKING)
			print("crounching in charge")
		end
		local trace = owner:CompensatedMeleeTrace(10, 10)
		trace.HitNormal.z = 0
		if trace.Hit then
			print("tracehit")
			local ownervel = owner:GetVelocity()
			local ownerspeed = math.min(ownervel:Length(),self.ChargeSpeed)
			local hitent = trace.Entity
			local hitflesh = trace.MatType == MAT_FLESH or trace.MatType == MAT_BLOODYFLESH or trace.MatType == MAT_ANTLION or trace.MatType == MAT_ALIENFLESH
			if !trace.HitWorld then
				local ent = trace.Entity
				if ent and ent:IsValid() then
					local nearest = ent:NearestPoint(trace.StartPos)
					ent:ThrowFromPositionSetZ(nearest, ownerspeed^1.1 * 0.25)
					if SERVER then
						local phys = ent:GetPhysicsObject()
						if ent:GetMoveType() == MOVETYPE_VPHYSICS and phys:IsValid() and phys:IsMoveable() then
							ent:SetPhysicsAttacker(owner)
						end
					end
					if self:GetOwner():GetNextPrimaryFire() <= CurTime() then
						self:PrimaryAttack()
						self:OnMeleeHit(ent, hitflesh, trace)
						self:MeleeHitEntity(trace, ent, math.Clamp(ownerspeed/self.ChargeSpeed,0,1))
						if self.PostOnMeleeHit then self:PostOnMeleeHit(ent, hitflesh, trace) end
					end
				end
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
				owner:EmitSound("npc/strider/strider_skewer1.wav")
				owner:DoAttackEvent()
				self:SendWeaponAnim(self.HitAnim)
			elseif self.IsCharging and trace.Hit then 
				self.IsCharging = false
				self:SetChargePerc(0)
				self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
				self:SetNextSecondaryFire(CurTime() + self.Secondary.Delay)
				self:GetOwner():TakeSpecialDamage(50, DMG_DISSOLVE, self:GetOwner(), self)
				local effectdata = EffectData()
					effectdata:SetOrigin(self:GetPos())
					--сюда можно звук ломающейся машины добавить
				util.Effect("Explosion", effectdata, true, true)
			end
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
		self.IsCharging = true
		if SERVER then
			owner:DoAttackEvent()
			if not (owner.m_EnergyChargeTrail and IsValid(owner.m_EnergyChargeTrail)) then
				local attch = owner:LookupAttachment("hips")
				owner.m_EnergyChargeTrail = util.SpriteTrail(owner, attch, COLOR_CYAN , true, 15, 1, 1, 0.025, "trails/tube" )
			end
			self:SendWeaponAnim( ACT_VM_MISSCENTER )
		end
	elseif self:GetNextSecondaryFire() <= CurTime() and self:GetChargePerc() > 0 then self.IsCharging = false end 
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
	if self.BaseClass.Move then
		self.BaseClass.Move(self,mv)
	end
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
		local color = Color(math.Clamp(self:GetChargePerc()*2.55*2, 0, 255), math.Clamp(2*(255 - self.GetChargePerc()*2.55),0,255),0,180)
		surface.SetDrawColor(5, 5, 5, 180)
		surface.DrawRect(x, y, width, height)
		surface.SetDrawColor(color)
		surface.SetTexture(texGradDown)
		surface.DrawTexturedRect(x, y, width*ratio, height)
		surface.SetDrawColor(255,0,0,180)
		surface.DrawOutlinedRect(x - 1, y - 1, width + 2, height + 2)
		draw.SimpleText("Current Speed: " .. math.floor(self:GetOwner():GetVelocity():Length(),1) .. "/" .. self:GetOwner():GetMaxSpeed() , "ZSHUDFontSmallest", x, y-height)
		if self.IsCharging and self:GetChargePerc() > 0 then draw.SimpleText("Secondary: Stop uazik", "ZSHUDFontSmallest", x, y-height*2)
		elseif !self.IsCharging and self:GetChargePerc() > 0 then draw.SimpleText("Stopping uazik...", "ZSHUDFontSmallest", x, y-height*2)
		else draw.SimpleText("Secondary: Start uazik", "ZSHUDFontSmallest", x, y-height*2) end
	end
	if self.BaseClass.DrawHUD then
		self.BaseClass.DrawHUD(self)
	end
end