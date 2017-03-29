
var _roomId = scr_room_get_id(room);

if(_roomId == -1){
	return false;
}

if(global.mapSaves.itemList[_roomId] != noone){
	while(scr_linked_list_size(global.mapSaves.itemList[_roomId]) != 0){
		var _item = scr_linked_list_remove_next(global.mapSaves.itemList[_roomId]);
		_item.isVisible = _item.wasVisible;
		_item.wasVisible = false;
	}
}

if(global.mapSaves.lifeformList[_roomId] != noone){

	while(instance_number(obj_npc_Parent) != 0){
		instance_destroy(instance_find(obj_npc_Parent, 0));
	}

	var _lifeformList = global.mapSaves.lifeformList[scr_room_get_id(room)];

	while(scr_linked_list_size(_lifeformList) != 0){
		var _lifeformSave = scr_linked_list_remove_next(_lifeformList);
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
				_item.isVisible = _item.wasVisible;
			
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
				_item.isVisible = _item.wasVisible;
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
		
	
		if(object_is_ancestor(_lifeformSave.objectIndex, obj_lifeform_npc_shopkeeper) || _lifeformSave.objectIndex == obj_lifeform_npc_shopkeeper){
			for(var i = 0; i < SHOP_ITEMS_MAX; i++){
				if(_lifeform.shopItems[i] != noone){
					instance_destroy(_lifeform.shopItems[i]);
					_lifeform.shopItems[i] = noone;
				}
			}
			for(var i = 0; i < SHOP_ITEMS_MAX; i++){
				var _item = _lifeformSave.shopItems[i];
				if(_item != noone){
					_item.owner = _lifeform;
					_item.isVisible = _item.wasVisible;
				}
				
				_lifeform.shopItems[i] = _item;
				_lifeform.shopItemsAmount[i] = _lifeformSave.shopItemsAmount[i];
			}
			_lifeform.shopGold = _lifeformSave.shopGold;
		}
	
		global.loadingInstances = false;
		instance_destroy(_lifeformSave);
	}

}

if(global.mapSaves.objectList[_roomId] != noone){

	for(var i = 0; i < instance_number(obj_map_parent); i++){
		with(obj_map_parent){
			instance_destroy();
		}
	}

	var _objectList = global.mapSaves.objectList[_roomId];
	while(scr_linked_list_size(_objectList) != 0){
		var _objectSave = scr_linked_list_remove_next(_objectList);
		global.loadingInstances = true;
		var _object = instance_create(_objectSave.x, _objectSave.y, _objectSave.objectIndex);
		_object.image_xscale = _objectSave.xScale;
		_object.image_yscale = _objectSave.yScale;
		_object.depth = _objectSave.objectDepth;
		global.loadingInstances = false;
		instance_destroy(_objectSave);
	}
	
}

