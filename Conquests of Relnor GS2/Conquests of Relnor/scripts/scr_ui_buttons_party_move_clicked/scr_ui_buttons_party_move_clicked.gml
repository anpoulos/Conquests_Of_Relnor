//tempVal is item linked to button

var _item = tempVal;

var _player = instance_find(obj_player, 0);
if(_player.MoveItemButtonClicked){
	_player.MoveItemButtonClicked = false;
	_player.MoveItem = noone;
	_player.MoveItemButtonCurrent = noone;
	text = "Move";
}
else{
	_player.MoveItemButtonClicked = true;
	_player.MoveItem = _item;
	_player.MoveItemButtonCurrent = self;
	text = "Cancel";
	var _panels = _player.CharacterPanels;
	var _totalPanels = scr_linked_list_size(_panels);
	for(var i = 0; i < _panels; i++){
		var _panel = scr_linked_list_get_next(_panels);
		if(scr_lifeform_parent_inventory_get_free_space(_panel.character) > 0){
			_panel.characterHasRoom = true;	
		}
	}
}

