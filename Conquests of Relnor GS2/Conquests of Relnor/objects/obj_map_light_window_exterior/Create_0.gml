/// @description Insert description here
// You can write your code in this editor

event_inherited();

xOffset = 0;
yOffset = -25;
lightX = x+xOffset;
lightY = y+yOffset;

leftX = lightX;
rightX = lightX;
topY = lightY;
bottomY = lightY;

isStill = true;

hasDayFlicker = false;
hasNightFlicker = true;
flickerAmount = 10;
lightFlickerOffset = 5;

isFire = false;
fireOpacity = 0.5;

nightSprite = sprite_index;
daySprite = spr_light_window_dark;

dayOpacity = 1.0;
nightOpacity = 1.0;
dayOpacityTargetDuringDay = 1.0;
nightOpacityTargetDuringDay = 0.0;
dayOpacityTargetDuringNight = 0.0;
nightOpacityTargetDuringNight = 1.0;
opacityIncrement = 0.01;
opacityDecrement = 0.01;

radius = 100;
nightRadiusTarget = 200;
dayRadiusTarget = 50;
radiusIncrement = 1;
radiusDecrement = 1;

strength = 0.5;
nightStrengthTarget = 0.75;
dayStrengthTarget = 0.0;
strengthIncrement = 0.01;
strengthDecrement = 0.01;

dayColorTarget[0] = 0;
dayColorTarget[1] = 0;
dayColorTarget[2] = 0;

nightColorTarget[0] = 200;
nightColorTarget[1] = 200;
nightColorTarget[2] = 75;

colorIncrement = 1;
colorDecrement = 1;

color[0] = 100;
color[1] = 100;
color[2] = 100;

scr_linked_list_add(global.additiveLights, self);

lightColorRGB = make_color_rgb(color[0],color[1],color[2]);
lightDirection = LIGHT_DIRECTION_DOWN;

scr_map_light_calculate_dimensions();
scr_map_light_cycle_calc_light();