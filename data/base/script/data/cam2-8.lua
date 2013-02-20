-- Generated by wz2lua (data file)
version(0) -- version of the script API this script is written for
-- slo: "GenExp.slo"

-- Generic VLO file template for start/expand levels

-- Cam2-8.vlo

-- Next level stuff
NextLev = "CAM_2END"

-- Define Players/Enemies
-- MAX 2. Must define same as number of enemy players given next
numEnemies = 1
enemy = {}
enemy[0] = 2
-- ally player with self (could be a different player number
alliancePlayer = 0
-- ally enemy with self (could be a different player number
allianceEnemy = {}
allianceEnemy[0] = 2
-- TRUE if want enemies to use each others targets, otherwise mark FALSE
allianceFlag = false

-- Starting Enemy Power
-- starting power values for each enemy listed above
power = {}
power[0] = 10000
-- power[1]	int		1000

-- Structure Limits
-- MAX 5. Must be same as number of limits given next
numStrucStats = 6
strucStat = {}
strucStat[0] = "A0PowerGenerator"
strucLimit = {}
strucLimit[0] = 0
strucStat[1] = "A0ResourceExtractor"
strucLimit[1] = 0
strucStat[2] = "A0ResearchFacility"
strucLimit[2] = 0
strucStat[3] = "A0LightFactory"
strucLimit[3] = 0
strucStat[4] = "A0CommandCentre"
strucLimit[4] = 0
strucStat[5] = "A0ComDroidControl"
strucLimit[5] = 0

-- Initialisation
-- starting view centre (in world units)
centreX = 6976
centreY = 7360
-- scroll limits (in tile units)
scrollX1 = 0
scrollY1 = 0
scrollX2 = 64
scrollY2 = 64
-- starting radar: 0=zoomed out, 2=zoomed in
zoomLevel = 1

-- MAX 8. Number of Landing zones/areas can't build on (0 = LZ)
numLZ = 1
-- coords of LZs in tile units
LZX = {}
LZX[0] = 54
LZY = {}
LZY[0] = 57
-- special, last LZ is for next map!! (don't count in numLZ)
-- coords of Campaign Map LZ in tile units
LZX[1] = 87
LZY[1] = 100

-- Transport exit and entry
-- entry coords
transX = {}
transX[0] = 45
transY = {}
transY[0] = 62
-- exit coords
transX[1] = 62
transY[1] = 55

-- (3 minute) number of seconds*10 for transport, -1 for no reinforcements
ReinforceTime = 1800

-- starting technology for enemy
-- NOTE: need to set first number in array for enemy player
-- second number needs to correspond to numTechs[enemy]
-- MAX 2 enemies, 10 technologies
numTechs = {}
numTechs[0] = 31
startTech = {}
startTech[0] = {}
startTech[0][0] = "R-Defense-WallUpgrade05"
startTech[0][1] = "R-Struc-Materials06"
startTech[0][2] = "R-Struc-Factory-Upgrade06"
startTech[0][3] = "R-Struc-Factory-Cyborg-Upgrade06"
startTech[0][4] = "R-Struc-VTOLFactory-Upgrade03"
startTech[0][5] = "R-Struc-VTOLPad-Upgrade03"
startTech[0][6] = "R-Vehicle-Engine05"
startTech[0][7] = "R-Vehicle-Metals05"
startTech[0][8] = "R-Cyborg-Metals06"
startTech[0][9] = "R-Vehicle-Armor-Heat02"
startTech[0][10] = "R-Cyborg-Armor-Heat02"
startTech[0][11] = "R-Sys-Engineering02"
startTech[0][12] = "R-Wpn-Cannon-Accuracy02"
startTech[0][13] = "R-Wpn-Cannon-Damage06"
startTech[0][14] = "R-Wpn-Cannon-ROF03"
startTech[0][15] = "R-Wpn-Flamer-Damage06"
startTech[0][16] = "R-Wpn-Flamer-ROF03"
startTech[0][17] = "R-Wpn-Howitzer-Accuracy02"
startTech[0][18] = "R-Wpn-Howitzer-Damage03"
startTech[0][19] = "R-Sys-Sensor-Upgrade01"
startTech[0][20] = "R-Wpn-MG-Damage07"
startTech[0][21] = "R-Wpn-MG-ROF03"
startTech[0][22] = "R-Wpn-Mortar-Acc02"
startTech[0][23] = "R-Wpn-Mortar-Damage06"
startTech[0][24] = "R-Wpn-Mortar-ROF03"
startTech[0][25] = "R-Wpn-Rocket-Accuracy02"
startTech[0][26] = "R-Wpn-Rocket-Damage06"
startTech[0][27] = "R-Wpn-Rocket-ROF03"
startTech[0][28] = "R-Wpn-RocketSlow-Accuracy03"
startTech[0][29] = "R-Wpn-RocketSlow-Damage06"
startTech[0][30] = "R-Wpn-RocketSlow-ROF03"

-- Briefings
-- MAX 2. Needs to be same as the number of briefings given next
numBriefs = 1
brief = {}
brief[0] = "MB2_8_MSG2"
-- 0 remove after playing, 1 keep, 2 don't play immediately
briefVal = {}
briefVal[0] = 2
endMsg = "END"

-- Objectives
-- MAX 3. Needs to be the same as the number of objective blips given next
numObjectives = 0
-- objective[0]	INTMESSAGE	"FAST_OBJ1"
-- objectiveX[0]	int		1728	//doesn't use index to array, use world coords
-- objectiveY[0]	int		1216

-- Victory Conditions
-- NOTE: always assumes victory condition of: number of artifacts collected = victoryArt
-- number of victory conditions to be met (not including artifacts)
numVictory = 1
-- DOESN'T need to be same as number given next (these are set TRUE/FALSE)
-- if victory condition required. Can have 2 set to TRUE and numVictory = 1
-- This will then let player win if EITHER condition is true!
-- Use numVictory of 0 if just want player to get artifacts

-- these now done as integers NOT bools!! Use -1 for False, # for True (often an index to check!)
-- for this reason must specify ALL victory[]!
-- all enemy vehicles and structures need to be killed
victory = {}
victory[0] = 1
-- all players vehicles at REGION index # (eg LZ REGION)
victory[1] = -1
-- number of objectives to get to (uses objective[0] to objective[#])
victory[2] = -1
-- number of bases to destroy (uses base[0] to base[#])
victory[3] = -1


-- Failure Conditions
-- Extra conditions above ALL player units and structures dead, or TIME LIMIT expired
-- numFail	int		0	//number required to be met (usually one if used!)
-- only one of these has to be met
-- Use -1 for False, # for True (often an index to check!)

-- 0	//group # index all got to REGION
fail = {}
fail[0] = -1
-- 2	//REGION index for above (these count as one condition!)
fail[1] = -1

--[[might use these later if necessary
fail	[2]	int		-1	//only Player UNITS need to be killed to lose
fail	[3]	int		-1	//only Player STRUCTURES need to be killed to lose
fail	[4]	int		-1	//Structure index # to be destroyed to lose????]]--

-- Artifacts
-- number of artifacts required for victory (must be <= numArt)
victoryArt = 2
-- MAX 6. Number of artifacts in total (even if not in game, but added as extra research!)
numArt = 2

-- new improved way of doing artifacts
-- artType: 0 = artifact starts on map, 1 = get from STRUCTURE, 2 = get from FEATURE, 3 = get from DROID, 4 = at end of level
-- artVal: index to relevant type, ie FEATURE(crate), FEATURE, STRUCTURE, DROID
-- artX, artY: artifact coords (this is updated for DROIDS moving by script, but still needs an array to store them in!)
-- Heavy Factory
artType = {}
artType[0] = 1
artVal = {}
artVal[0] = 1
artX = {}
artX[0] = 3776
artY = {}
artY[0] = 1472
artComp = {}
artComp[0] = "R-Wpn-HvyHowitzer"

-- VTOL factory
artType[1] = 1
artVal[1] = 3
artX[1] = 7360
artY[1] = 1344
artComp[1] = "R-Vehicle-Body09"

-- lists of stuff referred to by index number
-- ********************************************

-- ********************************************
-- FEATURES (inc crates, by ID number)	MAX = 10
-- features	[0]	FEATURE		649		//crate artifact (1st in valley)
-- features	[1]	FEATURE		661		//crate artifact (2nd by huts) (CHANGED TO BUNKER)

-- ********************************************
-- STRUCTURES (by ID number)		MAX = 10
-- Base 1 Cyborg Factory
structures = {}
structures[0] = getStructureByID(155)
-- Base 2 Heavy Factory 1
structures[1] = getStructureByID(223)
-- Base 2 Heavy Factory 2
structures[2] = getStructureByID(225)
-- Base 3 Medium VTOL Factory
structures[3] = getStructureByID(227)


templates = {}
templates[0] = "CO-M-LTAT-Hover"
templates[1] = "CO-H-RotCan-Track"
-- Truck Vehicle
templates[2] = "CO-M-Con-T"
templates[3] = "CO-M-HPVCannon-Tracks"
templates[4] = "CO-H-RotCan-Track"
-- Repair Vehicle
templates[5] = "CO-M-Repair-T"
templates[6] = "CO-H-QuadBofAA-T"
templates[7] = "CO-H-Rkt-BB-T"
templates[8] = "CO-M-RotMortar-T"
templates[9] = "CO-H-HvyCan-Tracks"
-- Sensor Vehicle
templates[10] = "CO-M-Sensor-T"

-- Collective VTOL Templates
templates[11] = "CO-L-RotMG-VTOL"
templates[12] = "CO-M-HVAT-V"
templates[13] = "CO-M-Bomb1-VTOL"
templates[14] = "CO-M-Bomb2-VTOL"
-- "CO-M-HVAT-V"

-- Cyborg Templates (SHARED)
templates[15] = "Cyb-Flamer-GROUND"
templates[16] = "Cyb-Cannon-GROUND"
templates[17] = "Cyb-Rocket-GROUND"
templates[18] = "Cyb-RotMG-GROUND"


-- ********************************************
-- coordinates (world coords)		MAX = 15
-- ********************************************
-- base 1 cyborg factory assembly point
coordsX = {}
coordsX[0] = 4288
coordsY = {}
coordsY[0] = 3392
-- base 2 heavy factory2 assembly point
coordsX[1] = 3904
coordsY[1] = 2624

-- group 1 vtols waypoint 1
coordsX[2] = 7104
coordsY[2] = 1344
-- group 1 vtols waypoint 2
coordsX[3] = 4032
coordsY[3] = 1216
-- group 1 vtols waypoint 3
coordsX[4] = 4160
coordsY[4] = 4928
-- group 1 vtols waypoint 4
coordsX[5] = 6592
coordsY[5] = 7104
-- group 1 vtols waypoint 5
coordsX[6] = 7232
coordsY[6] = 5312

-- group 2 NW corner waypoint 1
coordsX[7] = 960
coordsY[7] = 2752
-- group 2 NW corner waypoint 2
coordsX[8] = 2752
coordsY[8] = 4800
-- group 2 NW corner waypoint 3
coordsX[9] = 7488
coordsY[9] = 4928

-- group 3 cyborgs to west waypoint 1
coordsX[10] = 1216
coordsY[10] = 6080
-- group 3 cyborgs to west waypoint 2
coordsX[11] = 4288
coordsY[11] = 7360
-- group 3 cyborgs to west waypoint 3
coordsX[12] = 6592
coordsY[12] = 7104

-- ********************************************
-- regions (world coords)		MAX = 20
-- ********************************************
-- enemy base1 blip
regionsX1 = {}
regionsX1[0] = 3648
regionsY1 = {}
regionsY1[0] = 3520
regionsX2 = {}
regionsX2[0] = 4800
regionsY2 = {}
regionsY2[0] = 4928

-- enemy base2 blip
regionsX1[1] = 3008
regionsY1[1] = 832
regionsX2[1] = 5952
regionsY2[1] = 2496

-- enemy base3 blip
regionsX1[2] = 6208
regionsY1[2] = 192
regionsX2[2] = 8000
regionsY2[2] = 3136

-- Group 1 VTOL's NE base
regionsX1[3] = 7232
regionsY1[3] = 704
regionsX2[3] = 7744
regionsY2[3] = 1216

-- Group 2 NW corner
regionsX1[4] = 448
regionsY1[4] = 1856
regionsX2[4] = 1600
regionsY2[4] = 3008

-- Group 3 cyborgs
regionsX1[5] = 960
regionsY1[5] = 6464
regionsX2[5] = 1472
regionsY2[5] = 6976

-- region group 0 (along valley)
regionsX1[6] = 704
regionsY1[6] = 4544
-- include guys on hill!
regionsX2[6] = 1728
regionsY2[6] = 4800
-- region group 1
regionsX1[7] = 576
regionsY1[7] = 4032
regionsX2[7] = 1728
regionsY2[7] = 4543
-- region group 2
regionsX1[8] = 576
regionsY1[8] = 3136
regionsX2[8] = 1216
regionsY2[8] = 4032
-- region group 3
regionsX1[9] = 576
regionsY1[9] = 1728
regionsX2[9] = 1600
regionsY2[9] = 4032
-- region group 4
regionsX1[10] = 704
regionsY1[10] = 704
regionsX2[10] = 2112
regionsY2[10] = 1728

-- region group 5 (radar defenders)
regionsX1[11] = 1728
regionsY1[11] = 320
regionsX2[11] = 6208
regionsY2[11] = 3904
-- protect region group 5 (radar object)
regionsX1[12] = 4032
regionsY1[12] = 2368
regionsX2[12] = 4800
regionsY2[12] = 3136


-- ********************************************
-- Enemy Base Blips
-- ********************************************
-- MAX = 5. Must be same as number of bases listed next
numBases = 3
-- enemy player number who owns base
basePlayer = {}
basePlayer[0] = 0
-- enemy base blip message (prox.txt)
baseMsg = {}
baseMsg[0] = "C28_BASE1"
-- index to regions
baseRegion = {}
baseRegion[0] = 0
-- index to baseSnd	enemy detected
baseWav1 = {}
baseWav1[0] = 0
-- index to baseSnd	Eradicated
baseWav2 = {}
baseWav2[0] = 3

basePlayer[1] = 0
baseMsg[1] = "C28_BASE2"
baseRegion[1] = 1
-- index to baseSnd	enemy detected
baseWav1[1] = 0
-- index to baseSnd	Eradicated
baseWav2[1] = 3

basePlayer[2] = 0
baseMsg[2] = "C28_BASE3"
baseRegion[2] = 2
-- index to baseSnd	enemy detected
baseWav1[2] = 0
-- index to baseSnd	Eradicated
baseWav2[2] = 3

-- basePlayer[3]	int		7		//do radar as a base
-- baseMsg	[3]	INTMESSAGE	"FAST_BASE4"
-- baseRegion[3]	int		12
-- baseWav1	[3]	int		1		//index to baseSnd	Threat to project
-- baseWav2	[3]	int		-1		//-1 = no sound

-- ********************************************
-- Enemy Groups
-- ********************************************
-- group MAX = 10
numGroups = 3


-- group2 NW corner
-- 0 = Ambush/Patrol, 1 = Defence, 2 = Scout, 3 = Attack...
grpType = {}
grpType[0] = 0
-- player number (collective)
grpPlayer = {}
grpPlayer[0] = 0
-- index in regions array
grpRegion = {}
grpRegion[0] = 4
-- 50s time trigger (always make >= 0 for defence forces)
grpTimeGo = {}
grpTimeGo[0] = 5
-- no region. index in regions array as trigger
grpRegionGo = {}
grpRegionGo[0] = -1
-- player number to cross trigger region (may not need?)
grpWhoGo = {}
grpWhoGo[0] = 0
-- medium morale
grpMorale = {}
grpMorale[0] = 50
-- medium leadership value
grpLeadership = {}
grpLeadership[0] = 50
-- retreat (index in coords array) base1 assembly
grpRetreatXY = {}
grpRetreatXY[0] = 2
-- index in sectors array (depends on grpType)
grpPosStart = {}
grpPosStart[0] = 7
-- Minimum index in coords array
grpPosMin = {}
grpPosMin[0] = 7
-- Maximum index in coords array
grpPosMax = {}
grpPosMax[0] = 9
-- Step increase for next 'waypoint'
grpPosStep = {}
grpPosStep[0] = 1
-- 0 = stop, 1 = loop, 2 = pingpong, 3 = random thru waypoints
grpPosType = {}
grpPosType[0] = 0
-- index structure to reinforce group. -1 = any factory.
grpFactory = {}
grpFactory[0] = 2
-- ideal size. If less than this factory will reinforce
grpIdealSize = {}
grpIdealSize[0] = 12

-- group3 cyborgs to west
-- 0 = Ambush/Patrol, 1 = Defence, 2 = Scout, 3 = Attack...
grpType[1] = 0
-- player number (collective)
grpPlayer[1] = 0
-- index in regions array
grpRegion[1] = 5
-- 0s time trigger (always make >= 0 for defence forces)
grpTimeGo[1] = 18
-- no region. index in regions array as trigger
grpRegionGo[1] = -1
-- player number to cross trigger region (may not need?)
grpWhoGo[1] = 0
-- morale = 10%
grpMorale[1] = 90
-- leadership value = 20%
grpLeadership[1] = 20
-- retreat (index in coords array) base2 assembly
grpRetreatXY[1] = 2
-- index in coords array (depends on grpType)
grpPosStart[1] = 10
-- Minimum index in coords array
grpPosMin[1] = 10
-- Maximum index in coords array
grpPosMax[1] = 12
-- Step increase for next 'waypoint'
grpPosStep[1] = 1
-- 0 = stop, 1 = loop, 2 = pingpong, 3 = random thru waypoints
grpPosType[1] = 0
-- index factory to reinforce group. -1 = any factory.
grpFactory[1] = 0
-- ideal size. If less than this factory will reinforce
grpIdealSize[1] = 15


-- Factories
-- MAX = 10
numFactories = 3
-- cyborg factory base 1
-- index to structures
factID = {}
factID[0] = 0
-- index to assembly point. -1 for don't set
factAssXY = {}
factAssXY[0] = 0
-- delay before starting production in 10s
factTimeGo = {}
factTimeGo[0] = 6
-- -1 = no region for trigger (assume WhoGo = 0)
factRegionGo = {}
factRegionGo[0] = -1
-- index to starting template
factTempMin = {}
factTempMin[0] = 15
-- index to maximum template
factTempMax = {}
factTempMax[0] = 18
-- 1.5 mins. Time in 10s for factory to try to produce again
factEvery = {}
factEvery[0] = 9

-- heavy factory 1 base 2
-- index to structures
factID[1] = 1
-- index to assembly point. -1 for don't set
factAssXY[1] = -1
-- delay before starting production in 10s
factTimeGo[1] = 9
-- -1 = no region for trigger (assume WhoGo = 0)
factRegionGo[1] = -1
-- index to starting template
factTempMin[1] = 3
-- index to maximum template
factTempMax[1] = 5
-- 1 min. Time in 10s for factory to try to produce again
factEvery[1] = 6

-- heavy factory 2 base 2
-- index to structures
factID[2] = 2
-- index to assembly point. -1 for don't set
factAssXY[2] = 1
-- delay before starting production in 10s
factTimeGo[2] = 6
-- -1 = no region for trigger (assume WhoGo = 0)
factRegionGo[2] = -1
-- index to starting template
factTempMin[2] = 8
-- index to maximum template
factTempMax[2] = 10
-- 1 min. Time in 10s for factory to try to produce again
factEvery[2] = 6


-- 'Globals'
-- These should be same in each file, but may need slight alterations
-- player's player number
player = 0
crate = "Crate"
-- 171				//range to artifact about 1.5 tiles
artRange = 200
-- range to objective 5 Tiles
objectiveRange = 640
-- range to waypoint 2ish tiles
wayRange = 300
-- range for target spotting
targetRange = 768
-- maximum number of targets to store for each enemy
targetMax = 4
-- mission failed
lostSnd = "pcv470.ogg"
-- Base Under Attack
attackSnd1 = "pcv337.ogg"
-- artifact sounds
artSnd1 = "pcv351.ogg"
artSnd2 = "pcv352.ogg"
-- for enemy transports
transporter = "Transporter"
LZComp = "pcv445.ogg"
LZClear = "lz-clear.ogg"

-- base WAVs. MAX = 5
-- Enemy Base Detected
baseSnd = {}
baseSnd[0] = "pcv379.ogg"
-- Enemy Base Detected
baseSnd[1] = "pcv379.ogg"
-- Enemy Base Detected
baseSnd[2] = "pcv379.ogg"
-- Enemy base eradicated
baseSnd[3] = "pcv394.ogg"

--run the code
dofile('genexp_logic.lua')