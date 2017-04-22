/// @description Insert description here
// You can write your code in this editor
if(cellX != -1 && cellY != -1){
	mp_grid_clear_cell(global.worldMapGrid, cellX, cellY);
	global.worldMapControl.squares[cellX, cellY] = noone;
}
