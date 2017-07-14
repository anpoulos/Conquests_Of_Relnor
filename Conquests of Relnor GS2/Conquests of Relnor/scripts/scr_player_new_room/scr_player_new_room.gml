///@param x
///@param y
///@param room
///@param previousDirection

var _destinationX = argument0;
var _destinationY = argument1;
var _newRoom = argument2;
var _previousDirection = argument3;

scr_ui_virtual_mouse_cleanup_from_player();

scr_linked_list_destroy(global.additiveLights);

global.additiveLights = scr_linked_list_create();

scr_map_save_positions();

if(_previousDirection != noone){
	var _currentRoomPoint = scr_room_get_point(room);
	switch(_previousDirection){
		case EAST:
			_newRoom = scr_room_get_by_point(_currentRoomPoint.x + 1, _currentRoomPoint.y);
		break;
		case WEST:
			_newRoom = scr_room_get_by_point(_currentRoomPoint.x - 1, _currentRoomPoint.y);
		break;
		case NORTH:
			_newRoom = scr_room_get_by_point(_currentRoomPoint.x, _currentRoomPoint.y - 1);
		break;
		case SOUTH:
			_newRoom = scr_room_get_by_point(_currentRoomPoint.x, _currentRoomPoint.y + 1);
		break;
	}
	instance_destroy(_currentRoomPoint);
}
else{
	global.playerSpawnX = _destinationX;
	global.playerSpawnY = _destinationY;
}

global.isInterior = scr_room_is_interior(_newRoom);
global.isWorldMap = scr_room_is_world_map(_newRoom);

var _oldTime = instance_find(obj_map_time, 0);
var _foundOldTime = instance_exists(_oldTime);
	
if(!_foundOldTime){
	global.lightSurface = 0;
	global.isNight = false;
	global.time = 0;
	global.sun = noone;
}

if(global.allNpcs != noone){
	scr_linked_list_destroy(global.allNpcs);
}

global.allNpcs = scr_linked_list_create();

room_goto(_newRoom);
