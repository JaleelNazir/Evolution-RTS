-- UNITDEF -- EHEAVYTURRET2 --
--------------------------------------------------------------------------------

local unitName = "eheavyturret2"

--------------------------------------------------------------------------------

local unitDef = {
  buildAngle         = 8192,
  buildCostEnergy    = 0,
  buildCostMetal     = 80,
  builder            = false,
  buildTime          = 10,
   collisionVolumeOffsets = "0 0 0",
   collisionVolumeScales  = "80 115 80",
   collisionVolumeTest    = 1,
   collisionVolumeType    = "box",
  canAttack          = true,
  canstop            = "1",
  category           = "NOTAIR",
  corpse             = "ammobox",
  description        = "Heavy Plasma Battery - Damagetype: Medium :: Armortype: Armored Building",
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = "MEDIUM_BUILDING",
  footprintX         = 6,
  footprintZ         = 6,
  idleAutoHeal       = .5,
  idleTime           = 2200,
  iconType           = "defense",
  maxDamage          = 1400,
  maxSlope           = 60,
  maxWaterDepth      = 0,
  metalStorage       = 0,
  name               = "Immolator (h)",
  objectName         = "eheavyturret3.s3o",
  onlytargetcategory3 = "NOTAIR",
  onlytargetcategory4 = "NOTAIR",
  onlytargetcategory5 = "NOTAIR",
  onlytargetcategory6 = "NOTAIR",
  radarDistance      = 0,
  selfDestructAs     = "MEDIUM_BUILDING",
  side               = "CORE",
  sightDistance      = 1200,
  smoothAnim         = true,
  unitname           = "eheavyturret2",
  workerTime         = 0,
  yardMap            = "oooo",

  sfxtypes = {
    explosiongenerators = {
      "custom:gdhcannon",
	  "custom:needspower",
    },
  },
  sounds = {
    underattack        = "unitsunderattack1",
    select = {
      "turretselect",
    },
  },
  weapons = {
    [1]  = {
      def                = "eheavyturretweapon2",
      onlyTargetCategory = "NOTAIR AMPHIB",
    },
  },
  customParams = {
	twokhotkey = 'h',
    RequireTech = "5 Power",
	armortype   = "armoredbuilding", 
	normaltex = "unittextures/lego2skin_explorernormal.png", 
	helptext = [[Heavy Turret

Heavy Plasma Battery

Damagetype: Medium

Armortype: Armored Building

+1200 Line of Sight

+1000 Range

+150 Area of Effect

Requires:

+5 Power]],
  },
	buildingGroundDecalDecaySpeed=30,
	buildingGroundDecalSizeX=9,
	buildingGroundDecalSizeY=9,
	useBuildingGroundDecal = true,
	buildingGroundDecalType=[[eheavyturret2_aoplane.dds]],
}


--------------------------------------------------------------------------------

local weaponDefs = {
  eheavyturretweapon = {
    accuracy           = 1000,
    areaOfEffect       = 150,
    avoidFriendly      = false,
    ballistic          = true,
    cegTag             = "factorysparks",
    collideFriendly    = false,
    explosionGenerator = "custom:xamelimpact",
	energypershot      = 20,
    id                 = 71,
    
    impulse            = "0",
    impulseBoost       = 0,
    impulseFactor      = 0,
    name               = "Plasma Cannon",
    range              = 1000,
    reloadtime         = 1,
    renderType         = 4,
    soundHit           = "eturrethit.wav",
    soundStart         = "eturretfire.wav",
    startsmoke         = "1",
    turret             = true,
    weaponVelocity     = 500,
	customparams = {
	  damagetype		= "medium",  
    },    
    damage = {
      default            = 100,
    },
  },
  
  eheavyturretweapon2 = {
    areaOfEffect       = 150,
    avoidFeature       = false,
    avoidFriendly      = false,
    beamTime           = 0.1,
    beamWeapon         = true,
    collideFeature     = false,
    collideFriendly    = false,
    coreThickness      = 0.6,
--	cegTag             = "mediumcannonweapon3",
    duration           = 0.4,
    energypershot      = 20,
    explosionGenerator = "custom:xamelimpact",
    fallOffRate        = 1,
    fireStarter        = 100,
	impulseFactor      = 0,
	interceptedByShieldType = 4,
    lineOfSight        = true,
    minintensity       = "1",
    name               = "Laser",
    range              = 1000,
    reloadtime         = 1,
    WeaponType         = "LaserCannon",
    rgbColor           = "1 0.5 0",
    rgbColor2          = "1 1 1",
    soundTrigger       = true,
    soundstart         = "heavyturretshot.wav",
    soundHit           = "explode5.wav",
    texture1           = "shot",
    texture2           = "empty",
    thickness          = 9,
    tolerance          = 1000,
    turret             = true,
    weaponVelocity     = 750,
	customparams = {
	  damagetype		= "medium",  
    }, 
    damage = {
      default           = 100,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------