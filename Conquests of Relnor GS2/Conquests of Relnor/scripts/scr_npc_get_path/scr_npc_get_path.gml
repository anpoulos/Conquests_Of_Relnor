///@param npc
///@param destinationX
///@param destinationY
///@param path

var _currentCellX = argument0.x div global.tileOffset;
var _currentCellY = argument0.y div global.tileOffset;
var _destinationCellX = argument1 div global.tileOffset;
var _destinationCellY = argument2 div global.tileOffset;

var _liftedOurCell = false;
var _liftedDestinationCell = false;

if(mp_grid_get_cell(global.aiGrid, _currentCellX, _currentCellY) == -1){
	mp_grid_clear_cell(global.aiGrid, _currentCellX, _currentCellY);
	_liftedOurCell = true;
}

if(mp_grid_get_cell(global.aiGrid, _destinationCellX, _destinationCellY) == -1){
	mp_grid_clear_cell(global.aiGrid, _destinationCellX, _destinationCellY);
	_liftedDestinationCell = true;
}

var _foundPath = scr_npc_find_path(argument0, argument3, argument1, argument2);

if(_liftedOurCell){
	mp_grid_add_cell(global.aiGrid, _currentCellX, _currentCellY);
}

if(_liftedDestinationCell){
	mp_grid_add_cell(global.aiGrid, _destinationCellX, _destinationCellY);
}

if(!_foundPath){
	path_clear_points(argument3);
	return false;
}

return true;