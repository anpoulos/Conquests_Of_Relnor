///scr_room_begin_initialize(tileOffset)
randomize();

var _tileOffset = argument0;

global.uniqueNpcId = 0;

global.tileOffset = _tileOffset;
global.aiGrid = mp_grid_create(0,0,room_width/global.tileOffset, 
room_height/global.tileOffset, global.tileOffset, global.tileOffset);
mp_potential_settings(45, 5, 5, true);
global.gamePaused = false;

scr_map_load_positions();