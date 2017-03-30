
if(global.isNight){
	if(!checkedNightEquipment){
		checkedNightEquipment = true;
		checkedDayEquipment = false;
	}
	
	for(var i = 0; i < EQUIPMENT_TYPE_MAX; i++){
		var _item = equipment[i];
		if(_item != noone){
			if(_item.object_index == obj_equipment_torch_parent){
				_hasLightEquipped = true;
				break;
			}
		}
	}
		
	var _hasLightEquipped = false;
	for(var i = 0; i < INVENTORY_MAX; i++){
		var _item = inventory[i];
		if(_item != noone){
			if(!_hasLightEquipped && _item.object_index == obj_equipment_torch_parent){
				//check around for light
				var _totalLights = instance_number(obj_map_light_cycle);
				var _isInLight = false;
				for(var j = 0; j < _totalLights; j++){
					var _light = instance_find(obj_map_light_cycle, j);
					var _distance = point_distance(x,y, _light.lightX, _light.lightY);
					if(_distance <= _light.radius){
						_isInLight = true;
						break;
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
else{
	if(!checkedDayEquipment){
		
		for(var i = 0; i < EQUIPMENT_TYPE_MAX; i++){
			var _item = equipment[i];
			if(_item != noone){
				if(_item.object_index == obj_equipment_torch_parent){
					scr_lifeform_parent_inventory_unequip(_item);
				}
			}
		}	
		
		checkedNightEquipment = false;
		checkedDayEquipment = true;
	}
}