/// @description Insert description here
// You can write your code in this editor

global.time += 1;

if(global.time == 18000){
	if(irandom(2) == 0){
		global.moonTonight = irandom(2) == 0;
		global.sun.nightStrengthTarget = 0.5;
		global.sun.nightRadiusTarget = 4000;
	}
	else{
		global.sun.nightStrengthTarget = 0.0;
		global.sun.nightRadiusTarget = 0;
	}
}

if(global.time >= 7000 && global.time <= 20000){
	//nighttime to daytime transition
	if(!global.isInterior && global.sun.x > 0){
		global.sun.x -= sunStep;
		if(global.sun.x < 0){
			global.sun.x = 0;
		}
	} 
	if(global.time >= 10000 && global.time <= 12000){
		global.isNight = false;
		if(global.isInterior){
			global.shadowOpacity = global.shadowOpacityMax;
		}
		else if(global.shadowOpacity > 0){
			global.shadowOpacity -= shadowOpacityStep;
		}
	}
	if(global.time >= 18000){
		global.isNight = true;
		if(global.shadowOpacity < global.shadowOpacityMax){
			global.shadowOpacity += shadowOpacityStep;
		}
	}
}
else{
	global.isNight = true;
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