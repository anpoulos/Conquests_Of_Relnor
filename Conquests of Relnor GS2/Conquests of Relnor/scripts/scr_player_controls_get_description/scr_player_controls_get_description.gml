///@param trigger

switch(argument0){
	case TRIGGER_ATTACK: return "Attack";
	case TRIGGER_ATTACK_CYCLE: return "Cycle through attacks";
	case TRIGGER_CLOSE_OR_OPEN_PARTY_MENU: return "Close menu or open party menu";
	case TRIGGER_DASH: return "Sprint";
	case TRIGGER_DOWN: return "Down";
	case TRIGGER_LEFT: return "Left";
	case TRIGGER_MAGIC: return "Use Magic";
	case TRIGGER_MAGIC_CYCLE: return "Cycle through magic spells";
	case TRIGGER_RIGHT: return "Right";
	case TRIGGER_UP: return "Up";
	case TRIGGER_USE: return "Use object or talk to person";
	case TRIGGER_COMMAND_MENU: return "Bring up Command Menu";
	case TRIGGER_AUTO_TARGET: return "Lock Target";
}