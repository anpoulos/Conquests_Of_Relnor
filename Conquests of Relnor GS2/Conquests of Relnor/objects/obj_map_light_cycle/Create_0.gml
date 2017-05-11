/// @description Insert description here
// You can write your code in this editor

image_speed += scr_misc_random_sign(5)*0.1; //multiply by 0.1 to avoid dividing by zero

isVisible = true;

xOffset = 0;
yOffset = 0;
lightX = x+xOffset;
lightY = y+yOffset;

leftX = lightX;
rightX = lightX;
topY = lightY;
bottomY = lightY;

isStill = true;

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
nightOpacityTargetDuringDay = 0.0;
dayOpacityTargetDuringNight = 0.0;
nightOpacityTargetDuringNight = 1.0;
opacityIncrement = 0.01;
opacityDecrement = 0.01;

radius = 100;
nightRadiusTarget = 50;
dayRadiusTarget = 400;
radiusIncrement = 1;
radiusDecrement = 1;

strength = 0.5;
nightStrengthTarget = 0.5;
dayStrengthTarget = 0.5;
strengthIncrement = 0.01;
strengthDecrement = 0.01;

dayColorTarget[0] = 225;
dayColorTarget[1] = 225;
dayColorTarget[2] = 150;

nightColorTarget[0] = 50;
nightColorTarget[1] = 50;
nightColorTarget[2] = 50;

colorIncrement = 1;
colorDecrement = 1;

color[0] = 100;
color[1] = 100;
color[2] = 100;

lightColorRGB = make_color_rgb(color[0],color[1],color[2]);
lightDirection = LIGHT_DIRECTION_STANDARD;

scr_map_light_calculate_dimensions();
scr_map_light_cycle_calc_light();