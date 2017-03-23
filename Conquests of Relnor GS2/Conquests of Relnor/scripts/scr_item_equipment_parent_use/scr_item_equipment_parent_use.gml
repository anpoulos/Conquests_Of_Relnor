///scr_item_equipment_parent_use

var _freeSpaceNeeded = 0;
var _inventorySlot = scr_item_inventory_get_slot(self);

owner.inventory[_inventorySlot] = noone;

//item is already in that equipment slot
var _alreadyEquippedItem = owner.equipment[self.equipmentStats[EQUIPMENT_STATS_TYPE]];
if(_alreadyEquippedItem != noone){
    if(scr_lifeform_parent_inventory_get_free_space(owner) < _freeSpaceNeeded){
        show_message("Not enough inventory space available!");
        owner.inventory[_inventorySlot] = self; //revert changes
        return false;
    }    
    scr_lifeform_parent_inventory_add(owner, _alreadyEquippedItem); //unequip item to inventory
}

owner.equipment[self.equipmentStats[EQUIPMENT_STATS_TYPE]] = self; //equip equipment item

if(global.gamePaused){
	scr_player_gui_update_all(true);
}
