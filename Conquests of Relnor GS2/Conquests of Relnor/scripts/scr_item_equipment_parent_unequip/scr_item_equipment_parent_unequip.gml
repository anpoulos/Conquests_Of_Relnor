///scr_item_equipment_parent_unequip

var _freeSpaceNeeded = 1;

if(scr_lifeform_parent_inventory_get_free_space(owner) < _freeSpaceNeeded){
    show_message("Not enough inventory space available!");
    return false;
}

//unequip item
owner.equipment[self.equipmentStats[EQUIPMENT_STATS_TYPE]] = noone;

scr_lifeform_parent_inventory_add(owner, self);
scr_player_gui_update_all(true);

return true;
