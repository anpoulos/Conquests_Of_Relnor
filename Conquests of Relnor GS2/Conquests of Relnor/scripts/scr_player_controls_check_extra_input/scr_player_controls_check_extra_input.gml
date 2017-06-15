///@trigger

if(triggersExtraBindingInputType[argument0] == TRIGGER_INPUT_TYPE_KEYBOARD){
	switch(triggersExtraBindingType[argument0]){
		case TRIGGER_TYPE_CHECK:
			return keyboard_check(triggersExtraBinding[argument0]);
		break;
	
		case TRIGGER_TYPE_PRESSED:
			return keyboard_check_pressed(triggersExtraBinding[argument0]);
		break;
	
		case TRIGGER_TYPE_UP:
			return keyboard_check_released(triggersExtraBinding[argument0]);
		break;
	}
}
else{ //controller checks
	//TODO 
}

return false;






