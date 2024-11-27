AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_sucker_name"
	SWEP.TranslateDesc = "weapon_sucker_desc"
	SWEP.ViewModelFlip = false
	SWEP.ViewModelFOV = 70

	SWEP.ShowViewModel = false
	SWEP.ShowWorldModel = false

	SWEP.ViewModelBoneMods = {
        ["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(-1.828, -6.52, 1.943), angle = Angle(6.224, 0, 0) },
        ["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, -30, 30), angle = Angle(0, 0, 0) }
    }
    
    SWEP.SCKMaterials = {"nature/infskybox02",}
    
    SWEP.IronSightsPos = Vector(0, 0, 0)
    SWEP.IronSightsAng = Vector(0, 0, 0)
    
    SWEP.VElements = {
        ["Blade_Core"] = { type = "Model", model = "models/props_debris/concrete_column001a_chunk01.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Handle", pos = Vector(-0.771, -0.725, 19.982), angle = Angle(180, 120, 0), size = Vector(0.1, 0.1, 0.3), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
        ["Blade_Core_Wires"] = { type = "Model", model = "models/props_debris/rebar_cluster001a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Blade_Core", pos = Vector(0, 0, 11.425), angle = Angle(148.022, 83.383, -35.245), size = Vector(0.1, 0.1, 0.1), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
        ["Blade_Core_Wires+"] = { type = "Model", model = "models/props_debris/rebar_cluster001b.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Blade_Core", pos = Vector(-0.012, 1.478, 3.245), angle = Angle(13.44, 57.568, 11.263), size = Vector(0.1, 0.1, 0.13), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
        ["Blade_Core_Wires++"] = { type = "Model", model = "models/props_debris/rebar002d_96.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Blade_Core", pos = Vector(-0.096, 0.64, -4.165), angle = Angle(0, 0, 180), size = Vector(0.07, 0.07, 0.07), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
        ["Blade_Core_Wires+++"] = { type = "Model", model = "models/props_debris/rebar003b_48.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Blade_Core", pos = Vector(0.023, 0.224, -9.315), angle = Angle(9.857, -140.289, -174.56599), size = Vector(0.1, 0.1, 0.2), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
        ["Blood_Crystals"] = { type = "Model", model = "models/props_wasteland/prison_toiletchunk01m.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Handle", pos = Vector(-1.986, 0.117, 12.364), angle = Angle(100, 0, 90), size = Vector(2.5, 1, 0.2), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "nature/infskybox02", skin = 0, bodygroup = {} },
        ["Blood_Crystas_onblade"] = { type = "Model", model = "models/props_wasteland/rockcliff01e.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Blade_Core", pos = Vector(0.755, 1.201, 14.189), angle = Angle(59.885, -112.052, -180), size = Vector(0.02, 0.02, 0.02), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/skeleton/skeleton_bloody", skin = 0, bodygroup = {} },
        ["Blood_Crystas_onblade+"] = { type = "Model", model = "models/props_wasteland/rockcliff01e.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Blade_Core", pos = Vector(1.102, 0.566, 12.985), angle = Angle(27.77, 42.23, -180), size = Vector(0.02, 0.02, 0.02), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/skeleton/skeleton_bloody", skin = 0, bodygroup = {} },
        ["Blood_Crystas_onblade++"] = { type = "Model", model = "models/props_wasteland/rockcliff01e.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Blade_Core", pos = Vector(0.704, 1.227, 5.577), angle = Angle(139.60201, 42.23, -180), size = Vector(0.02, 0.02, 0.025), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/skeleton/skeleton_bloody", skin = 0, bodygroup = {} },
        ["Blood_Crystas_onblade+++"] = { type = "Model", model = "models/props_wasteland/rockcliff01e.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Blade_Core", pos = Vector(0.704, 1.227, 5.577), angle = Angle(180, 21.893, -180), size = Vector(0.02, 0.02, 0.025), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/skeleton/skeleton_bloody", skin = 0, bodygroup = {} },
        ["Blood_Crystas_onblade++++"] = { type = "Model", model = "models/props_wasteland/rockcliff01e.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Blade_Core", pos = Vector(0.939, 1.393, 2.945), angle = Angle(180, -10.667, -37.743), size = Vector(0.02, 0.015, 0.035), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/skeleton/skeleton_bloody", skin = 0, bodygroup = {} },
        ["Blood_Crystas_onblade+++++"] = { type = "Model", model = "models/props_wasteland/rockcliff01e.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Blade_Core", pos = Vector(0.41, 1.043, 12.152), angle = Angle(180, -11.734, 26.938), size = Vector(0.02, 0.02, 0.03), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/skeleton/skeleton_bloody", skin = 0, bodygroup = {} },
        ["Blood_Crystas_onblade++++++"] = { type = "Model", model = "models/props_wasteland/rockcliff01e.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Blade_Core", pos = Vector(0.93, -0.176, -8.114), angle = Angle(65.899, 77.6, -37.743), size = Vector(0.02, 0.02, 0.03), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/skeleton/skeleton_bloody", skin = 0, bodygroup = {} },
        ["Blood_Crystas_onblade+++++++"] = { type = "Model", model = "models/props_wasteland/rockcliff01e.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Blade_Core", pos = Vector(0.93, -0.176, -8.114), angle = Angle(19.948, 42.124, -37.743), size = Vector(0.02, 0.02, 0.03), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/skeleton/skeleton_bloody", skin = 0, bodygroup = {} },
        ["Blood_Crystas_onblade++++++++"] = { type = "Model", model = "models/props_wasteland/rockcliff01e.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Blade_Core", pos = Vector(0.93, -0.176, -8.114), angle = Angle(19.948, 56.419, -84.452), size = Vector(0.02, 0.02, 0.035), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/skeleton/skeleton_bloody", skin = 0, bodygroup = {} },
        ["Blood_Crystas_onblade+++++++++"] = { type = "Model", model = "models/props_wasteland/rockcliff01e.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Blade_Core", pos = Vector(0.93, 1.446, 4.77), angle = Angle(19.948, 74.673, -78.384), size = Vector(0.015, 0.015, 0.035), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/skeleton/skeleton_bloody", skin = 0, bodygroup = {} },
        ["Blood_Crystas_onblade++++++++++"] = { type = "Model", model = "models/props_wasteland/rockcliff01e.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Blade_Core", pos = Vector(0.492, -1.349, 13.677), angle = Angle(38.428, 89.52, -180), size = Vector(0.01, 0.02, 0.025), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/skeleton/skeleton_bloody", skin = 0, bodygroup = {} },
        ["Blood_Crystas_onblade+++++++++++"] = { type = "Model", model = "models/props_wasteland/rockcliff01e.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Blade_Core", pos = Vector(-0.501, -0.326, 13.214), angle = Angle(17.223, 156.939, 20.006), size = Vector(0.01, 0.02, 0.025), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/skeleton/skeleton_bloody", skin = 0, bodygroup = {} },
        ["Garde"] = { type = "Model", model = "models/props_c17/pillarcluster_001d.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Handle", pos = Vector(3.37, -1.062, 2.829), angle = Angle(-150, 180, -90), size = Vector(0.06, 0.035, 0.093), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
        ["Handle"] = { type = "Model", model = "models/props_c17/pillarcluster_001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.506, 0.982, 0), angle = Angle(5.645, -10.788, 180), size = Vector(0.03, 0.05, 0.07), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
        ["LOW_end"] = { type = "Model", model = "models/props_c17/pillarcluster_001c.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Handle", pos = Vector(-1, 0.097, -10.82), angle = Angle(0, 0, 180), size = Vector(0.03, 0.045, 0.04), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} }
    }
    
    SWEP.WElements = {
        ["Blade_Core"] = { type = "Model", model = "models/props_debris/concrete_column001a_chunk01.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Handle", pos = Vector(-0.771, -0.725, 19.982), angle = Angle(180, 120, 0), size = Vector(0.1, 0.1, 0.3), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
        ["Blade_Core_Wires"] = { type = "Model", model = "models/props_debris/rebar_cluster001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Blade_Core", pos = Vector(0, 0, 11.425), angle = Angle(148.022, 83.383, -35.245), size = Vector(0.1, 0.1, 0.1), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
        ["Blade_Core_Wires+"] = { type = "Model", model = "models/props_debris/rebar_cluster001b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Blade_Core", pos = Vector(-0.012, 1.478, 3.245), angle = Angle(13.44, 57.568, 11.263), size = Vector(0.1, 0.1, 0.13), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
        ["Blade_Core_Wires++"] = { type = "Model", model = "models/props_debris/rebar002d_96.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Blade_Core", pos = Vector(-0.096, 0.64, -4.165), angle = Angle(0, 0, 180), size = Vector(0.07, 0.07, 0.07), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
        ["Blade_Core_Wires+++"] = { type = "Model", model = "models/props_debris/rebar003b_48.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Blade_Core", pos = Vector(0.023, 0.224, -9.315), angle = Angle(9.857, -140.289, -174.56599), size = Vector(0.1, 0.1, 0.2), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
        ["Blood_Crystals"] = { type = "Model", model = "models/props_wasteland/prison_toiletchunk01m.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Handle", pos = Vector(-1.986, 0.117, 12.364), angle = Angle(100, 0, 90), size = Vector(2.5, 1, 0.2), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "nature/infskybox02", skin = 0, bodygroup = {} },
        ["Blood_Crystas_onblade"] = { type = "Model", model = "models/props_wasteland/rockcliff01e.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Blade_Core", pos = Vector(0.755, 1.201, 14.189), angle = Angle(59.885, -112.052, -180), size = Vector(0.02, 0.02, 0.02), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/skeleton/skeleton_bloody", skin = 0, bodygroup = {} },
        ["Blood_Crystas_onblade+"] = { type = "Model", model = "models/props_wasteland/rockcliff01e.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Blade_Core", pos = Vector(1.102, 0.566, 12.985), angle = Angle(27.77, 42.23, -180), size = Vector(0.02, 0.02, 0.02), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/skeleton/skeleton_bloody", skin = 0, bodygroup = {} },
        ["Blood_Crystas_onblade++"] = { type = "Model", model = "models/props_wasteland/rockcliff01e.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Blade_Core", pos = Vector(0.704, 1.227, 5.577), angle = Angle(139.60201, 42.23, -180), size = Vector(0.02, 0.02, 0.025), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/skeleton/skeleton_bloody", skin = 0, bodygroup = {} },
        ["Blood_Crystas_onblade+++"] = { type = "Model", model = "models/props_wasteland/rockcliff01e.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Blade_Core", pos = Vector(0.704, 1.227, 5.577), angle = Angle(180, 21.893, -180), size = Vector(0.02, 0.02, 0.025), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/skeleton/skeleton_bloody", skin = 0, bodygroup = {} },
        ["Blood_Crystas_onblade++++"] = { type = "Model", model = "models/props_wasteland/rockcliff01e.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Blade_Core", pos = Vector(0.939, 1.393, 2.945), angle = Angle(180, -10.667, -37.743), size = Vector(0.02, 0.015, 0.035), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/skeleton/skeleton_bloody", skin = 0, bodygroup = {} },
        ["Blood_Crystas_onblade+++++"] = { type = "Model", model = "models/props_wasteland/rockcliff01e.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Blade_Core", pos = Vector(0.41, 1.043, 12.152), angle = Angle(180, -11.734, 26.938), size = Vector(0.02, 0.02, 0.03), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/skeleton/skeleton_bloody", skin = 0, bodygroup = {} },
        ["Blood_Crystas_onblade++++++"] = { type = "Model", model = "models/props_wasteland/rockcliff01e.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Blade_Core", pos = Vector(0.93, -0.176, -8.114), angle = Angle(65.899, 77.6, -37.743), size = Vector(0.02, 0.02, 0.03), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/skeleton/skeleton_bloody", skin = 0, bodygroup = {} },
        ["Blood_Crystas_onblade+++++++"] = { type = "Model", model = "models/props_wasteland/rockcliff01e.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Blade_Core", pos = Vector(0.93, -0.176, -8.114), angle = Angle(19.948, 42.124, -37.743), size = Vector(0.02, 0.02, 0.03), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/skeleton/skeleton_bloody", skin = 0, bodygroup = {} },
        ["Blood_Crystas_onblade++++++++"] = { type = "Model", model = "models/props_wasteland/rockcliff01e.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Blade_Core", pos = Vector(0.93, -0.176, -8.114), angle = Angle(19.948, 56.419, -84.452), size = Vector(0.02, 0.02, 0.035), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/skeleton/skeleton_bloody", skin = 0, bodygroup = {} },
        ["Blood_Crystas_onblade+++++++++"] = { type = "Model", model = "models/props_wasteland/rockcliff01e.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Blade_Core", pos = Vector(0.93, 1.446, 4.77), angle = Angle(19.948, 74.673, -78.384), size = Vector(0.015, 0.015, 0.035), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/skeleton/skeleton_bloody", skin = 0, bodygroup = {} },
        ["Blood_Crystas_onblade++++++++++"] = { type = "Model", model = "models/props_wasteland/rockcliff01e.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Blade_Core", pos = Vector(0.492, -1.349, 13.677), angle = Angle(38.428, 89.52, -180), size = Vector(0.01, 0.02, 0.025), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/skeleton/skeleton_bloody", skin = 0, bodygroup = {} },
        ["Blood_Crystas_onblade+++++++++++"] = { type = "Model", model = "models/props_wasteland/rockcliff01e.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Blade_Core", pos = Vector(-0.501, -0.326, 13.214), angle = Angle(17.223, 156.939, 20.006), size = Vector(0.01, 0.02, 0.025), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/skeleton/skeleton_bloody", skin = 0, bodygroup = {} },
        ["Garde"] = { type = "Model", model = "models/props_c17/pillarcluster_001d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Handle", pos = Vector(3.37, -1.062, 2.829), angle = Angle(-150, 180, -90), size = Vector(0.06, 0.035, 0.093), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
        ["Handle"] = { type = "Model", model = "models/props_c17/pillarcluster_001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.506, 0.982, 0), angle = Angle(-4.421, -10.788, 180), size = Vector(0.03, 0.05, 0.07), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
        ["LOW_end"] = { type = "Model", model = "models/props_c17/pillarcluster_001c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Handle", pos = Vector(-1, 0.097, -10.82), angle = Angle(0, 0, 180), size = Vector(0.03, 0.045, 0.04), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} }
    }
    
end


SWEP.Base = "weapon_zs_basemelee"


function SWEP:PlaySwingSound()
	self:EmitSound("weapons/iceaxe/iceaxe_swing1.wav", 75, math.random(95, 105))
end

function SWEP:PlayHitFleshSound()
	self:EmitSound("physics/body/body_medium_break"..math.random(2, 4)..".wav", 75, math.random(120, 130))
end

function SWEP:PlayHitSound()
	self:EmitSound("physics/metal/metal_sheet_impact_bullet"..math.random(2)..".wav")
end

SWEP.HoldType = "melee2"
SWEP.DamageType = DMG_SLASH
SWEP.ViewModel = "models/weapons/c_crowbar.mdl"
SWEP.WorldModel = "models/weapons/w_crowbar.mdl"
SWEP.ShowWorldModel = false
SWEP.ShowViewModel = false
SWEP.UseHands = true
SWEP.HitDecal = "Manhackcut"

SWEP.MeleeDamage = 60
SWEP.MeleeRange = 60
SWEP.MeleeSize = 2

SWEP.Tier = 4
SWEP.AllowQualityWeapons = true

SWEP.Stamina = 37

SWEP.WalkSpeed = 195

SWEP.Primary.Delay = 1.5
SWEP.HitAnim = ACT_VM_MISSCENTER
SWEP.MissAnim = ACT_VM_MISSCENTER

SWEP.SwingTime = 0.8
SWEP.SwingRotation = Angle(0, -20, -40)
SWEP.SwingOffset = Vector(10, 0, 0)
SWEP.SwingHoldType = "melee"

SWEP.HealFromBleed = true
SWEP.OverHeal = 200
SWEP.LastCharge = 0
SWEP.ChargeDelay = 1
SWEP.NextLmao = 0
SWEP.NextAbilityUse = 0
SWEP.BlockMode = true
SWEP.DrawHud = true --в будущем мб добавить возможность оффнуть худ оружия


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
		self.BlockMode = false
		self.NextLmao = CurTime() + 0.5
	end
end

function SWEP:SecondaryAttack() 
    if self:GetNextSecondaryFire() <= CurTime() and not self:GetOwner():IsHolding() then
        if !self.BlockMode and self.NextAbilityUse <= CurTime() and self.NextLmao <= CurTime() then
            if not self:GetIsCharging() and GAMEMODE:GetWaveActive() then
                self:SetIsCharging(true)
                self.NextAbilityUse = CurTime() + 25
            end
        elseif self.BlockMode then
            self.BaseClass.SecondaryAttack(self) 
        end
    end
end

function SWEP:Think() 
    if self:GetIsCharging() then
        if self.LastCharge + self.ChargeDelay <= CurTime() and self:GetChargePerc() < 100 then
            self:SetChargePerc(self:GetChargePerc() + 10)
            self.LastCharge = CurTime()
            local bleed = self:GetOwner():GetStatus("bleed")
            local modif = 10
            local owner = self:GetOwner()
            if bleed and bleed:IsValid() and bleed:GetDamage() >= 10 then 
                bleed:AddDamage(-10)
            else 
                owner:TakeSpecialDamage(modif, DMG_SLASH, self, self) 
            end
            if SERVER then
                if owner:GetBloodArmor() < 100 and owner:Alive() then
                    owner:SetBloodArmor(math.min(owner:GetBloodArmor() + modif, 100))
                end
            end
        elseif self:GetChargePerc() >= 100 then
            self:SetIsCharging(false)
            self:SetChargePerc(0)
        end
    end
    self.BaseClass.Think(self)
end

function SWEP:PlayerHitUtil(owner, damage, hitent, dmginfo)
    if dmginfo:GetDamage() > 0 and hitent:IsPlayer() and hitent:IsValid() then
        local addbleed = math.Clamp(damage*owner:GetStamina()/100,0,30)
        local enbleed = hitent:GetStatus("bleed")
        if enbleed and enbleed:IsValid() then
            local steal = math.min(enbleed:GetDamage()*owner:GetStamina()/100,20)
            enbleed:AddDamage(-steal)
            addbleed = addbleed + steal
        end
        local ownbleedget = owner:GetStatus("bleed")
        if ownbleedget and ownbleedget:IsValid() then
            ownbleedget:AddDamage(addbleed)
            ownbleedget.Damager = owner
        else
            local ownbleedgive = owner:GiveStatus("bleed")
            if ownbleedgive and ownbleedgive:IsValid() then
                ownbleedgive:SetDamage(addbleed)
                ownbleedgive.Damager = owner
            end
        end
    end
end

function SWEP:Move(mv)
	if self.BaseClass.Move then
		self.BaseClass.Move(self,mv)
	end
	if self:GetIsCharging() and not self:GetOwner():GetBarricadeGhosting() then
		mv:SetMaxSpeed(self.WalkSpeed*0.75)
		mv:SetMaxClientSpeed(self.WalkSpeed*0.75)	
		mv:SetSideSpeed(mv:GetSideSpeed()*0.75)
	end
end

if CLIENT then
    local texGradDown = surface.GetTextureID("VGUI/gradient_down")
    function SWEP:DrawHUD()
        local scrW = ScrW()
        local scrH = ScrH()
        local width = 200
        local height = 15
        local x, y = ScrW()*0.5 + width*0.3 , ScrH()*0.5 + height
        local ratio = math.Clamp(self:GetChargePerc(), 0, 100)/100
        if ratio > 0 then
            surface.SetDrawColor(5, 5, 5, 180)
            surface.DrawRect(x, y, width, height)
            surface.SetDrawColor(255, 0, 0, 180)
            surface.SetTexture(texGradDown)
            surface.DrawTexturedRect(x, y, width*ratio, height)
            surface.SetDrawColor(255, 0, 0, 180)
            surface.DrawOutlinedRect(x - 1, y - 1, width + 2, height + 2) 
        end
        if self.BlockMode then 
            draw.SimpleText("Block", "ZSHUDFontSmallest", x, y - height*2)
        elseif self:GetIsCharging() then
            draw.SimpleText("Crystallizing...", "ZSHUDFontSmallest", x, y - height*2)
        elseif self.NextAbilityUse >= CurTime() then
            draw.SimpleText("On Cooldown "..math.Round(self.NextAbilityUse - CurTime(),1), "ZSHUDFontSmallest", x, y - height*2)
        else
            draw.SimpleText("Crystallize Blood", "ZSHUDFontSmallest", x, y - height*2)
        end
        if self.BaseClass.DrawHUD then
            self.BaseClass.DrawHUD(self)
        end
    end
end