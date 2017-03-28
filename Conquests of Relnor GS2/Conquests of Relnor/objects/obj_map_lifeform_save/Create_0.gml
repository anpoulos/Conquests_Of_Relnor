/// @description Insert description here
// You can write your code in this editor
objectIndex = noone;

gold = 0;
healthBarCurrentBar = 9;
energyBarCurrentBar = 9;

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

isDefensive = true;
isAggressive = false;
originX = x;
originY = y;
wanderRadius = 1000;
wanderDistance = 50;
oldWanderRadius = wanderRadius;
oldWanderDistance = wanderDistance;

for(var i = 0; i < SHOP_ITEMS_MAX; i++){
	shopItems[i] = noone;
}
shopItemsAmount[SHOP_ITEMS_MAX] = noone;
shopGold = 0;