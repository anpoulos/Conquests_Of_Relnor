/// @description Insert description here
// You can write your code in this editor

x = 0;
y = 0;
	
lightColorMax[0] = 200;
lightColorMax[1] = 200;
lightColorMax[2] = 175;
lightColorMin[0] = 50;
lightColorMin[1] = 50;
lightColorMin[2] = 50;
lightColor[0] = lightColorMax[0];
lightColor[1] = lightColorMax[1];
lightColor[2] = lightColorMax[2];

if(surface_exists(global.lightSurface)){
	surface_free(global.lightSurface);
}

global.lightSurface = surface_create(room_width, room_height);

depth = -1947482200;