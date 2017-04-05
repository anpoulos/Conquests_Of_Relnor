/// @description Insert description here
// You can write your code in this editor
event_inherited();

xOffset = 0;
yOffset = -25;

isStill = true;
hasDayFlicker = false;
hasNightFlicker = false;
flickerAmount = 10;

dayOpacity = 1.0;
nightOpacity = 1.0;
dayOpacityTargetDuringDay = 1.0;
nightOpacityTargetDuringDay = 0.0;
dayOpacityTargetDuringNight = 0.0;
nightOpacityTargetDuringNight = 1.0;

radius = 150;
nightRadiusTarget = 100;
dayRadiusTarget = 200;

strength = 1;
nightStrengthTarget = 0.25;
dayStrengthTarget = 1.0;

color[0] = 225;
color[1] = 225;
color[2] = 150;

lightColorRGB = make_color_rgb(color[0],color[1],color[2]);
lightDirection = LIGHT_DIRECTION_DOWN;

nightColorTarget[0] = 50;
nightColorTarget[1] = 50;
nightColorTarget[2] = 50;

dayColorTarget[0] = 225;
dayColorTarget[1] = 225;
dayColorTarget[2] = 150;

daySprite = sprite_index;
nightSprite = spr_light_window_dark;

scr_linked_list_add(global.additiveLights, self);

scr_map_light_calculate_dimensions();
scr_map_light_cycle_calc_light();