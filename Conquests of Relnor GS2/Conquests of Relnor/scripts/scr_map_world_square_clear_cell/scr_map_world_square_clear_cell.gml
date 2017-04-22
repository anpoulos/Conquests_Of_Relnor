///@param obj_square

if(argument0.cellX == -1 || argument0.cellY == -1){
	return false;
}

mp_grid_clear_cell(global.worldMapGrid, argument0.cellX, argument0.cellY);

global.worldMapControl.squares[argument0.cellX, argument0.cellY] = noone;

argument0.cellX = -1;
argument0.cellY = -1;
