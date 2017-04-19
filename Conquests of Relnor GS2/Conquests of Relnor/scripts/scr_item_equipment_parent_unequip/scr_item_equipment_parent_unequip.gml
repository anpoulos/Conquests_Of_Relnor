///scr_item_equipment_parent_unequip

var _freeSpaceNeeded = 1;

if(scr_lifeform_parent_inventory_get_free_space(owner) < _freeSpaceNeeded){
    if(owner.object_index == obj_player){
		var _chatWindow = scr_ui_chat_constructor(noone, noone, "Notifications", "inventoryFull");
		scr_ui_open_chat(_chatWindow);
	}
    return false;
}

//unequip item
owner.equipment[self.equipmentStats[EQUIPMENT_STATS_TYPE]] = noone;

isEquipped = false;

scr_lifeform_update_defence(owner);

scr_lifeform_parent_inventory_add(owner, self);
if(global.gamePaused){
	scr_player_gui_update_all(true);
}

return true;
