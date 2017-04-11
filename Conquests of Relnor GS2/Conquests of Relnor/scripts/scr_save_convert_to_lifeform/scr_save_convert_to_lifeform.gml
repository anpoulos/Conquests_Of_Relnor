///@param obj_lifeform_save

var _lifeformSave = argument0;

global.loadingInstances = true;
		
var _lifeform = instance_create(_lifeformSave.x, _lifeformSave.y, _lifeformSave.objectIndex);
		
_lifeform.gold = _lifeformSave.gold;
_lifeform.healthBarCurrentBar = _lifeformSave.healthBarCurrentBar;
_lifeform.energyBarCurrentBar = _lifeformSave.energyBarCurrentBar;
		
for(var i = 0; i < EQUIPMENT_TYPE_MAX; i++){
	if(_lifeform.equipment[i] != noone){
		instance_destroy(_lifeform.equipment[i]);
		_lifeform.equipment[i] = noone;
	}
}
		
for(var i = 0; i < EQUIPMENT_TYPE_MAX; i++){
	var _item = _lifeformSave.equipment[i];
	if(_item != noone){
		_item.owner = _lifeform;
			
		with(_item){
			script_execute(_item.useScript, _item);
		}
	}
			
}
		
for(var i = 0; i < INVENTORY_MAX; i++){
	if(_lifeform.inventory[i] != noone){
		instance_destroy(_lifeform.inventory[i]);
		_lifeform.inventory[i] = noone;
	}
}
for(var i = 0; i < INVENTORY_MAX; i++){
	var _item = _lifeformSave.inventory[i];
	if(_item != noone){
		_item.owner = _lifeform;
		scr_lifeform_parent_inventory_add(_lifeform, _item);
	}
}

for(var j = 0; j < STATS_PHYSICAL_MAX; j++){
	_lifeform.statsMax[STATS_PHYSICAL, j] = _lifeformSave.statsMax[STATS_PHYSICAL, j];
	_lifeform.statsCurrent[STATS_PHYSICAL, j] = _lifeformSave.statsCurrent[STATS_PHYSICAL, j];
}
for(var j = 0; j < STATS_COMMANDING_MAX; j++){
	_lifeform.statsMax[STATS_COMMANDING, j] = _lifeformSave.statsMax[STATS_COMMANDING, j];
	_lifeform.statsCurrent[STATS_COMMANDING, j] = _lifeformSave.statsCurrent[STATS_COMMANDING, j];
}
for(var j = 0; j < STATS_TOOLS_MAX; j++){
	_lifeform.statsMax[STATS_TOOLS, j] = _lifeformSave.statsMax[STATS_TOOLS, j];
	_lifeform.statsCurrent[STATS_TOOLS, j] = _lifeformSave.statsCurrent[STATS_TOOLS, j];
}
for(var j = 0; j < STATS_INTELLIGENCE_MAX; j++){
	_lifeform.statsMax[STATS_INTELLIGENCE, j] = _lifeformSave.statsMax[STATS_INTELLIGENCE, j];
	_lifeform.statsCurrent[STATS_INTELLIGENCE, j] = _lifeformSave.statsCurrent[STATS_INTELLIGENCE, j];
}
		
_lifeform.sight = _lifeformSave.sight;
_lifeform.reach = _lifeformSave.reach;
_lifeform.isDefensive = _lifeformSave.isDefensive;
_lifeform.isAggressive = _lifeformSave.isAggressive;
_lifeform.originX = _lifeformSave.originX;
_lifeform.originY = _lifeformSave.originY;
_lifeform.wanderRadius = _lifeformSave.wanderRadius;
_lifeform.wanderDistance = _lifeformSave.wanderDistance;
_lifeform.oldWanderRadius = _lifeformSave.oldWanderRadius;
_lifeform.oldWanderDistance = _lifeformSave.oldWanderDistance;
_lifeform.autoLevel = _lifeformSave.autoLevel;
_lifeform.level = _lifeformSave.level;
_lifeform.experience = _lifeformSave.experience;
_lifeform.defence = _lifeformSave.defence;
_lifeform.statPoints = _lifeformSave.statPoints;
_lifeform.mapLocked = _lifeformSave.mapLocked;		
	
if(object_is_ancestor(_lifeformSave.objectIndex, obj_lifeform_npc_shopkeeper) || _lifeformSave.objectIndex == obj_lifeform_npc_shopkeeper){
	for(var i = 0; i < SHOP_ITEMS_MAX; i++){
		while(!scr_linked_list_is_empty(_lifeform.shopItems[i])){
			instance_destroy(scr_linked_list_remove_next(_lifeform.shopItems[i]));
		}
		scr_linked_list_destroy(_lifeform.shopItems[i]);
	}
	for(var i = 0; i < SHOP_ITEMS_MAX; i++){
	
		for(var j = 0; j < scr_linked_list_size(_lifeformSave.shopItems[i]); j++){
			var _item = scr_linked_list_get_next(_lifeformSave.shopItems[i]);
			_item.owner = _lifeform;
		}
		
		_lifeform.shopItems[i] = _lifeformSave.shopItems[i];
	}
	_lifeform.shopGold = _lifeformSave.shopGold;
}
	
scr_lifeform_update_defence(_lifeform);
	
global.loadingInstances = false;

return _lifeform;