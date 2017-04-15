/// @description Insert description here
// You can write your code in this editor
event_inherited();

var _x = x+1;
var _y = y-60;
var _flame = instance_create(_x,_y, obj_map_light_lamp_flame);
_flame.depth = depth + 1;
_flame.xOffset = 1;
_flame.yOffset = 60;

var _x = x+18;
var _y = y-55;
var _flame = instance_create(_x,_y, obj_map_light_lamp_flame);
_flame.depth = depth + 1;
_flame.xOffset = -18;
_flame.yOffset = 55;

var _x = x-16;
var _y = y-55;
var _flame = instance_create(_x,_y, obj_map_light_lamp_flame);
_flame.depth = depth + 1;
_flame.xOffset = 16;
_flame.yOffset = 55;

image_speed = 0.0;
image_index = 0;