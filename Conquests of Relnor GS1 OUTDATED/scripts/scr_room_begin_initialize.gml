///scr_room_begin_initialize

global.uniqueNpcId = 0;

global.tileOffset = 32;
global.aiGrid = mp_grid_create(0,0,room_width/global.tileOffset, 
room_height/global.tileOffset, global.tileOffset, global.tileOffset);
mp_potential_settings(45, 5, 5, true);
global.gamePaused = false;

