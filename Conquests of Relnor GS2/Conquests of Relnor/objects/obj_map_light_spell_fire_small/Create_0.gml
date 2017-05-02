/// @description Insert description here
// You can write your code in this editor
event_inherited();

isVisible = false;

isAdditive = false;

xOffset = 0;
yOffset = 0;

leftX = lightX;
rightX = lightX;
topY = lightY;
bottomY = lightY;

isStill = false;
hasDayFlicker = true;
hasNightFlicker = true;
flickerAmount = 50;
lightFlickerOffset = 10;

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

color[0] = 150;
color[1] = 100;
color[2] = 0;

lightColorRGB = make_color_rgb(color[0],color[1],color[2]);
lightDirection = LIGHT_DIRECTION_STANDARD;

nightColorTarget[0] = color[0];
nightColorTarget[1] = color[1];
nightColorTarget[2] = color[2];

dayColorTarget[0] = color[0];
dayColorTarget[1] = color[1];
dayColorTarget[2] = color[2];

daySprite = noone;
nightSprite = noone;

isFire = false;
fireOpacity = 0.5;

scr_map_light_calculate_dimensions();
scr_map_light_cycle_calc_light();