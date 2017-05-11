/// @description Insert description here
// You can write your code in this editor
event_inherited();

xOffset = 0;
yOffset = 0;

leftX = lightX;
rightX = lightX;
topY = lightY;
bottomY = lightY;

isStill = true;
hasDayFlicker = true;
hasNightFlicker = true;
flickerAmount = 10;
lightFlickerOffset = 10;

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

color[0] = 125;
color[1] = 75;
color[2] = 25;

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

isFire = true;
fireOpacity = 0.5;

scr_linked_list_add(global.additiveLights, self);

scr_map_light_calculate_dimensions();
scr_map_light_cycle_calc_light();