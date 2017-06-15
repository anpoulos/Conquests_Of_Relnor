///@trigger

if(triggersInputType[argument0] == TRIGGER_INPUT_TYPE_KEYBOARD){
	switch(triggersType[argument0]){
		case TRIGGER_TYPE_CHECK:
			return keyboard_check(triggersBinding[argument0]);
		break;
	
		case TRIGGER_TYPE_PRESSED:
			return keyboard_check_pressed(triggersBinding[argument0]);
		break;
	
		case TRIGGER_TYPE_UP:
			return keyboard_check_released(triggersBinding[argument0]);
		break;
	}
}
else{ //controller checks
	//TODO 
}

return false;






