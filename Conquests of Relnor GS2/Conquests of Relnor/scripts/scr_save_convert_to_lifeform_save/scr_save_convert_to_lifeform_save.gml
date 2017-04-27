///@param lifeform

var _lifeform = argument0;

var _lifeformSave = instance_create(_lifeform.x, _lifeform.y, obj_map_lifeform_save);
	
_lifeformSave.objectIndex = _lifeform.object_index;
_lifeformSave.isVisible = _lifeform.isVisible;
_lifeformSave.gold = _lifeform.gold;
_lifeformSave.healthBarCurrentBar = _lifeform.healthBarCurrentBar;
_lifeformSave.energyBarCurrentBar = _lifeform.energyBarCurrentBar;
_lifeformSave.selected = _lifeform.selected;
	
for(var i = 0; i < EQUIPMENT_TYPE_MAX; i++){
	var _item = _lifeform.equipment[i];
	if(_item != noone){
		_item.owner = noone;
		_lifeformSave.equipment[i] = _item;
	}
}
	
for(var i = 0; i < INVENTORY_MAX; i++){
	var _item = _lifeform.inventory[i];
	if(_item != noone){
		_item.owner = noone;
		_lifeformSave.inventory[i] = _item;
	}
}
	
for(var j = 0; j < STATS_PHYSICAL_MAX; j++){
	_lifeformSave.statsMax[STATS_PHYSICAL, j] = _lifeform.statsMax[STATS_PHYSICAL, j];
	_lifeformSave.statsCurrent[STATS_PHYSICAL, j] = _lifeform.statsCurrent[STATS_PHYSICAL, j];
}
for(var j = 0; j < STATS_COMMANDING_MAX; j++){
	_lifeformSave.statsMax[STATS_COMMANDING, j] = _lifeform.statsMax[STATS_COMMANDING, j];
	_lifeformSave.statsCurrent[STATS_COMMANDING, j] = _lifeform.statsCurrent[STATS_COMMANDING, j];
}
for(var j = 0; j < STATS_TOOLS_MAX; j++){
	_lifeformSave.statsMax[STATS_TOOLS, j] = _lifeform.statsMax[STATS_TOOLS, j];
	_lifeformSave.statsCurrent[STATS_TOOLS, j] = _lifeform.statsCurrent[STATS_TOOLS, j];
}
for(var j = 0; j < STATS_INTELLIGENCE_MAX; j++){
	_lifeformSave.statsMax[STATS_INTELLIGENCE, j] = _lifeform.statsMax[STATS_INTELLIGENCE, j];
	_lifeformSave.statsCurrent[STATS_INTELLIGENCE, j] = _lifeform.statsCurrent[STATS_INTELLIGENCE, j];
}
	
_lifeformSave.sight = _lifeform.sight;
_lifeformSave.reach = _lifeform.reach;
_lifeformSave.isDefensive = _lifeform.isDefensive;
_lifeformSave.isAggressive = _lifeform.isAggressive;
_lifeformSave.originX = _lifeform.originX;
_lifeformSave.originY = _lifeform.originY;
_lifeformSave.wanderRadius = _lifeform.wanderRadius;
_lifeformSave.wanderDistance = _lifeform.wanderDistance;
_lifeformSave.oldWanderDistance = _lifeform.oldWanderDistance;
_lifeformSave.oldWanderRadius = _lifeform.oldWanderRadius;
_lifeformSave.autoLevel = _lifeform.autoLevel;
_lifeformSave.level = _lifeform.level;
_lifeformSave.experience = _lifeform.experience;
_lifeformSave.defence = _lifeform.defence;
_lifeformSave.statPoints = _lifeform.statPoints;
_lifeformSave.mapLocked = _lifeform.mapLocked;
	
_lifeformSave.lastRoomId = scr_room_get_id(room);
	
if(object_is_ancestor(_lifeformSave.objectIndex, obj_lifeform_npc_shopkeeper) || _lifeformSave.objectIndex == obj_lifeform_npc_shopkeeper){
	for(var i = 0; i < SHOP_ITEMS_MAX; i++){
			
		for(var j = 0; j < scr_linked_list_size(_lifeform.shopItems[i]); j++){
			var _item = scr_linked_list_get_next(_lifeform.shopItems[i]);
			_item.owner = noone;
		}
			
		_lifeformSave.shopItems[i] = _lifeform.shopItems[i];
	}
	
	_lifeformSave.shopGold = _lifeform.shopGold;
}

return _lifeformSave;