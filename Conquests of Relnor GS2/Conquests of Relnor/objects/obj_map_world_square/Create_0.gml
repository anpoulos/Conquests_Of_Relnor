/// @description Insert description here
// You can write your code in this editor

isVisible = true;
allegiance = ALLEGIANCE_NEUTRAL;
color = c_black;
cellX = -1;
cellY = -1;
sprite = sprite_index;
hasTurn = true;

scr_map_world_square_set_cell(self);

roomId = scr_room_get_id(room);