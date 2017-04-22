/// @description Insert description here
// You can write your code in this editor

if(global.debug == 2 && scr_room_is_world_map(room)){
	draw_set_alpha(0.5);
	mp_grid_draw(global.worldMapGrid);
	draw_set_alpha(1.0);
}