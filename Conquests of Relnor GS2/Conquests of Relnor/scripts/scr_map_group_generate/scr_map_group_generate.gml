///@param obj_group

with(argument0){
	
	var _xDif = rightX - leftX;
	var _yDif = bottomY - topY;
	
	var _total = round(_xDif*sparsity) + round(_yDif*sparsity);
		
	for(var j = 0; j < _total; j++){
		var _index = irandom(array_length_1d(objects)-1);
		var _object = objects[_index];
		var _objectHeight = objectsHeight[_index];
		var _objectWidth = objectsWidth[_index];
		
		var _tries = tries;
		while(_tries > 0){
		
			var _randomX = irandom_range(leftX, rightX);
			var _randomY = irandom_range(topY, bottomY);
		
			var _cellX = _randomX div global.tileOffset;
			var _cellY = _randomY div global.tileOffset;
			
			var _allFree = true;
			
			if(_objectHeight != 0 || _objectWidth != 0){
				var _heightIterations = _objectHeight div global.tileOffset;
				var _widthIterations = _objectWidth div global.tileOffset;
				var _heightOffset = global.tileOffset;
				var _widthOffset = global.tileOffset;
				var _heightCurrentY = _randomY - (_objectHeight/2);
				var _widthCurrentX = _randomX - (_objectWidth/2);
			
				for(var i = 0; i < _heightIterations; i++){
					for(var k = 0; k < _widthIterations; k++){
					
						if(mp_grid_get_cell(global.aiGrid, 
							_widthCurrentX div global.tileOffset,
							_heightCurrentY div global.tileOffset) != 0){
								_allFree = false;
								break;
							}
				
						_widthCurrentX += _widthOffset;
					}
					_heightCurrentY += _heightOffset;
				}
			}
			
			if(_allFree && mp_grid_get_cell(global.aiGrid, _cellX, _cellY) == 0){
				
				instance_create(_randomX, _randomY, _object);				
				mp_grid_add_instances(global.aiGrid, obj_map_solid_parent, true);
				break;
			}
			_tries -= 1;
		}
	}
}