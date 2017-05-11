/// @description Insert description here
// You can write your code in this editor
event_inherited();

depth = -round(MAX/2);

xOffset = 0;
yOffset = 0;

leftX = lightX;
rightX = lightX;
topY = lightY;
bottomY = lightY;

isStill = false;
hasDayFlicker = true;
hasNightFlicker = true;
flickerAmount = 20;
lightFlickerOffset = 5;

dayOpacity = 1.0;
nightOpacity = 1.0;
dayOpacityTargetDuringDay = 1.0;
nightOpacityTargetDuringDay = 1.0;
dayOpacityTargetDuringNight = 1.0;
nightOpacityTargetDuringNight = 1.0;

radius = 200;
nightRadiusTarget = 200;
dayRadiusTarget = 200;

strength = 1;
nightStrengthTarget = 1.0;
dayStrengthTarget = 1.0;

color[0] = 255;
color[1] = 100;
color[2] = 0;

lightColorRGB = make_color_rgb(color[0],color[1],color[2]);
lightDirection = LIGHT_DIRECTION_STANDARD;

nightColorTarget[0] = 255;
nightColorTarget[1] = 100;
nightColorTarget[2] = 0;

dayColorTarget[0] = 255;
dayColorTarget[1] = 100;
dayColorTarget[2] = 0;

daySprite = noone;
nightSprite = noone;

isFire = true;
fireOpacity = 0.5;

scr_map_light_calculate_dimensions();
scr_map_light_cycle_calc_light();