/// @description Insert description here
// You can write your code in this editor
event_inherited();

flame = instance_create(x,y-37, obj_map_light_candle_flame);

flame.depth = depth - 1;
image_speed = 0.0;
image_index = 0;