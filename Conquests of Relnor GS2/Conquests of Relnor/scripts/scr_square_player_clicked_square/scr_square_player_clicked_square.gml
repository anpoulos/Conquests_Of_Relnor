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
				var _lines = scr_linked_list_create();
				scr_linked_list_add(_lines, "Engage Enemy Troop?");
				scr_linked_list_add(_lines, "Their unit count, from what you can see, is "+string(_square.units));
				scr_linked_list_add(_lines, "Do you wish to engage them?");
				
				scr_ui_menu_yes_no_create("Enemy Engagement", _lines, 
				"Engage", scr_square_player_engage_clicked, _square, noone, 
					"Cancel", noone, noone, noone);
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
