///@param obj_square

scr_map_world_square_clear_cell(argument0);

argument0.cellX = scr_map_square_get_cell_coordinate(argument0.x);
argument0.cellY = scr_map_square_get_cell_coordinate(argument0.y);
mp_grid_add_cell(global.worldMapGrid, argument0.cellX, argument0.cellY);

global.worldMapControl.squares[argument0.cellX, argument0.cellY] = argument0;