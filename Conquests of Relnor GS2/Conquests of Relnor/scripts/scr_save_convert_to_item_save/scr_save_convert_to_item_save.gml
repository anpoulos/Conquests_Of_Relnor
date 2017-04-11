///@param item

var _item = argument0;

var _itemSave = instance_create(_item.x, _item.y, obj_map_item_save);

var _itemIndex = _item.object_index;

if(scr_is_ancestor_or_is(_itemIndex, obj_inventory_equipment_parent)){
	if(scr_is_ancestor_or_is(_itemIndex, obj_equipment_weapon_parent)){
	
	}
	else if(scr_is_ancestor_or_is(_itemIndex, obj_inventory_equipment_offhand_parent)){
	
	}	
}
else if(scr_is_ancestor_or_is(_itemIndex, obj_inventory_consumable_parent)){
	
}
else if(scr_is_ancestor_or_is(_itemIndex, obj_inventory_consumable_parent)){
	
}
else if(scr_is_ancestor_or_is(_itemIndex, obj_inventory_item_gold_parent)){
	
}
else if(scr_is_ancestor_or_is(_itemIndex, obj_inventory_key_parent)){
	
}





