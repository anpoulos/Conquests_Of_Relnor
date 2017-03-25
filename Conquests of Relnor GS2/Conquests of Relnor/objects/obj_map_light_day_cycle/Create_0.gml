/// @description Insert description here
// You can write your code in this editor
event_inherited();

isStill = false;

scr_map_light_reset(self, 100, noone, c_ltgray);

maxRadius = round(radius*2.0);
minRadius = radius;
radiusStep = 7;

lightColorMax[0] = 250;
lightColorMax[1] = 250;
lightColorMax[2] = 150;

lightColorMin[0] = 0;
lightColorMin[1] = 0;
lightColorMin[2] = 0;

lightColor[0] = 0;
lightColor[1] = 0;
lightColor[2] = 0;

lightStep = 10;

lightColorRGB = make_color_rgb(lightColor[0], lightColor[1], lightColor[2]);

nightSprite = noone;
daySprite = noone;

scr_map_light_cycle_calc_light();