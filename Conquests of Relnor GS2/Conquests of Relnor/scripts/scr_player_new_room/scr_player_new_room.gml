///@param x
///@param y
///@param room

scr_map_save_positions();

global.playerSpawnX = argument0;
global.playerSpawnY = argument1;
global.isInterior = scr_room_is_interior(argument2);
global.currentRoom = scr_room_get_id(argument2);

var _oldTime = instance_find(obj_map_time, 0);
var _foundOldTime = instance_exists(_oldTime);
	
if(!_foundOldTime){
	global.lightSurface = 0;
	global.time = 0;
	global.sun = noone;
}

room_goto(argument2);