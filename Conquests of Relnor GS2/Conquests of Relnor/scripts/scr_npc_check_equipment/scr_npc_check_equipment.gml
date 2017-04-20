
if(global.isNight){
	if(!checkedNightEquipment){
		checkedNightEquipment = true;
		checkedDayEquipment = false;
	}
		
	var _hasLightEquipped = false;
	var _offhandSlotTaken = false;
	
	for(var i = 0; i < EQUIPMENT_TYPE_MAX && !_hasLightEquipped; i++){
		var _equipment = equipment[i];
		if(_equipment != noone){
			if(scr_is_ancestor_or_is(_equipment.object_index, obj_equipment_torch_parent)){
				_hasLightEquipped = true;
			}
			else if(i != EQUIPMENT_TYPE_WEAPON && _equipment.equipmentSlots[EQUIPMENT_TYPE_OFFHAND]){
				_offhandSlotTaken = true;
			}
		}
	}
	
	if(!_hasLightEquipped && !_offhandSlotTaken){
		for(var i = 0; i < INVENTORY_MAX; i++){
		var _item = inventory[i];
			if(_item != noone){
				if(scr_is_ancestor_or_is(_item.object_index, obj_equipment_torch_parent)){
					//check around for light
					var _totalLights = instance_number(obj_map_light_cycle);
					var _isInLight = false;
					for(var j = 0; j < _totalLights; j++){
						var _light = instance_find(obj_map_light_cycle, j);
						if(_light.object_index != obj_map_light_sun){
							var _distance = point_distance(x,y, _light.lightX, _light.lightY);
							if(_distance <= _light.radius){
								_isInLight = true;
								break;
							}
						}
					}
					if(!_isInLight){
						scr_lifeform_parent_inventory_equip(_item);
						_hasLightEquipped = true;
					}
				}
			}
		}
	}
		
}
else{
	if(!checkedDayEquipment){
		
		for(var i = 0; i < EQUIPMENT_TYPE_MAX; i++){
			var _item = equipment[i];
			if(_item != noone){
				if(scr_is_ancestor_or_is(_item.object_index, obj_equipment_torch_parent)){
				
					var _bestOffhand = noone;
		
					for(var i = 0; i < INVENTORY_MAX; i++){
						var _inventoryItem = inventory[i];
				
						if(_inventoryItem!= noone && _inventoryItem.equipmentStats[EQUIPMENT_STATS_TYPE] == EQUIPMENT_TYPE_OFFHAND){
							if(_bestOffhand == noone){
								if(_inventoryItem.equipmentStats[EQUIPMENT_STATS_DEFENCE] > _item.equipmentStats[EQUIPMENT_STATS_DEFENCE]){
									_bestOffhand = _item;
								}
							}
							else if(_inventoryItem.equipmentStats[EQUIPMENT_STATS_DEFENCE] > _bestOffhand.equipmentStats[EQUIPMENT_STATS_DEFENCE]){
								_bestOffhand = _item;
							}
						}
					}
					
					if(_bestOffhand != noone){
						scr_lifeform_parent_inventory_equip(_bestOffhand);
					}
				}
			}
		}	
		
		checkedNightEquipment = false;
		checkedDayEquipment = true;
	}
}


if(canEat){
	for(var i = 0; i < INVENTORY_MAX; i++){
		var _item = inventory[i];
		if(_item != noone){
			if(scr_is_ancestor_or_is(_item.object_index, obj_inventory_consumable_parent) && _item.effectsPhysical[STATS_PHYSICAL_HEALTH] > 0){
				var _currentHealth = statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_HEALTH];
				var _maxHealth = statsMax[STATS_PHYSICAL, STATS_PHYSICAL_HEALTH];
				while(_currentHealth/_maxHealth  <= healthThreshold && instance_exists(_item)){
					scr_item_use(_item);
				}
			}
		}
	}
}







