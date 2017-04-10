///scr_map_door_parent_opened

if(destinationRoom != noone){
	global.mapSaves.destinationX = destinationX;
	global.mapSaves.destinationY = destinationY;
	global.mapSaves.destinationRoom = destinationRoom;
	global.mapSaves.isLoading = true;
	global.mapSaves.loadingOpacity = 0.1;
}
else if(keyId != -1){
	var _player = instance_find(obj_player, 0);

	for(var i = 0; i < INVENTORY_MAX; i++){
		var _item = _player.inventory[i];
		if(_item != noone && 
		_item.itemStats[ITEM_STATS_TYPE] == ITEM_TYPE_KEY &&
		_item.keyId == keyId &&
		_item.roomId == scr_room_get_id(room)){
			var _objects = instance_number(obj_map_parent);
			for(var j = 0; j < _objects ; j++){
				var _object = instance_find(obj_map_parent, j);
				if(_object.keyId == _item.keyId){
					if(isOpen){
						_object.isVisible = false;
						_object.phy_active = false;
					}
					else{
						_object.isVisible = true;
						_object.phy_active = true;
					}
				}
			}
			return true;
		}
	}
}
