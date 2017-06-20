///tempVal has the command
///used as global.player

room_speed = round(room_speed/3);

global.gamePaused = false;

commandMenu.menuContainer.isVisible = false;

commandMenu.currentCommand = tempVal;

commandFromCommandMenu = true;

var _destroyMenu = true;

switch(tempVal){
	case COMMAND_DESELECT_ALL:
		scr_player_commands_deselect_all();
	break;
	
	case COMMAND_MOVE:
		commandModule.mouseCommand = scr_player_commands_move_all;
		_destroyMenu = false;
	break;
	
	case COMMAND_FOLLOW:
		scr_ui_button_commands_follow();
		_destroyMenu = false;
	break;
	
	case COMMAND_FORMATION:
		scr_player_commands_square_preview_create();
		_destroyMenu = false;
	break;
	
	case COMMAND_ENGAGE:
		scr_player_commands_selected_enable_engage();
	break;
	
	case COMMAND_ENGAGE_DISABLE:
		scr_player_commands_selected_disable_engage();
	break;
	
	case COMMAND_WANDER:
		scr_player_commands_selected_enable_wander();
	break;
	
	case COMMAND_WANDER_DISABLE:
		scr_player_commands_selected_disable_wander();
	break;
	
	case COMMAND_DEFENSIVE:
		scr_player_commands_selected_enable_defense();
	break;
	
	case COMMAND_DEFENSIVE_DISABLE:
		scr_player_commands_selected_disable_defense();
	break;
	
	case COMMAND_ENGAGE_SET_RADIUS:
		commandModule.engageRangeClicked = true;
		_destroyMenu = false;
	break;
	
	case COMMAND_WANDER_SET_RADIUS:
		commandModule.primeWanderRangeClicked = true;
		_destroyMenu = false;
	break;
	
	case COMMAND_TALK:
		//TODO talk to party
	break;
	
	default:
		_destroyMenu = false;
	break;
}

if(_destroyMenu){
	instance_destroy(commandMenu);
}