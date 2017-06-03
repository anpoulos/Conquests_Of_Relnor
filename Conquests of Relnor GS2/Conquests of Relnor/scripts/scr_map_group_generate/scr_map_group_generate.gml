///@param obj_group
///@param mp_grid

var _grid = argument1;

with(argument0){
	
	var _xDif = rightX - leftX;
	var _yDif = bottomY - topY;
	
	var _total = round(_xDif*sparsity) + round(_yDif*sparsity);
		
	for(var j = 0; j < _total; j++){
		var _index = irandom(array_length_1d(objects)-1);
		var _object = objects[_index];
		var _objectHeightHalf = objectsHeight[_index]/2;
		var _objectWidthHalf = objectsWidth[_index]/2;
		
		var _tries = tries;
		while(_tries > 0){
		
			var _randomX = irandom_range(leftX, rightX);
			var _randomY = irandom_range(topY, bottomY);
			
			var _allFree = true;
			
			if(_objectHeightHalf != 0 || _objectWidthHalf != 0){
				var _minX = _randomX - _objectWidthHalf;
				var _maxX = _randomX + _objectWidthHalf;
				var _minY = _randomY - _objectHeightHalf;
				var _maxY = _randomY + _objectHeightHalf;
			
				for(var _x = _minX; _x <= _maxX; _x++){
					for(var _y = _minY; _y <= _maxY; _y++){
						if(mp_grid_get_cell(_grid, _x div global.tileOffset, _y div global.tileOffset) == -1){
							_allFree = false;
							break;
						}
					}
					if(!_allFree){
						break;
					}
				}
			}
			
			if(_allFree){
				var _cellX = _randomX div global.tileOffset;
				var _cellY = _randomY div global.tileOffset;
				if(mp_grid_get_cell(_grid, _cellX, _cellY) == 0){
				
					var _obj = instance_create(_randomX, _randomY, _object);
				
					if(object_index == obj_group_npc_parent && respawns){
						_obj.respawns = true;
					}
				
					var _minX = _randomX - _objectWidthHalf;
					var _maxX = _randomX + _objectWidthHalf;
					var _minY = _randomY - _objectHeightHalf;
					var _maxY = _randomY + _objectHeightHalf;
					for(var _x = _minX; _x <= _maxX; _x++){
						for(var _y = _minY; _y <= _maxY; _y++){
							mp_grid_add_cell(_grid, _x div global.tileOffset, _y div global.tileOffset);
						}
					}
					break;
				}
			}
			_tries -= 1;
		}
	}
}