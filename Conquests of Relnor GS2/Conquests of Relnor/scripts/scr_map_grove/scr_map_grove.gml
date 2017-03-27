///@param obj_grove

with(argument0){
	
	var _xDif = rightX - leftX;
	var _yDif = bottomY - topY;
	
	var _total = round(_xDif*sparsity) + round(_yDif*sparsity);
		
	for(var j = 0; j < _total; j++){
	
		var _object = objects[irandom(array_length_1d(objects)-1)];
		
		var _randomX = irandom_range(leftX, rightX);
		var _randomY = irandom_range(topY, bottomY);
		
		var _tries = tries;
		while(_tries > 0){
		
			var _cellX = _randomX div global.tileOffset;
			var _cellY = _randomY div global.tileOffset;
			
			if(mp_grid_get_cell(global.aiGrid, _cellX, _cellY) == 0){
				
				instance_create(_randomX, _randomY, _object);				
				mp_grid_add_instances(global.aiGrid, obj_map_solid_parent, true);
				break;
			}
			_tries -= 1;
		}
	}
}