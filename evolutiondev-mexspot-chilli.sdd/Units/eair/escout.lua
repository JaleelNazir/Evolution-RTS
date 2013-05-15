-- UNITDEF -- ESCOUT --
--------------------------------------------------------------------------------

local unitName = "escout"

--------------------------------------------------------------------------------

local unitDef = {

  acceleration       = 10,
  bankscale          = "1",
  brakeRate          = 4,
  buildCostEnergy    = 0,
  buildCostMetal     = 30,
  builder            = false,
  buildTime          = 2.5,
  canFly             = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = "1",
  category           = "LIGHT VTOL",
  collide            = false,
--Collision Volumes... Because the engine devs are silly.
--  collisionVolumeScales = [[35 35 35]],
--End Collision volumes
  corpse             = "ammobox",
  cruiseAlt          = 180,
  description        = [[Air Scout
Light

Requires +4 Power]],
  energyMake         = 0,
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = "SMALL_UNIT",
  footprintX         = 4,
  footprintZ         = 4,
  iconType           = "air",
  idleAutoHeal       = .5,
  idleTime           = 2200,
  maxAcc             = 0.5,
  maxDamage          = 320,
  maxSlope           = 10,
  maxVelocity        = 20,
  verticalSpeed		 = 15,
  maxWaterDepth      = 0,
  metalStorage       = 0,
  name               = "AirScout",
  objectName         = "escout.s3o",
  radarDistance      = 2000,
  SonarDistance      = 1000,
  repairable		 = false,
 selfDestructAs     = "SMALL_UNIT",
  side               = "ARM",
  sightDistance      = 750,
  smoothAnim         = true,
  turnRate           = 800,
  unitname           = "escout",
  workerTime         = 0,
  sfxtypes = { 
	 pieceExplosionGenerators = { 
 		"deathceg0", 
 		"deathceg1", 
 	}, 

    explosiongenerators = {
      "custom:jethtrail",
	  "custom:blacksmoke",
    },
  },
  sounds = {
    underattack        = "unitsunderattack1",
    ok = {
      "ack",
    },
    select = {
      "unitselect",
    },
  },
   customParams = {
--    needed_cover = 1,
	death_sounds = "soldier",
    RequireTech = "4 Power",
	armortype   = "light",
	normaltex = "unittextures/escoutnormal.png", 
  },
}


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------