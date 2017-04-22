///@param cellX
///@param cellY
///@param obj_square

var _cellX = argument0;
var _cellY = argument1;

if(global.worldMapControl.squares[_cellX, _cellY] != noone){
	return noone;
}

var _square = instance_create(scr_map_square_get_transformed_coordinate(_cellX), 
	scr_map_square_get_transformed_coordinate(_cellY), argument2);

return _square;