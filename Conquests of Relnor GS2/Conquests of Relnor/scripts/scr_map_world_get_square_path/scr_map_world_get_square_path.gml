///@param cellX
///@param cellY
///@param destinationCellX
///@param destinationCellY

var _path = path_add();

var _liftedStartCell = false;
if(mp_grid_get_cell(global.worldMapGrid, argument0, argument1) == -1){
	mp_grid_clear_cell(global.worldMapGrid, argument0, argument1);
	_liftedStartCell = true;
}

var _liftedDestinationCell = false;
if(mp_grid_get_cell(global.worldMapGrid, argument2, argument3) == -1){
	mp_grid_clear_cell(global.worldMapGrid, argument2, argument3);
	_liftedDestinationCell = true;
}

var _startX = scr_map_square_get_transformed_coordinate(argument0);
var _startY = scr_map_square_get_transformed_coordinate(argument1);

var _destinedX = scr_map_square_get_transformed_coordinate(argument2);
var _destinedY = scr_map_square_get_transformed_coordinate(argument3);

mp_grid_path(global.worldMapGrid, _path, _startX, _startY, _destinedX, _destinedY, false);

var _squares = scr_linked_list_create();

for(var i = 0; i < path_get_number(_path); i++){
	var _currentX = path_get_point_x(_path, i);
	var _currentY = path_get_point_y(_path, i);
	
	var _cellX = scr_map_square_get_cell_coordinate(_currentX);
	var _cellY = scr_map_square_get_cell_coordinate(_currentY);
	
	if(  ! ((_cellX == argument0 && _cellY == argument1) || (_cellX == argument2 && _cellY == argument3)) ){
		var _squaresTotal = scr_linked_list_size(_squares);
		var _existsInList = false;
		for(var j = 0; j < _squaresTotal; j++){
			var _cell = scr_linked_list_get_next(_squares);
			if(_cell.x == _cellX && _cell.y == _cellY){
				_existsInList = true;
			}
		}
	
		if(!_existsInList){
			scr_linked_list_add(_squares, instance_create(_cellX, _cellY, obj_point));
		}
	}
	
}

if(_liftedStartCell){
	mp_grid_add_cell(global.worldMapGrid, argument0, argument1);
}

if(_liftedDestinationCell){
	mp_grid_add_cell(global.worldMapGrid, argument2, argument3);
}

return _squares;
