/// @description Insert description here
// You can write your code in this editor
event_inherited();

isStill = false;

scr_map_light_reset(self, 100, noone, c_ltgray);

maxRadius = round(radius*2.0);
minRadius = radius;
radiusStep = 5;

lightColorMax[0] = 150;
lightColorMax[1] = 150;
lightColorMax[2] = 50;

lightColorMin[0] = 0;
lightColorMin[1] = 0;
lightColorMin[2] = 0;

lightColor[0] = 0;
lightColor[1] = 0;
lightColor[2] = 0;

lightStep = 7;

lightColorRGB = make_color_rgb(lightColor[0], lightColor[1], lightColor[2]);

nightSprite = noone;
daySprite = noone;

scr_map_light_cycle_calc_light();