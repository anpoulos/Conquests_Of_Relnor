/// @description Insert description here
// You can write your code in this editor
event_inherited();

isVisible = false;

xOffset = 0;
yOffset = 0;

leftX = lightX;
rightX = lightX;
topY = lightY;
bottomY = lightY;

isStill = false;
hasDayFlicker = false;
hasNightFlicker = false;
flickerAmount = 20;
lightFlickerOffset = 5;

dayOpacity = 1.0;
nightOpacity = 1.0;
dayOpacityTargetDuringDay = 1.0;
nightOpacityTargetDuringDay = 1.0;
dayOpacityTargetDuringNight = 1.0;
nightOpacityTargetDuringNight = 1.0;

radius = 100;
nightRadiusTarget = 100;
dayRadiusTarget = 100;

strength = 0.5;
nightStrengthTarget = 1.0;
dayStrengthTarget = 1.0;

color[0] = 200;
color[1] = 200;
color[2] = 200;

lightColorRGB = make_color_rgb(color[0],color[1],color[2]);
lightDirection = LIGHT_DIRECTION_STANDARD;

nightColorTarget[0] = 200;
nightColorTarget[1] = 200;
nightColorTarget[2] = 200;

dayColorTarget[0] = 200;
dayColorTarget[1] = 200;
dayColorTarget[2] = 200;

daySprite = noone;
nightSprite = noone;

isFire = true;
fireOpacity = 0.5;

scr_map_light_calculate_dimensions();
scr_map_light_cycle_calc_light();