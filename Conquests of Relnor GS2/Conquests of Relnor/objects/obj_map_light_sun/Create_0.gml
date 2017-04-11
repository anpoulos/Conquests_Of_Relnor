/// @description Insert description here
// You can write your code in this editor

event_inherited();

isAdditive = true;

depth = -MAX;

if(global.time >= 7000 && global.time <= 20000){
	var s = (global.time-7000)/13000;
	x = room_width - (room_width)*s;
}
else{
	var t = global.time;
	if(t <= 24000 && t >= 20000){
		t -= 20000;
	}
	else{
		t += 4000;
	}
	var s = (t/11000);
	x = (room_width)*s;
}

xOffset = 0;
yOffset = 0;
lightX = x+xOffset;
lightY = y+yOffset;

leftX = lightX;
rightX = lightX;
topY = lightY;
bottomY = lightY;

isStill = false;

hasDayFlicker = false;
hasNightFlicker = false;
flickerAmount = 10;
lightFlickerOffset = 5;

isFire = false;
fireOpacity = 0.5;

daySprite = noone;
nightSprite = noone;

dayOpacity = 1.0;
nightOpacity = 1.0;
dayOpacityTargetDuringDay = 1.0;
nightOpacityTargetDuringDay = 1.0;
dayOpacityTargetDuringNight = 1.0;
nightOpacityTargetDuringNight = 1.0;
opacityIncrement = 0.01;
opacityDecrement = 0.01;

radius = 2000;
nightRadiusTarget = 0;
dayRadiusTarget = 4000;
radiusIncrement = 10;
radiusDecrement = 10;

strength = 0.5;
nightStrengthTarget = 0.0;
if(global.moonTonight){
	nightStrengthTarget = 0.5;
	nightRadiusTarget = 4000;
}
dayStrengthTarget = 1.0;
strengthIncrement = 0.01;
strengthDecrement = 0.01;

dayColorTarget[0] = 255;
dayColorTarget[1] = 255;
dayColorTarget[2] = 200;

nightColorTarget[0] = 10;
nightColorTarget[1] = 10;
nightColorTarget[2] = 20;

colorIncrement = 1;
colorDecrement = 1;

color[0] = 100;
color[1] = 100;
color[2] = 100;

lightColorRGB = make_color_rgb(color[0],color[1],color[2]);
lightDirection = LIGHT_DIRECTION_STANDARD;

scr_map_light_calculate_dimensions();
scr_map_light_cycle_calc_light();