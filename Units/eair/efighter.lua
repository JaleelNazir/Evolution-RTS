-- UNITDEF -- EFIGHTER --
--------------------------------------------------------------------------------

local unitName                   = "efighter"

--------------------------------------------------------------------------------

local unitDef                    = {

	--mobileunit 
	transportbyenemy             = false;

	--**


	acceleration                 = 0.5,
	airStrafe                    = true,
	bankscale                    = "1",
	brakeRate                    = 0.5,
	buildCostEnergy              = 0,
	buildCostMetal               = 45,
	buildTime                    = 2.5,
	canAttack                    = true,
	canFly                       = true,
	canGuard                     = true,
	canLoopbackAttack            = true,
	canMove                      = true,
	canPatrol                    = true,
	canstop                      = "1",
	category                     = "LIGHT VTOL",
	collide                      = true,
	corpse                       = "ammobox",
	cruiseAlt                    = 200,
	description                  = [[Paralysis Gunship
	Light
	250 Damage vs Light/Armored/s
	62.5 Damage vs Building/s
	
	Requires +4 Power
	Uses +4 Supply]],
	energyMake                   = 0,
	energyStorage                = 0,
	energyUse                    = 0,
	explodeAs                    = "mediumExplosionGenericWhite",
	footprintX                   = 5,
	footprintZ                   = 5,
	hoverAttack                  = true,
	floater                      = true,
	iconType                     = "tankdestroyer",
	idleAutoHeal                 = .5,
	idleTime                     = 2200,
	maxAcc                       = 0.25,
	maxBank			             = 5,
	maxDamage                    = 225,
	maxSlope                     = 10,
	maxVelocity                  = 16,
	verticalSpeed		         = 15,
	maxWaterDepth                = 255,
	metalStorage                 = 0,
	moverate1                    = "8",
	name                         = "Koyote",
	objectName                   = "efighter2.s3o",
	script			             = "efighter2.cob",
	radarDistance                = 0,
	repairable		             = false,
	selfDestructAs               = "mediumExplosionGenericWhite",
	side                         = "ARM",
	sightDistance                = 850,
	smoothAnim                   = true,
	sonarDistance                = 0,
	turnRate                     = 5000,
	unitname                     = "efighter",
	workerTime                   = 0,
	sfxtypes                     = { 
		pieceExplosionGenerators = { 
			"deathceg3", 
			"deathceg4", 
		}, 

		explosiongenerators      = {
			"custom:gdhcannon",
			"custom:jethtrail",
			"custom:blacksmoke",
		},
	},
	sounds                       = {
		underattack              = "unitsunderattack1",
		ok                       = {
			"ack",
		},
		select                   = {
			"unitselect",
		},
	},
	weapons                      = {
		[1]                      = {
			def                  = "aircannon",
			badTargetCategory    = "BUILDING VTOL",
		},
	},
	customParams                 = {
		--    needed_cover       = 2,
		death_sounds             = "generic",
		RequireTech              = "4 Power",
		armortype                = "light",
		nofriendlyfire	         = "1",
		supply_cost              = 4,
		normalstex               = "unittextures/lego2skin_explorernormal.dds", 
		buckettex                = "unittextures/lego2skin_explorerbucket.dds",
		factionname	             = "outer_colonies",  
	},
}


--------------------------------------------------------------------------------
-- Energy Per Shot Calculation is: dmg / 20 * ((aoe / 1000) + 1)

local weapon1Damage              = 25
local weapon1AOE				 = 100

local weaponDefs                 = {
	aircannon   	             = {
		AreaOfEffect             = weapon1AOE,
		avoidFeature             = false,
		avoidFriendly            = false,
		collideFeature           = false,
		collideFriendly          = false,
		coreThickness            = 0.5,
		burnblow		         = true,
		--cegTag                   = "railgun",
		duration                 = 0.05,
		energypershot            = weapon1Damage / 20 * ((weapon1AOE / 1000) + 1),
		explosionGenerator       = "custom:genericshellexplosion-large-sparks-burn",
		fallOffRate              = 1,
		fireStarter              = 50,
		impulseFactor            = 0,
		lineOfSight              = true,
		minintensity             = "1",
		name                     = "Laser",
		paralyzer		         = true,
		paralyzetime	         = 2.5,
		range                    = 850,
		reloadtime               = 0.1,
		WeaponType               = "LaserCannon",
		rgbColor                 = "0 0 1",
		rgbColor2                = "1 1 1",
		soundTrigger             = true,
		soundstart               = "tmediumtankfire.wav",
		texture1                 = "shot",
		texture2                 = "empty",
		thickness                = 15,
		tolerance                = 10000,
		turret                   = false,
		weaponVelocity           = 5000,
		customparams             = {
			damagetype		     = "efighter",  
		}, 
		damage                   = {
			default              = weapon1Damage,
		},
	},  
}
unitDef.weaponDefs               = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName]    = unitDef })

--------------------------------------------------------------------------------
