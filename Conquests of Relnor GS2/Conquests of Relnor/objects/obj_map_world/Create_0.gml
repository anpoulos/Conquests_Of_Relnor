/// @description Insert description here
// You can write your code in this editor

var _tileOffset = 128;

global.worldMapGrid = mp_grid_create(-96,-96,room_width/_tileOffset, 
room_height/_tileOffset, _tileOffset, _tileOffset);
mp_potential_settings(45, 5, 5, true);

depth = -MAX;