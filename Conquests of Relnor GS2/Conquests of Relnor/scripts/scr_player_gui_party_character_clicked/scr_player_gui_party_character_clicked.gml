///scr_player_gui_party_character_clicked

//this script is being executed as obj_ui_party_character_panel object
if(player.MoveItem != noone){
	//TODO move item from owner to character here
	
	player.MoveItem = noone;
	player.MoveItemButtonClicked = false;
}
else{
	player.InventoryInfoContainerItemStats.character = character;

	with(player){
	    for(var i = 0; i < scr_linked_list_size(CharacterPanels); i++){
	        var _panel = scr_linked_list_get_next(CharacterPanels);
	        _panel.selected = false;
	    }
	
		scr_player_gui_party_update_character_stats();
	}

	selected = true;
}
scr_ui_party_inventory_equipment_refresh(true);
