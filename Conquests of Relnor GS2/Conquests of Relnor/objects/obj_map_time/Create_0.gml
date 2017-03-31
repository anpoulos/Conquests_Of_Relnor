/// @description Insert description here
// You can write your code in this editor

x = 0;
y = 0;

if(!global.isInterior){
	if(instance_exists(global.sun)){
		instance_destroy(global.sun);
	}
	global.sun = instance_create(room_width-100, room_height, obj_map_light_sun);
	sunStep = room_width/10000;
}

if(surface_exists(global.lightSurface)){
	surface_free(global.lightSurface);
}

global.lightSurface = surface_create(room_width, room_height);
global.shadowSurface = surface_create(room_width, room_height);

minColorRGB = make_color_rgb(225,225,225);

depth = -1947482200;

