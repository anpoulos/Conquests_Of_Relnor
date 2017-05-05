if(!isVisible){
	return false;
}

var _totalEquippedLights = 0;

for(var i = 0; i < EQUIPMENT_TYPE_MAX; i++){
	var _equipment = equipment[i];
	if(_equipment != noone && 
	scr_is_ancestor_or_is(_equipment.object_index, obj_equipment_torch_parent) && 
	_equipment.flame != noone){
		_totalEquippedLights += 1;
	}
}

if(scr_linked_list_size(nearbyLights) > _totalEquippedLights) {
	scr_npc_equip_best_offhand();
}
else{
	var _weapon = equipment[EQUIPMENT_TYPE_WEAPON]
	if(_weapon != noone && !_weapon.equipmentSlots[EQUIPMENT_TYPE_OFFHAND]){
		scr_npc_equip_torch();
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







