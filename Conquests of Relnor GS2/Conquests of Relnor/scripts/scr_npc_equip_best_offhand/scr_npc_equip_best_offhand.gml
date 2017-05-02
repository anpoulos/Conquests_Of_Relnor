///used as npc

for(var i = 0; i < EQUIPMENT_TYPE_MAX; i++){
	var _item = equipment[i];
	if(_item != noone){
		if(scr_is_ancestor_or_is(_item.object_index, obj_equipment_torch_parent)){
				
			var _bestOffhand = noone;
		
			for(var i = 0; i < INVENTORY_MAX; i++){
				var _inventoryItem = inventory[i];
				
				if(_inventoryItem != noone && 
				scr_is_ancestor_or_is(_inventoryItem.object_index, obj_inventory_equipment_parent) && 
				_inventoryItem.equipmentStats[EQUIPMENT_STATS_TYPE] == EQUIPMENT_TYPE_OFFHAND){
					if(_bestOffhand == noone){
						if(_inventoryItem.equipmentStats[EQUIPMENT_STATS_DEFENCE] > _item.equipmentStats[EQUIPMENT_STATS_DEFENCE]){
							_bestOffhand = _inventoryItem;
						}
					}
					else if(_inventoryItem.equipmentStats[EQUIPMENT_STATS_DEFENCE] > _bestOffhand.equipmentStats[EQUIPMENT_STATS_DEFENCE]){
						_bestOffhand = _inventoryItem;
					}
				}
			}
					
			if(_bestOffhand != noone){
				scr_lifeform_parent_inventory_equip(_bestOffhand);
			}
		}
	}
}	