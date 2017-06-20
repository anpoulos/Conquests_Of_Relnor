///tempVal has the command
///used as global.player

room_speed = round(room_speed/3);

global.gamePaused = false;

commandMenu.menuContainer.isVisible = false;

commandMenu.currentCommand = tempVal;

commandFromCommandMenu = true;

switch(tempVal){
	case COMMAND_DESELECT_ALL:
		scr_player_commands_deselect_all();
		instance_destroy(commandMenu);
	break;
	
	case COMMAND_MOVE:
		commandModule.mouseCommand = scr_player_commands_move_all;
	break;
	
	case COMMAND_FOLLOW:
		scr_ui_button_commands_follow();
	break;
	
	case COMMAND_FORMATION:
		scr_player_commands_square_preview_create();
	break;
}