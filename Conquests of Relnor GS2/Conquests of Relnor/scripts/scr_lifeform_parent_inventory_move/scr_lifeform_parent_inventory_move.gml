///@param originalLifeform
///@param item
///@param recipient

var _originalOwner = argument0;
var _moveItem = argument1;
var _newOwner = argument2;

if(scr_lifeform_parent_inventory_get_free_space(_newOwner) == 0){
	return false;
}

for(var i = 0; i < INVENTORY_MAX; i++){
	var _item = _originalOwner.inventory[i];
	if(_item == _moveItem){
		_originalOwner.inventory[i] = noone;
		break;
	}
}

scr_lifeform_parent_inventory_add(_newOwner, _moveItem);

if(global.gamePaused){
	with(global.player){
		scr_ui_party_inventory_equipment_refresh(true);
		scr_player_gui_party_update_character_stats();
	}
}

return true;