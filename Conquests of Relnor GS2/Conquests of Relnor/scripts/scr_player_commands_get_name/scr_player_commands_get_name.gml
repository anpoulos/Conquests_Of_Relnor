///@param command

switch(argument0){
	case COMMAND_ATTACK: return "Attack Target";
	case COMMAND_DESELECT_ALL: return "Deselect All";
	case COMMAND_DESELECT_BOX: return "Deslection Box";
	case COMMAND_DESELECT_SINGLE: return "Deselect";
	case COMMAND_ENGAGE: return "Enable Engage";
	case COMMAND_ENGAGE_DISABLE: return "Disable Engage";
	case COMMAND_FORMATION: return "Formation";
	case COMMAND_SELECT_BOX: return "Selection Box";
	case COMMAND_SELECT_SINGLE: return "Select";
	case COMMAND_WANDER: return "Enable Wander";
	case COMMAND_WANDER_DISABLE: return "Disable Wander";
	case COMMAND_ENGAGE_SET_RADIUS: return "Set Engage Radius";
	case COMMAND_WANDER_SET_RADIUS: return "Set Wander Radius";	
	case COMMAND_DEFENSIVE: return "Enable Defensive";
	case COMMAND_DEFENSIVE_DISABLE: return "Disable Defensive";
	case COMMAND_FOLLOW: return "Follow";
	case COMMAND_MOVE: return "Move";
	case COMMAND_TALK: return "Talk To";
	case COMMAND_WORLD_MAP_NEXT_TURN: return "Next Turn";
}