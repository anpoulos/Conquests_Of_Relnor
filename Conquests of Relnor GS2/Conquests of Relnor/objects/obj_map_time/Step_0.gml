/// @description Insert description here
// You can write your code in this editor

global.time += 1;

if(global.time >= 7000 && global.time <= 20000){
	//nighttime to daytime transition
	if(!global.isInterior && global.sun.x > 0){
		global.sun.x -= sunStep;
		if(global.sun.x < 0){
			global.sun.x = 0;
		}
	} 
}
else{
	//daytime to nighttime transition
	if(!global.isInterior && global.sun.x < room_width){
		global.sun.x += sunStep;
		if(global.sun.x > room_width){
			global.sun.x = room_width;
		}
	} 
}


if(global.time >= 24000){
	global.time = 0;
}


surface_set_target(global.lightSurface);
	draw_set_color(minColorRGB);
	draw_rectangle(0,0,room_width, room_height, false);
surface_reset_target();