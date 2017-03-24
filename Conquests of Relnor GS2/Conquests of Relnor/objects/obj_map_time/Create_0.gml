/// @description Insert description here
// You can write your code in this editor

x = 0;
y = 0;

if(global.isInterior){
	lightColorMax[0] = 200;
	lightColorMax[1] = 200;
	lightColorMax[2] = 175;
	lightColorMin[0] = 50;
	lightColorMin[1] = 50;
	lightColorMin[2] = 50;
}
else{
	lightColorMax[0] = 250;
	lightColorMax[1] = 250;
	lightColorMax[2] = 200;
	lightColorMin[0] = 0;
	lightColorMin[1] = 0;
	lightColorMin[2] = 0;
	global.sun = instance_create(room_width-100, room_height, obj_map_light_sun);
	sunStep = round(room_width/200)
	if(global.time >= 700 && global.time <= 2000){
		var s = (global.time-700)/1300;
		global.sun.x = room_width - (room_width)*s;
		
	}
	else{
		
		var s = (t/1100);
	}
}
lightColor[0] = lightColorMax[0];
lightColor[1] = lightColorMax[1];
lightColor[2] = lightColorMax[2];

if(surface_exists(global.lightSurface)){
	surface_free(global.lightSurface);
}

global.lightSurface = surface_create(room_width, room_height);

minColorRGB = make_color_rgb(global.minLight,global.minLight,global.minLight);

depth = -1947482200;