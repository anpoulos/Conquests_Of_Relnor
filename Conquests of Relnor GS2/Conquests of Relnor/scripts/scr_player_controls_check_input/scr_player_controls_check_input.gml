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
	switch(triggersType[argument0]){
		case TRIGGER_TYPE_CHECK:
			return gamepad_button_check(triggersGamePadSlot[argument0], triggersBinding[argument0]);
		break;
	
		case TRIGGER_TYPE_PRESSED:
			return gamepad_button_check_pressed(triggersGamePadSlot[argument0], triggersBinding[argument0]);
		break;
	
		case TRIGGER_TYPE_UP:
			return gamepad_button_check_released(triggersGamePadSlot[argument0], triggersBinding[argument0]);
		break;
	}
}

return false;






