/// @description Insert description here
// You can write your code in this editor
event_inherited();

daySprite = noone;
nightSprite = noone;
isStill = true;

scr_map_light_reset(self, 100, noone, c_ltgray);

maxRadius = round(radius*2.0);
minRadius = radius;
radiusStep = 3;
isHidden = false;