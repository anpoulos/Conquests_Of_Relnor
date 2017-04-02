///scr_item_equipment_parent_use

var _freeSpaceNeeded = 0;
var _inventorySlot = scr_item_inventory_get_slot(self);

if(_inventorySlot != -1){
	owner.inventory[_inventorySlot] = noone;
}

//item is already in that equipment slot
var _alreadyEquippedItem = owner.equipment[self.equipmentStats[EQUIPMENT_STATS_TYPE]];
if(_alreadyEquippedItem != noone){
    if(scr_lifeform_parent_inventory_get_free_space(owner) < _freeSpaceNeeded){
        show_message("Not enough inventory space available!");
        owner.inventory[_inventorySlot] = self; //revert changes
        return false;
    }    
	with(_alreadyEquippedItem){
		script_execute(unequipScript);
	}
    //scr_lifeform_parent_inventory_add(owner, _alreadyEquippedItem); //unequip item to inventory
}

owner.equipment[self.equipmentStats[EQUIPMENT_STATS_TYPE]] = self; //equip equipment item

if(owner.object_index == obj_player){
	with(owner){
		scr_player_gui_update_information();
	}
}

isEquipped = true;

scr_lifeform_update_defence(owner);

if(global.gamePaused){
	scr_player_gui_update_all(true);
}