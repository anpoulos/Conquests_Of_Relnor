///self is the item

for(var i = 0; i < INVENTORY_MAX; i++){
	var _item = owner.inventory[i];
	if(_item != noone && _item == self){
	
		if(_item.object_index == obj_equipment_torch_parent || object_is_ancestor(_item.object_index, obj_equipment_torch_parent)){
			if(_item.flame != noone && instance_exists(_item.flame)){
				instance_destroy(_item.flame);
				_item.flame = noone; 
			}
		}
		
		_item.x = _item.owner.x;
		_item.y = _item.owner.y;
		
		owner.inventory[i] = noone;
		owner = noone;
		_item.isVisible = true;
		break;
	}
}

if(global.gamePaused){
	scr_player_gui_update_all(true);
}