///scr_item_equipment_parent_unequip
///used by the item

var _freeSpaceNeeded = 1;

if(scr_lifeform_parent_inventory_get_free_space(owner) < _freeSpaceNeeded){
    if(owner.object_index == obj_player){
		var _chatWindow = scr_ui_chat_constructor(noone, noone, "Notifications", "inventoryFull");
		scr_ui_open_chat(_chatWindow);
	}
    return false;
}

//unequip item
owner.equipment[equipmentStats[EQUIPMENT_STATS_TYPE]] = noone;

isEquipped = false;

scr_lifeform_update_defence(owner);

if(scr_linked_list_size(specials) > 0){

	//remove specials from owner's specials
	var _totalSpecials = scr_linked_list_size(specials);
	for(var i = 0; i < _totalSpecials; i++){
		scr_linked_list_remove(owner.specials, scr_linked_list_get_next(specials));
	}
	
	//if owner had a special equipped from this item
	if(owner.currentSpecial != noone && scr_linked_list_exists_short_circuit(specials, owner.currentSpecial.object_index)){
		instance_destroy(owner.currentSpecial);
		owner.currentSpecial = noone;
		if(scr_linked_list_size(owner.specials) > 0){
			owner.currentSpecial = instance_create(0,0, scr_linked_list_get_next(owner.specials));
		}
	}
	
}

scr_lifeform_parent_inventory_add(owner, self);
if(global.gamePaused){
	scr_player_gui_update_all(true);
}

return true;
