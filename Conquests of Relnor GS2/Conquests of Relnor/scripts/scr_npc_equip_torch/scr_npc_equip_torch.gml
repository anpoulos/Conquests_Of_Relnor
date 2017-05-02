///used as npc
///returns false if no torch equipped

for(var i = 0; i < INVENTORY_MAX; i++){
	var _item = inventory[i];
	if(_item != noone && scr_is_ancestor_or_is(_item.object_index, obj_equipment_torch_parent)){
		scr_lifeform_parent_inventory_equip(_item);
		return true;
	}
}

return false;