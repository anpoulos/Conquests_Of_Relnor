///used as player object

var _difference = scr_linked_list_size(commandModule.selected) - 24;

for(var i = 0 ; i < _difference; i++){
	scr_linked_list_get_next(commandModule.selected);
}

scr_player_gui_party_update_character_panels();