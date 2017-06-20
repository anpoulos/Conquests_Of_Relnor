///scr_player_mouse_global_right_released
if(!global.isWorldMap){
	if(isBusy){
	    return false;
	}

	if(selectBox != noone){
		instance_destroy(selectBox);
		selectBox = noone;
		scr_player_command_menu_cleanup_for_cmd(COMMAND_DESELECT_BOX);
	}
}
