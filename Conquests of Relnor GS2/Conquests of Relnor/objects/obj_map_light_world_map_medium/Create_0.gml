/// @description Insert description here
// You can write your code in this editor
event_inherited();

xOffset = 0;
yOffset = 0;

isStill = true;
hasDayFlicker = false;
hasNightFlicker = false;
flickerAmount = 10;

dayOpacity = 0.0;
nightOpacity = 0.0;
dayOpacityTargetDuringDay = 0.0;
nightOpacityTargetDuringDay = 0.0;
dayOpacityTargetDuringNight = 0.0;
nightOpacityTargetDuringNight = 0.0;

radius = 300;
nightRadiusTarget = 300;
dayRadiusTarget = 300;

strength = 1;
nightStrengthTarget = 1;
dayStrengthTarget = 1;

color[0] = 225;
color[1] = 225;
color[2] = 150;

lightColorRGB = make_color_rgb(color[0],color[1],color[2]);
lightDirection = LIGHT_DIRECTION_STANDARD;

nightColorTarget[0] = 225;
nightColorTarget[1] = 225;
nightColorTarget[2] = 150;

dayColorTarget[0] = 225;
dayColorTarget[1] = 225;
dayColorTarget[2] = 150;

daySprite = noone;
nightSprite = noone;

scr_linked_list_add(global.additiveLights, self);

scr_map_light_calculate_dimensions();
scr_map_light_cycle_calc_light();