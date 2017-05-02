if(!isVisible){
	return false;
}

var _totalLights = instance_number(obj_map_light_cycle);
var _isInLight = false;
var _hasLightEquipped = false;

var _equipmentLights = scr_linked_list_create();
for(var i = 0; i < EQUIPMENT_TYPE_MAX; i++){
	var _equipment = equipment[i];
	if(_equipment != noone && scr_is_ancestor_or_is(_equipment.object_index, obj_equipment_torch_parent) && _equipment.flame != noone){
		scr_linked_list_add(_equipmentLights, _equipment.flame);
		_hasLightEquipped = true;
	}
}

for(var j = 0; j < _totalLights && !_isInLight; j++){
	var _light = instance_find(obj_map_light_cycle, j);
	_isInLight = (!scr_linked_list_exists(_equipmentLights, _light) && point_distance(x,y, _light.lightX, _light.lightY) <= _light.radius*_light.strength);
}

if(_isInLight){
	scr_npc_equip_best_offhand();
}
else if(!_hasLightEquipped){
	var _weapon = equipment[EQUIPMENT_TYPE_WEAPON]
	if(_weapon != noone && !_weapon.equipmentSlots[EQUIPMENT_TYPE_OFFHAND]){
		scr_npc_equip_torch();
	}
}

scr_linked_list_destroy(_equipmentLights);

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







