///scr_player_new_room(x,y,room)
global.playerSpawnX = argument0;
global.playerSpawnY = argument1;
global.isInterior = scr_room_is_interior(argument2);

var _oldTime = instance_find(obj_map_time, 0);
var _foundOldTime = instance_exists(_oldTime);
	
if(!_foundOldTime){
	global.lightSurface = 0;
	global.time = 0;
	global.nightOpacity = 0.0;
	global.lightSurfaceRGB = 0;
	global.maxLight = 0;
	global.minLight = 225;
	global.lightSurface = 0;
	global.lightStep = 5;
	global.forceNight = false;
	global.lightColorRGB = make_color_rgb(0,0,0);
	global.sun = noone;
	global.shadowOpacity = 0.0;
	global.shadowOpacityMax = 0.5;
}

room_goto(argument2);