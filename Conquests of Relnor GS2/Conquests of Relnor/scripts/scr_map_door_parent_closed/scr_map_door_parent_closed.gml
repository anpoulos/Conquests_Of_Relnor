///scr_map_door_parent_closed

if(keyId != -1){
	var _objects = instance_number(obj_key_foreground);
	for(var j = 0; j < _objects ; j++){
		var _object = instance_find(obj_key_foreground, j);
		if(_object.keyId == keyId){
			_object.isVisible = true;
			_object.phy_active = true;
		}
	}
	return true;
}
