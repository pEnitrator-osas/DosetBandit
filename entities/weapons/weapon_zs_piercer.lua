AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_piercer_name"
	SWEP.TranslateDesc = "weapon_piercer_desc"
	SWEP.ViewModelFOV = 70
	SWEP.ViewModelFlip = false

	SWEP.ShowViewModel = false
	SWEP.ShowWorldModel = false

	SWEP.ViewModelBoneMods = {
		["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(11.178, -0.892, -16.118), angle = Angle(180, -97.551, 59.403) }
	}	

	SWEP.SCKMaterials = {"concrete/concreteceiling001a", "de_chateau/tapd", "cs_italy/steel", "de_chateau/brickjflr",}

	SWEP.VElements = {
		["Alternative1"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Handle+++", pos = Vector(0, -1.641, 13.695), angle = Angle(90, 90, 180), size = Vector(0.03, 0.03, 0.08), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "concrete/concreteceiling001a", skin = 0, bodygroup = {} },
		["Alternative1+"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Handle+++", pos = Vector(0, 1.641, 13.695), angle = Angle(90, 90, 0), size = Vector(0.03, 0.03, 0.08), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "concrete/concreteceiling001a", skin = 0, bodygroup = {} },
		["Blade"] = { type = "Model", model = "models/props_wasteland/cafeteria_table001a_chunk06.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Handle+++", pos = Vector(8.973, -3.665, -16.924), angle = Angle(0, -90, 90), size = Vector(0.3, 0.5, 0.6), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "de_chateau/tapd", skin = 0, bodygroup = {} },
		["Blade++"] = { type = "Model", model = "models/props_wasteland/cafeteria_table001a_chunk06.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Handle+++", pos = Vector(-8.973, 3.589, -16.923), angle = Angle(0, 90, 90), size = Vector(0.3, 0.5, 0.6), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "de_chateau/tapd", skin = 0, bodygroup = {} },
		["Blade_low"] = { type = "Model", model = "models/props_wasteland/cafeteria_table001a_chunk04.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Blade", pos = Vector(-0.21, -21.112, 1.991), angle = Angle(0, 180, 7), size = Vector(0.1, 0.17, 0.48), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "de_chateau/tapd", skin = 0, bodygroup = {} },
		["Blade_low++"] = { type = "Model", model = "models/props_wasteland/cafeteria_table001a_chunk04.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Blade++", pos = Vector(-0.21, -21.112, 1.991), angle = Angle(0, 180, 7), size = Vector(0.1, 0.17, 0.48), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "de_chateau/tapd", skin = 0, bodygroup = {} },
		["Cubik"] = { type = "Model", model = "models/hunter/blocks/cube1x1x1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Handle+++", pos = Vector(0, -0.05, 5.923), angle = Angle(0, 0, 0), size = Vector(0.039, 0.037, 0.25), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "cs_italy/steel", skin = 0, bodygroup = {} },
		["Handle"] = { type = "Model", model = "models/props_c17/column02a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.96, 1.454, -11.444), angle = Angle(0, 45, 0), size = Vector(0.022, 0.022, 0.03), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["Handle+"] = { type = "Model", model = "models/props_c17/column02a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Handle", pos = Vector(0, 0, 39.157), angle = Angle(0, -180, -180), size = Vector(0.021, 0.021, 0.029), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["Handle++"] = { type = "Model", model = "models/hunter/misc/squarecap1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Handle", pos = Vector(0, 0, -9.418), angle = Angle(0, -180, 180), size = Vector(0.062, 0.062, 0.3), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "cs_italy/steel", skin = 0, bodygroup = {} },
		["Handle+++"] = { type = "Model", model = "models/props_c17/support01.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Handle", pos = Vector(0, 0, -14.36), angle = Angle(0, -135, 0), size = Vector(0.056, 0.055, 0.05), color = Color(140, 140, 140, 0), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["Handle_low"] = { type = "Model", model = "models/props_trainstation/trainstation_ornament001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Handle+++", pos = Vector(0, -0.039, 8.002), angle = Angle(0, -90, -180), size = Vector(0.074, 0.073, 0.1), color = Color(255, 255, 255, 0), surpresslightning = false, bonemerge = false, material = "de_chateau/brickjflr", skin = 0, bodygroup = {} },
		["Handle_low+"] = { type = "Model", model = "models/props_rooftop/dome004.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Handle+", pos = Vector(0, 0, -2.265), angle = Angle(0, 180, 180), size = Vector(0.015, 0.015, 0.015), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["Head"] = { type = "Model", model = "models/props_c17/concrete_barrier001a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Handle+++", pos = Vector(0.016, -0.045, 0), angle = Angle(0, 90, 180), size = Vector(0.092, 0.016, 0.22), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "cs_italy/steel", skin = 1, bodygroup = {} },
		["Right_Handle"] = { type = "Model", model = "models/props_wasteland/medbridge_post01.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Handle+++", pos = Vector(0.015, 2.965, 14.235), angle = Angle(0, 0, 42), size = Vector(0.042, 0.049, 0.04), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "concrete/concreteceiling001a", skin = 0, bodygroup = {} },
		["Right_Handle+"] = { type = "Model", model = "models/props_wasteland/medbridge_post01.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Handle+++", pos = Vector(0.015, -2.965, 14.235), angle = Angle(0, 0, -43), size = Vector(0.042, 0.049, 0.04), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "concrete/concreteceiling001a", skin = 0, bodygroup = {} }
	}
	

	SWEP.WElements = {
		["Alternative1"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Handle+++", pos = Vector(0, -1.641, 13.695), angle = Angle(90, 90, 180), size = Vector(0.03, 0.03, 0.08), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "concrete/concreteceiling001a", skin = 0, bodygroup = {} },
		["Alternative1+"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Handle+++", pos = Vector(0, 1.641, 13.695), angle = Angle(90, 90, 0), size = Vector(0.03, 0.03, 0.08), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "concrete/concreteceiling001a", skin = 0, bodygroup = {} },
		["Blade"] = { type = "Model", model = "models/props_wasteland/cafeteria_table001a_chunk06.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Handle+++", pos = Vector(8.973, -3.665, -16.924), angle = Angle(0, -90, 90), size = Vector(0.3, 0.5, 0.6), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "de_chateau/tapd", skin = 0, bodygroup = {} },
		["Blade++"] = { type = "Model", model = "models/props_wasteland/cafeteria_table001a_chunk06.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Handle+++", pos = Vector(-8.973, 3.589, -16.923), angle = Angle(0, 90, 90), size = Vector(0.3, 0.5, 0.6), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "de_chateau/tapd", skin = 0, bodygroup = {} },
		["Blade_low"] = { type = "Model", model = "models/props_wasteland/cafeteria_table001a_chunk04.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Blade", pos = Vector(-0.21, -21.112, 1.991), angle = Angle(0, 180, 7), size = Vector(0.1, 0.17, 0.48), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "de_chateau/tapd", skin = 0, bodygroup = {} },
		["Blade_low++"] = { type = "Model", model = "models/props_wasteland/cafeteria_table001a_chunk04.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Blade++", pos = Vector(-0.21, -21.112, 1.991), angle = Angle(0, 180, 7), size = Vector(0.1, 0.17, 0.48), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "de_chateau/tapd", skin = 0, bodygroup = {} },
		["Cubik"] = { type = "Model", model = "models/hunter/blocks/cube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Handle+++", pos = Vector(0, -0.05, 5.923), angle = Angle(0, 0, 0), size = Vector(0.039, 0.037, 0.25), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "cs_italy/steel", skin = 0, bodygroup = {} },
		["Handle"] = { type = "Model", model = "models/props_c17/column02a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.96, 1.454, -11.444), angle = Angle(0, 45, 0), size = Vector(0.022, 0.022, 0.03), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["Handle+"] = { type = "Model", model = "models/props_c17/column02a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Handle", pos = Vector(0, 0, 39.157), angle = Angle(0, -180, -180), size = Vector(0.021, 0.021, 0.029), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["Handle++"] = { type = "Model", model = "models/hunter/misc/squarecap1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Handle", pos = Vector(0, 0, -9.418), angle = Angle(0, -180, 180), size = Vector(0.062, 0.062, 0.3), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "cs_italy/steel", skin = 0, bodygroup = {} },
		["Handle+++"] = { type = "Model", model = "models/props_c17/support01.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Handle", pos = Vector(0, 0, -14.36), angle = Angle(0, -135, 0), size = Vector(0.056, 0.055, 0.05), color = Color(140, 140, 140, 0), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["Handle_low"] = { type = "Model", model = "models/props_trainstation/trainstation_ornament001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Handle+++", pos = Vector(0, -0.039, 8.002), angle = Angle(0, -90, -180), size = Vector(0.074, 0.073, 0.1), color = Color(255, 255, 255, 0), surpresslightning = false, bonemerge = false, material = "de_chateau/brickjflr", skin = 0, bodygroup = {} },
		["Handle_low+"] = { type = "Model", model = "models/props_rooftop/dome004.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Handle+", pos = Vector(0, 0, -2.265), angle = Angle(0, 180, 180), size = Vector(0.015, 0.015, 0.015), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["Head"] = { type = "Model", model = "models/props_c17/concrete_barrier001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Handle+++", pos = Vector(0.016, -0.045, 0), angle = Angle(0, 90, 180), size = Vector(0.092, 0.016, 0.22), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "cs_italy/steel", skin = 1, bodygroup = {} },
		["Right_Handle"] = { type = "Model", model = "models/props_wasteland/medbridge_post01.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Handle+++", pos = Vector(0.015, 2.965, 14.235), angle = Angle(0, 0, 42), size = Vector(0.042, 0.049, 0.04), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "concrete/concreteceiling001a", skin = 0, bodygroup = {} },
		["Right_Handle+"] = { type = "Model", model = "models/props_wasteland/medbridge_post01.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Handle+++", pos = Vector(0.015, -2.965, 14.235), angle = Angle(0, 0, -43), size = Vector(0.042, 0.049, 0.04), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "concrete/concreteceiling001a", skin = 0, bodygroup = {} }
	}
end


SWEP.Base = "weapon_zs_basemelee"

SWEP.HoldType = "knife"
SWEP.DamageType = DMG_SLASH
SWEP.ViewModel = "models/weapons/c_crowbar.mdl"
SWEP.WorldModel = "models/weapons/w_crowbar.mdl"
SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false
SWEP.UseHands = true
SWEP.HitDecal = "Manhackcut"

SWEP.NextLmao = 0

SWEP.MeleeDamage = 50
SWEP.MeleeRange = 100
SWEP.MeleeSize = 8
SWEP.DefaultDamage = SWEP.MeleeDamage
SWEP.DefaultRange = SWEP.MeleeRange

SWEP.Stamina = 28

SWEP.WalkSpeed = SPEED_NORMAL*0.85	

SWEP.Primary.Delay = 1.8
SWEP.SwingTime = 0.5

SWEP.HitGesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE
SWEP.MissGesture = SWEP.HitGesture
SWEP.HitAnim = ACT_VM_MISSCENTER
SWEP.MissAnim = ACT_VM_MISSCENTER

SWEP.SwingHoldType = "melee"

SWEP.ChargeSound = "player/suit_sprint.wav"
SWEP.LastCharge = 0
SWEP.ChargeDelay = 2

function SWEP:SetupDataTables()
	self:NetworkVar("Float", 5, "ChargePerc")
	self:NetworkVar("Bool", 5, "IsCharging")
	if self.BaseClass.SetupDataTables then
		self.BaseClass.SetupDataTables(self)
	end
end
function SWEP:Deploy()
	if self.BaseClass.Deploy then
		self.BaseClass.Deploy(self)
	end
	self:SetChargePerc(0)
	self:SetIsCharging(false)
	return true
end

function SWEP:Reload()
	if not self.BlockMode and self.NextLmao <= CurTime() and !self:GetIsCharging() then
	    self.BlockMode = true
		self.NextLmao = CurTime() + 0.5
		self:SetChargePerc(0)
		self:SetIsCharging(false)
	elseif self.BlockMode and self.NextLmao <= CurTime() and !self:GetBlock() then
		self.BlockMode = nil
		self.NextLmao = CurTime() + 0.5
	end
end

function SWEP:PrimaryAttack()
	if self:GetChargePerc() > 0 then self:SetNextPrimaryFire(CurTime() + self.Primary.Delay) end
	self.BaseClass.PrimaryAttack(self)
end

function SWEP:SecondaryAttack()
	if self:GetNextSecondaryFire() <= CurTime() and not self:GetOwner():IsHolding() and not self:GetIsCharging() then
		if not self.BlockMode then
			self:SetNextSecondaryFire(CurTime() + self.ChargeDelay)
			if not self:GetIsCharging() then
				self:SetIsCharging(true)
			end
		else
			self.BaseClass.SecondaryAttack(self)
		end
	end
end

function SWEP:PlaySwingSound()
	self:EmitSound("weapons/iceaxe/iceaxe_swing1.wav", 75, math.random(65, 85))
end

function SWEP:PlayHitSound()
	self:EmitSound("ambient/machines/slicer"..math.random(4)..".wav", 75)
end

function SWEP:PlayHitFleshSound()
	self:EmitSound("physics/flesh/flesh_bloody_break.wav", 80, math.Rand(90, 100))
end

function SWEP:MeleeSwing()
	local owner = self:GetOwner()
	if !owner:IsOnGround() then
		self.MeleeDamage = self.DefaultDamage * ((owner:GetVelocity():Length() - self.WalkSpeed)/500 + 1)
		self.MeleeRange = self.DefaultRange * 1.5
	else
		self.MeleeDamage = self.DefaultDamage
		self.MeleeRange = self.DefaultRange
	end
	self.BaseClass.MeleeSwing(self)
end

function SWEP:PostHitUtil(owner, hitent, dmginfo, tr, vel)
	if owner:GetVelocity():LengthSqr() > 1000000 and !owner:IsOnGround() and hitent:IsPlayer() and hitent:WouldDieFrom(dmginfo:GetDamage(), dmginfo:GetDamagePosition())then

		if hitent:IsValid() and hitent:IsPlayer() then
			dmginfo:SetDamage(999)
			hitent.gibbed = CurTime()
		end

		if gamemode.Call("PlayerShouldTakeDamage", hitent, owner) then hitent:SetHealth(1)	end
	end
	self.BaseClass.PostHitUtil(self, owner, hitent, dmginfo, tr, vel)
end	


function SWEP:Think()
	local owner = self:GetOwner()
	if not self.BlockMode and self:GetIsCharging() then
		if owner:KeyReleased(IN_ATTACK2) or owner:GetBarricadeGhosting() then
			if not owner:GetBarricadeGhosting() then
				self:EmitSound("npc/combine_soldier/gear"..math.random(1,6)..".wav", 80, math.Rand(120, 140),1,CHAN_AUTO+20)
				self:EmitSound("physics/nearmiss/whoosh_large1.wav", 75, math.Rand(140, 180),1,CHAN_AUTO+21)
				if SERVER then
					local pushMult = 1
					local pushPower = 750
					if self:GetChargePerc() >= 1 then pushMult = 1.5 end
					local fwd = pushPower * pushMult * math.Clamp(self:GetChargePerc(),0,1)
					self:SendWeaponAnim(self.MissAnim)
					owner:DoAttackEvent()
					local pushvel = self:GetOwner():GetEyeTrace().Normal * fwd + (self:GetOwner():GetAngles():Up()*100)
					self:GetOwner():SetGroundEntity(nil)
					self:GetOwner():SetLocalVelocity( self:GetOwner():GetVelocity() + pushvel)
					local ownerplayer = self:GetOwner()
				end
			end
			self:SetChargePerc(0)
			self:SetIsCharging(false)
			self:SetNextPrimaryFire(CurTime())
			self:SetNextSecondaryFire(CurTime() + self.ChargeDelay/2)
		elseif self:GetChargePerc() < 1 then
			if self.LastCharge <= CurTime() then
				self:SetChargePerc(math.Clamp(self:GetChargePerc() + 0.015, 0, 1))
				self:EmitSound(self.ChargeSound, 65, 60+70*self:GetChargePerc(), 0.4, CHAN_WEAPON)
				self.LastCharge = CurTime() + 0.08
			end	
		end
	end
	self.BaseClass.Think(self)
end

function SWEP:Move(mv)
	if self.BaseClass.Move then
		self.BaseClass.Move(self,mv)
	end
	if self:GetIsCharging() and mv:KeyDown(IN_ATTACK2) and not self:GetOwner():GetBarricadeGhosting() then
		mv:SetMaxSpeed(self.WalkSpeed*0.5)
		mv:SetMaxClientSpeed(self.WalkSpeed*0.5)	
		mv:SetSideSpeed(mv:GetSideSpeed() * 0.5)
	end
end

if CLIENT then
	local texGradDown = surface.GetTextureID("VGUI/gradient_down")
	function SWEP:DrawHUD()
		local scrW = ScrW()
		local scrH = ScrH()
		local width = 200
		local height = 30
		local x, y = (ScrW()- width)*0.5 , (ScrH() - height)*0.75
		local ratio = math.Clamp(self:GetChargePerc(), 0, 1)
		if ratio > 0 then
			surface.SetDrawColor(5, 5, 5, 180)
			surface.DrawRect(x, y, width, height)
			if ratio == 1 then surface.SetDrawColor(255, 255, 0, 180)
			else surface.SetDrawColor(255, 0, 0, 180) end
			surface.SetTexture(texGradDown)
			surface.DrawTexturedRect(x, y, width*ratio, height)
			surface.SetDrawColor(255, 0, 0, 180)
			surface.DrawOutlinedRect(x - 1, y - 1, width + 2, height + 2) 
		end
		if not self:GetBlock() and not self.BlockMode then
			draw.SimpleText("Secondary: Leap", "ZSHUDFontSmallest", x + 25, y - height)
		else 
			draw.SimpleText("Secondary: Block", "ZSHUDFontSmallest", x + 25, y - height)
		end
		if self.BaseClass.DrawHUD then
			self.BaseClass.DrawHUD(self)
		end
	end
end