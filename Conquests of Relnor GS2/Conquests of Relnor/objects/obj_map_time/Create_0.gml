/// @description Insert description here
// You can write your code in this editor

x = 0;
y = 0;

if(surface_exists(global.lightSurface)){
	surface_free(global.lightSurface);
}

global.lightSurface = surface_create(room_width, room_height);

depth = -1947482200;