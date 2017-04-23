///@param obj_player_map

with(argument0){
	if(!hasTurn){
		return false;
	}
	while(!scr_linked_list_is_empty(uiObjects)){
		instance_destroy(scr_linked_list_remove_next(uiObjects));
	}
	
	for(var m = -1; m <= 1; m++){
		var _currentCellX = cellX + m;
		for(var n = -1; n <= 1; n++){
			var _currentCellY = cellY + n;
			
			var _square = global.worldMapControl.squares[_currentCellX, _currentCellY];
			
			var _createClickableSquare = true;
			
			if(_square != noone){
				switch(_square.object_index){
					case obj_map_world_square_camp:
					case obj_map_world_square_troop:
					case obj_map_world_square_zone:
						_createClickableSquare = true;
					break;
					
					default:
						_createClickableSquare = false;
					break;
				}
			}
			
			if(_createClickableSquare){
				var _transformedX = scr_map_square_get_transformed_coordinate(_currentCellX);
				var _transformedY = scr_map_square_get_transformed_coordinate(_currentCellY);
				var _clickableSquare = instance_create(_transformedX, _transformedY, obj_map_world_square_clickable);
				scr_linked_list_add(uiObjects, _clickableSquare);
			}
			
		}
	}
}


