///scr_map_door_parent_opened


if(keyId != -1){
	var _objects = instance_number(obj_key_foreground);
	for(var j = 0; j < _objects ; j++){
		var _object = instance_find(obj_key_foreground, j);
		if(_object.keyId == keyId){
			_object.isVisible = false;
			_object.phy_active = false;
		}
	}
	return true;
}

if(destinationRoom != noone){
	global.mapSaves.destinationX = destinationX;
	global.mapSaves.destinationY = destinationY;
	global.mapSaves.destinationRoom = destinationRoom;
	global.mapSaves.isLoading = true;
	global.mapSaves.loadingOpacity = 0.1;
}
