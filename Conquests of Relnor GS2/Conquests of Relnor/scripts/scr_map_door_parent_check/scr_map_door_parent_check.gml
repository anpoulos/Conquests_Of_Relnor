///scr_map_door_parent_check


var _isLocked = true;

if(keyId != -1){
	var _player = instance_find(obj_player, 0);
	for(var i = 0; i < INVENTORY_MAX && _isLocked; i++){
		var _item = _player.inventory[i];
		if(_item != noone && 
		_item.itemStats[ITEM_STATS_TYPE] == ITEM_TYPE_KEY &&
		_item.keyId == keyId &&
		_item.roomId == scr_room_get_id(room)){
			_isLocked = false;
		}
	}

	if(_isLocked){
		var _chatWindow = scr_ui_chat_constructor(noone, noone, "Notifications", "locked");
		scr_ui_open_chat(_chatWindow);
		return false;
	}

}

if(isOpen){
	isOpen = false;
}
else{
	isOpen = true;
}

if(isVisible){
	image_speed = 0.2;
}
else{
	if(isOpen){
		script_execute(doorOpenedScript);
	}
	else{
		script_execute(doorClosedScript);
	}
}