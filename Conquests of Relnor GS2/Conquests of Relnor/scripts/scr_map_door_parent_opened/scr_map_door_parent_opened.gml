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

if(destinationRoom == noone && facingDirection == noone){
	var _directionFromMiddle = point_direction(room_width div 2, room_height div 2, x,y);
	if(_directionFromMiddle < 45 || _directionFromMiddle >= 315){
		facingDirection = EAST;
	}
	if(_directionFromMiddle >= 45 && _directionFromMiddle < 135){
		facingDirection = NORTH;
	}
	if(_directionFromMiddle >= 135 && _directionFromMiddle < 225){
		facingDirection = WEST;
	}
	if(_directionFromMiddle >= 225 && _directionFromMiddle < 315){
		facingDirection = SOUTH;
	}
}

global.mapControl.destinationX = destinationX;
global.mapControl.destinationY = destinationY;
global.mapControl.destinationRoom = destinationRoom;
global.mapControl.isLoading = true;
global.mapControl.loadingOpacity = 0.1;
global.mapControl.previousDirection = facingDirection;
global.mapControl.previousX = x;
global.mapControl.previousY = y;