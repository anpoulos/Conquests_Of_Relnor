/// @description Insert description here
// You can write your code in this editor

cellX = scr_map_square_get_cell_coordinate(global.player.x);
cellY = scr_map_square_get_cell_coordinate(global.player.y);

x = scr_map_square_get_transformed_coordinate(cellX);
y = scr_map_square_get_transformed_coordinate(cellY);