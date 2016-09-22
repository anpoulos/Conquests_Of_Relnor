///scr_room_initialize

global.uniqueNpcId = 0;

global.tileOffset = 24;
global.aiGrid = mp_grid_create(0,0,room_width/global.tileOffset, 
room_height/global.tileOffset, global.tileOffset, global.tileOffset);
mp_potential_settings(45, 5, 5, true);
