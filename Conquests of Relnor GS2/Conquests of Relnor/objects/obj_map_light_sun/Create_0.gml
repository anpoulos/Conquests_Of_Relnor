/// @description Insert description here
// You can write your code in this editor

event_inherited();

isStill = true;

scr_map_light_reset(self, 2000, -MAX, noone);

maxRadius = round(radius*2.0);
radiusStep = 40;
minRadius = 2000;

if(global.time >= 700 && global.time <= 2000){
	var s = (global.time-700)/1300;
	x = room_width - (room_width)*s;
	global.shadowOpacity = global.shadowOpacityMax*s;
	global.nightShadowOpacity = 0.0;
}
else{
	var t = global.time;
	if(t <= 2400 && t >= 2000){
		t -= 2000;
	}
	else{
		t += 400;
	}
	var s = (t/1100);
	x = (room_width)*s;
	global.shadowOpacity = 0.0;
	global.nightShadowOpacity = global.shadowOpacityMax*s;
}

scr_map_light_cycle_calc_light();