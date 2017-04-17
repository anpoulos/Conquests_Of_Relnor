///@param x
///@param y
///@param room

scr_linked_list_clear(global.additiveLights);

scr_map_save_positions();

global.playerSpawnX = argument0;
global.playerSpawnY = argument1;
global.isInterior = scr_room_is_interior(argument2);

var _oldTime = instance_find(obj_map_time, 0);
var _foundOldTime = instance_exists(_oldTime);
	
if(!_foundOldTime){
	global.shadowSurface = 0;
	global.lightSurface = 0;
	global.isNight = false;
	global.time = 0;
	global.sun = noone;
}



room_goto(argument2);