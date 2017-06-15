///scr_check_triggers

if(triggers[TRIGGER_CLOSE_OR_OPEN_PARTY_MENU]){
	if(!scr_player_actions_close_menu()){
		scr_player_actions_open_party_menu();
		return;
	}
}

if(triggers[TRIGGER_USE]){
	if(scr_player_actions_use()){
		return;
	}
}

if(triggers[TRIGGER_MAGIC_CYCLE]){
	var _item = equipment[EQUIPMENT_TYPE_OFFHAND];
	if(_item != noone && _item.object_index == obj_offhand_tome_parent){
		_item.selectedSpell = scr_linked_list_get_next(_item.initializedSpells);
		self.offhandSpell = _item.selectedSpell;
		scr_player_gui_update_information();
	}
}

if(triggers[TRIGGER_ATTACK] || triggers[TRIGGER_MAGIC]){
    image_index = 0;
    state = attackState;
}

if(triggers[TRIGGER_ENGAGE]){
	scr_player_commands_selected_enable_engage();
}

if(triggers[TRIGGER_ENGAGE_DISABLE]){
	scr_player_commands_selected_disable_engage();
}

if(triggers[TRIGGER_FORMATION]){
	scr_player_commands_square_preview_create();
}

if(triggers[TRIGGER_DESELECT_ALL]){
	if(!global.isWorldMap){
		scr_player_commands_deselect_all();
	}
}


