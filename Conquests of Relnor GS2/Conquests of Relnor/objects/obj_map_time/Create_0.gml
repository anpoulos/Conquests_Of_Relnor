/// @description Insert description here
// You can write your code in this editor

x = 0;
y = 0;

//global.moonTonight = irandom(2) == 0;

if(!global.isInterior){
	if(global.isWorldMap){
		minColorRGB = make_color_rgb(125,125,125);
	}
	else{
		if(global.moonTonight){
			minColorRGB = make_color_rgb(245,245,235);
		}
		else{
			minColorRGB = make_color_rgb(250,250,250);
		}
	}
	if(instance_exists(global.sun)){
		instance_destroy(global.sun);
	}
	global.sun = instance_create(room_width-100, room_height, obj_map_light_sun);
	
	sunStep = room_width/10000;
}
else{
	minColorRGB = make_color_rgb(255,255,255);
}

if(surface_exists(global.lightSurface)){
	surface_free(global.lightSurface);
}

global.lightSurface = surface_create(room_width, room_height);

shadowOpacityStep = 0.001;

depth = -1947482200;

