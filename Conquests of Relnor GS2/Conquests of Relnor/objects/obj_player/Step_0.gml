///Inherited
scr_player_get_action_inputs();

event_inherited();

///Update Player GUI
scr_player_gui_update_information();

if(combatCheckCount == 0){
	combatCheckCount = -1;
	global.mapControl.musicType = global.mapControl.mapMusicType;
	audio_sound_gain(global.mapControl.currentMusicIndex, 0, 1000);
}

if(triggers[TRIGGER_CLOSE_OR_OPEN_PARTY_MENU]){
	if(!scr_player_actions_close_menu()){
		scr_player_actions_open_party_menu();
	}
	triggers[TRIGGER_CLOSE_OR_OPEN_PARTY_MENU] = false;
}

if(triggers[TRIGGER_COMMAND_MENU]){
	if(commandMenu != noone){
		instance_destroy(commandMenu);
	}
	else if (!global.gamePaused && !global.isWorldMap){
		scr_player_actions_open_command_menu();
	}
}