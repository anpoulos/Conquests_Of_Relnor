///scr_lifeform_constructor

shadowSurface = surface_create(room_width, room_height);

isVisible = true;

hasBodyParts = false;
combatCheckCount = -1;
sex = noone;
isDead = false;

body[BODY_BODY, DOWN] = noone;
body[BODY_BODY, LEFT] = noone;
body[BODY_BODY, RIGHT] = noone;
body[BODY_BODY, UP] = noone;

body[BODY_EYES, DOWN] = noone;
body[BODY_EYES, LEFT] = noone;
body[BODY_EYES, RIGHT] = noone;
body[BODY_EYES, UP] = noone;

body[BODY_HAIR, DOWN] = noone;
body[BODY_HAIR, LEFT] = noone;
body[BODY_HAIR, RIGHT] = noone;
body[BODY_HAIR, UP] = noone;

mapLocked = true;
recoverEnergyAmount = 1;
canEat = true;

isRevealed = true;
nightSightStrength = 0.05;

lastCollidedObject = noone;
firstCollidedObject = noone;
firstCollidedX = noone;
firstCollidedY = noone;

lastCollidedLifeform = noone;
firstCollidedLifeform = noone;

autoLevel = true;

level = 1;
experience = 0;
defence = 0;

statPoints = 0;

followTarget = noone;

walkThroughNPCs = false;
hasShadow = true;
offhandSpell = noone;

gold = 0;
path = path_add();

busyState = noone;
isBusy = false;
size = 15;
pathIndex = 0;
updatePath = false;
previousCellX = 0;
previousCellY = 0;

currentAttack = noone;

healthBarCurrentBar = 9;
energyBarCurrentBar = 9;

origin = ORIGIN_NONE;
region = REGION_NONE;

phy_fixed_rotation = true;
ignoreLifeformCollisions = false;

for(var i = 0; i < EQUIPMENT_TYPE_MAX; i++){
    equipment[i] = noone;
}

for(var i = 0; i < INVENTORY_MAX; i++){
    inventory[i] = noone;
}

scr_lifeform_constructor_initialize_stats();

selected = false;
image_speed = 0;
currentDepth = depth;
possibleEnemies = scr_linked_list_create();

attackImageSpeed = 0.5;
showHealthBar = false;

xAxis = 0;
yAxis = 0;
allegiance = noone;
allegianceRank[ALLEGIANCE_MAX] = 0;
target = noone;
moveOffsetX = 0;
moveOffsetY = 0;
reach = 15;

statRestoreStep = 0;


isPlayer = false;
statsMax[STATS_PHYSICAL, STATS_PHYSICAL_HEALTH] = 10;
statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_HEALTH] = statsMax[STATS_PHYSICAL, STATS_PHYSICAL_HEALTH];
name = "Lifeform Parent";
statsMax[STATS_PHYSICAL, STATS_PHYSICAL_ENERGY] = 100;
statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_ENERGY] = statsMax[STATS_PHYSICAL, STATS_PHYSICAL_ENERGY];
sight = 50;

moveToX = noone;
moveToY = noone;
moveToEndScript = noone;
moveToAccuracy = 10;
lastX = noone;
lastY = noone;

deathState = scr_lifeform_death_state;
moveState = noone;
attackState = noone;
idleState = scr_lifeform_idle_state;
collisionMapObjectState = scr_lifeform_collision_map_object_state;


moveInputs = scr_lifeform_get_action_inputs;

sprites[4] = noone;
triggers[TRIGGERS_MAX] = noone;
directions[4] = noone;
attackSprite[4] = noone;
deadSprite = noone;

healthBarIsVisible = false;

//movement
direction360 = 0;
face4Way = DOWN;
face8Way = FACE_DOWN;
length = 0;
imageSpeed = 0.2;
scr_npc_set_speeds(2,4,6);

attacked = false;

state = idleState;
