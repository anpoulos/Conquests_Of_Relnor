///@param cellX
///@param cellY

var _currentCellX = argument0;
var _currentCellY = argument1;

var _totalUnits = 0;

for(var m = -1; m <= 1; m++){
	var _cellX = _currentCellX + m;
	for(var n = -1; n <= 1; n++){
		var _cellY = _currentCellY + n;
		var _adjacentSquare = global.worldMapControl.squares[_cellX, _cellY];
		if(_adjacentSquare != noone &&
		_adjacentSquare.allegiance == _troop.allegiance &&
		_adjacentSquare.object_index == obj_map_world_square_troop &&
		_cellX != _currentCellX &&
		_cellY != _currentCellY){
			_totalUnits += _adjacentSquare.units;
			scr_linked_list_add(_allyTroops, _adjacentSquare);
		}
	}
}

return _totalUnits;
