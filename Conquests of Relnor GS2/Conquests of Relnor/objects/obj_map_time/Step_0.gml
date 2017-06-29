/// @description Insert description here
// You can write your code in this editor

if(global.gamePaused){
	surface_set_target(global.lightSurface);
		draw_set_color(minColorRGB);
		draw_rectangle(0,0,room_width, room_height, false);
	surface_reset_target();
	return true;
}

if(global.time == 18000){
	if(global.isWorldMap){
		minColorRGB = make_color_rgb(125,125,125);
	}
	else{
		global.moonTonight = irandom(2) == 0;
		if(!global.isInterior && global.moonTonight){
			minColorRGB = make_color_rgb(245,245,235);
		}
		else{
			minColorRGB = make_color_rgb(250,250,250);
		}
	}
	
	//if(!global.isInterior && global.sun != noone){
	//	if(global.moonTonight){
	//		global.sun.nightStrengthTarget = 0.5;
	//		global.sun.nightRadiusTarget = 4000;
	//		scr_linked_list_remove(global.additiveLights, global.sun);
	//	}
	//	else{
	//		global.sun.nightStrengthTarget = 0.0;
	//		global.sun.nightRadiusTarget = 0;
	//		if(!scr_linked_list_exists(global.additiveLights, global.sun)){
	//			scr_linked_list_add(global.additiveLights, global.sun);
	//		}
	//	}
	//}
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

surface_set_target(global.lightSurface);
	draw_set_color(minColorRGB);
	draw_rectangle(0,0,room_width, room_height, false);
surface_reset_target();

global.time += global.timeIncrement;

if(global.time >= 24000){
	global.time = 0;
}
