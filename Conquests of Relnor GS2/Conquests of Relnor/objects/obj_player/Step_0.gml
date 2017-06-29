///Inherited
if(global.isWorldMap && 
global.triggersInput == TRIGGER_INPUT_TYPE_CONTROLLER &&
!global.gamePaused){
	var _clickablesOnScreen = false;
	with(obj_ui_clickable_parent){
		if(clickedScript != noone && scr_ui_draw_is_visible(self)){
			_clickablesOnScreen = true;
			break;
		}
	}
	
	if(_clickablesOnScreen){
		if(virtualMouse == noone || !virtualMouse.gui){
			scr_ui_virtual_mouse_create(VIRTUAL_MOUSE_MODE_BUTTON, true);
		}
	}
	else{
		if(virtualMouse == noone || virtualMouse.gui){
			scr_ui_virtual_mouse_create(VIRTUAL_MOUSE_MODE_MOUSE, false);
		}
	}
}

scr_player_get_action_inputs();

if(autoTarget != noone){
	if(!instance_exists(autoTarget) || autoTarget.isDead){
		autoTarget = noone;
	}
}

event_inherited();

if(isDead){
	return false;
}

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
	else if (!global.gamePaused){
		scr_player_actions_open_command_menu();
		scr_ui_virtual_mouse_create(VIRTUAL_MOUSE_MODE_BUTTON, true);
	}
}