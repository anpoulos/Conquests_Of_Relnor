///scr_lifeform_constructor

        
InventoryInfoContainerItemStats = instance_create(x,y,obj_ui_party_inventory_item_info);

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

isPlayer = false;
statsMax[STATS_PHYSICAL, STATS_PHYSICAL_HEALTH] = 10;
statsCurrent = statsMax[STATS_PHYSICAL, STATS_PHYSICAL_HEALTH];
name = "Lifeform Parent";
statsMax[STATS_PHYSICAL, STATS_PHYSICAL_ENERGY] = 100;
statsCurrent = statsMax[STATS_PHYSICAL, STATS_PHYSICAL_ENERGY];
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
