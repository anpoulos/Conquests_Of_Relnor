///scr_item_equipment_parent_use

var _freeSpaceNeeded = 0;

var _unequipTheseItems = scr_linked_list_create();

for(var i = 0; i < EQUIPMENT_TYPE_MAX; i++){
	if(equipmentSlots[i]){
		for(var j = 0; j < EQUIPMENT_TYPE_MAX; j++){
			var _equipment = owner.equipment[j];
			if(_equipment != noone){
				for(var k = 0; k < EQUIPMENT_TYPE_MAX; k++){
					if(_equipment.equipmentSlots[k] && k == i){
						_freeSpaceNeeded += 1;
						if(!scr_linked_list_exists(_unequipTheseItems, _equipment)){
							scr_linked_list_add(_unequipTheseItems, _equipment);
						}
					}
				}
			}
		}
	}
}

if(owner.equipment[equipmentStats[EQUIPMENT_STATS_TYPE]] != noone){
	_freeSpaceNeeded -= 1;
}

if(scr_lifeform_parent_inventory_get_free_space(owner) >= _freeSpaceNeeded){
	var _inventorySlot = scr_item_inventory_get_slot(self);
	if(_inventorySlot != -1){ //means item was equipped from inventory
		owner.inventory[_inventorySlot] = noone;
	}
	
	while(!scr_linked_list_is_empty(_unequipTheseItems)){
		scr_lifeform_parent_inventory_unequip(scr_linked_list_remove_next(_unequipTheseItems));
	}
	
	owner.equipment[equipmentStats[EQUIPMENT_STATS_TYPE]] = self;

	if(owner.object_index == obj_player){
		with(owner){
			scr_player_gui_update_information();
		}
	}

	isEquipped = true;

	scr_lifeform_update_defence(owner);

	if(global.gamePaused){ //means item was equipped via the party ui for an npc/player
		scr_player_gui_update_all(true);
	}
	
	scr_linked_list_destroy(_unequipTheseItems);
	
	return true;
}
else{
	if(owner.object_index == obj_player){
		var _chatWindow = scr_ui_chat_constructor(noone, noone, "Notifications", "inventoryFull");
		scr_ui_open_chat(_chatWindow);
	}
	
	scr_linked_list_destroy(_unequipTheseItems);
	
	return false;
}


