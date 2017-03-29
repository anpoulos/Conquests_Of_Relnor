
var _roomId = scr_room_get_id(room);

if(_roomId == -1){
	return false;
}

if(global.mapSaves.itemList[_roomId] == noone){
	global.mapSaves.itemList[_roomId] = scr_linked_list_create();
}

if(global.mapSaves.objectList[_roomId] == noone){
	global.mapSaves.objectList[_roomId] = scr_linked_list_create();
}

if(global.mapSaves.lifeformList[_roomId] == noone){
	global.mapSaves.lifeformList[_roomId] = scr_linked_list_create();
}

for(var i = 0; i < instance_number(obj_inventory_item_parent); i++){
	var _item = instance_find(obj_inventory_item_parent, i);
	if(instance_exists(_item) && (_item.owner != noone || _item.isVisible)){
		_item.wasVisible = _item.isVisible;
		_item.isVisible = false;
		scr_linked_list_add(global.mapSaves.itemList[_roomId], _item);
	}
}

for(var i = 0; i < instance_number(obj_map_parent); i++){
	var _object = instance_find(obj_map_parent, i);
	var _objectSave = instance_create(_object.x, _object.y, obj_map_object_save);
	_objectSave.objectIndex = _object.object_index;
	_objectSave.xScale = _object.image_xscale;
	_objectSave.yScale = _object.image_yscale;
	_objectSave.objectDepth = _object.depth;
	_objectSave.bboxBottom = _object.bbox_bottom;
	_objectSave.bboxLeft = _object.bbox_left;
	_objectSave.bboxRight = _object.bbox_right;
	_objectSave.bboxTop = _object.bbox_top;
	
	scr_linked_list_add(global.mapSaves.objectList[_roomId], _objectSave);
}

for(var k = 0; k < instance_number(obj_npc_Parent); k++){
	var _lifeform = instance_find(obj_npc_Parent, k);
	var _lifeformSave = instance_create(_lifeform.x, _lifeform.y, obj_map_lifeform_save);
	
	_lifeformSave.objectIndex = _lifeform.object_index;
	
	_lifeformSave.gold = _lifeform.gold;
	_lifeformSave.healthBarCurrentBar = _lifeform.healthBarCurrentBar;
	_lifeformSave.energyBarCurrentBar = _lifeform.energyBarCurrentBar;
	
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
	
	if(object_is_ancestor(_lifeformSave.objectIndex, obj_lifeform_npc_shopkeeper) || _lifeformSave.objectIndex == obj_lifeform_npc_shopkeeper){
		for(var i = 0; i < SHOP_ITEMS_MAX; i++){
			var _item = _lifeform.shopItems[i];
			if(_item != noone){
				_item.owner = noone;
				_lifeformSave.shopItems[i] = _item;
			}
		}
		
		scr_array_copy(_lifeform.shopItemsAmount, _lifeformSave.shopItemsAmount);
	
		_lifeformSave.shopGold = _lifeform.shopGold;
	}
	
	scr_linked_list_add(global.mapSaves.lifeformList[_roomId], _lifeformSave);
}