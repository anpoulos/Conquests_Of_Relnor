///self is the item

for(var i = 0; i < INVENTORY_MAX; i++){
	var _item = owner.inventory[i];
	if(_item != noone && _item == self){
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