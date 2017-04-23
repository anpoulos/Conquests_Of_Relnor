///used as clickable square object

if(cellX == global.player.mapControl.cellX && cellY == global.player.mapControl.cellY){
	return false;
}

var _square = global.worldMapControl.squares[cellX, cellY];

var _hasTurn = true;

if(_square == noone){
	scr_square_player_move(cellX, cellY);
	_hasTurn = false;
}
else{

	switch(_square.object_index){
		case obj_map_world_square_zone:
			scr_square_zone_open_menu(_square);
		break;
		
		default:
			if(!scr_misc_allegiance_are_enemies(global.player.allegiance, _square.allegiance)){
				scr_square_player_move(cellX, cellY);
				_hasTurn = false;
			}
			else{
				scr_square_menu_open(_square);
			}
		break;
	}

}

//end result
with(global.player.mapControl){
	hasTurn = _hasTurn;
	if(!hasTurn){
		while(!scr_linked_list_is_empty(uiObjects)){
			instance_destroy(scr_linked_list_remove_next(uiObjects));
		}
	}
}
