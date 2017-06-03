/// @description Insert description here
// You can write your code in this editor
isVisible = false;

deathTimer = -1;

objectIndex = noone;

lastRoomId = noone;

autoLevel = true;
level = 1;
experience = 0;
defence = 0;
statPoints = 0;
deadSprite = noone;
autoDeadSprite = noone;
gold = 0;
healthBarCurrentBar = 9;
energyBarCurrentBar = 9;
isDead = false;
spawnX = noone;
spawnY = noone;

mapLocked = true;

for(var i = 0; i < EQUIPMENT_TYPE_MAX; i++){
    equipment[i] = noone;
}

for(var i = 0; i < INVENTORY_MAX; i++){
    inventory[i] = noone;
}

for(var j = 0; j < STATS_PHYSICAL_MAX; j++){
	statsMax[STATS_PHYSICAL, j] = 0;
	statsCurrent[STATS_PHYSICAL, j] = 0;
}
for(var j = 0; j < STATS_COMMANDING_MAX; j++){
	statsMax[STATS_COMMANDING, j] = 0;
	statsCurrent[STATS_COMMANDING, j] = 0;
}
for(var j = 0; j < STATS_TOOLS_MAX; j++){
	statsMax[STATS_TOOLS, j] = 0;
	statsCurrent[STATS_TOOLS, j] = 0;
}
for(var j = 0; j < STATS_INTELLIGENCE_MAX; j++){
	statsMax[STATS_INTELLIGENCE, j] = 0;
	statsCurrent[STATS_INTELLIGENCE, j] = 0;
}

sight = 50;
reach = 15;
engageDistance = sight;

isDefensive = true;
isAggressive = false;
originX = x;
originY = y;
wanderDistance = 50;
isWandering = true;

for(var i = 0; i < SHOP_ITEMS_MAX; i++){
	shopItems[i] = noone;
}
shopGold = 0;