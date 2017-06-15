//scr_player_get_action_inputs
for(var i = 0; i < TRIGGERS_MAX; i++){
	triggers[i] = false;
}

var _verifiedInputs = scr_linked_list_create();
var _verifiedExtraInputs = scr_linked_list_create();

for(var i = 0; i < TRIGGERS_MAX; i++){
	var _isVerified = false;
	
	var _triggerBindingValue = triggersBinding[i];
	
	if(triggersType[i] == TRIGGER_TYPE_CHECK){
		_isVerified = keyboard_check(_triggerBindingValue);
	}
	else if(triggersType[i] == TRIGGER_TYPE_PRESSED){
		_isVerified = keyboard_check_pressed(_triggerBindingValue);
	
	}
	else if(triggersType[i] == TRIGGER_TYPE_UP){
		_isVerified = keyboard_check_released(_triggerBindingValue);
	
	}
	
	if(_isVerified){
		if(scr_player_controls_check_extra_input(i)){
			scr_linked_list_add(_verifiedExtraInputs, i);
		}
		else{
			scr_linked_list_add(_verifiedInputs, i);
		}
	}
}

var _verifiedExtraInputsSize = scr_linked_list_size(_verifiedExtraInputs);
if(_verifiedExtraInputsSize > 0){
	for(var i = 0; i < _verifiedExtraInputsSize; i++){
		triggers[scr_linked_list_get_next(_verifiedExtraInputs)] = true;
	}
}
else{
	var _verifiedInputsSize = scr_linked_list_size(_verifiedInputs);
	for(var i = 0; i < _verifiedInputsSize; i++){
		triggers[scr_linked_list_get_next(_verifiedInputs)] = true;
	}
}

scr_linked_list_destroy(_verifiedExtraInputs);
scr_linked_list_destroy(_verifiedInputs);

//directions[RIGHT] = keyboard_check(ord("D"));
//directions[LEFT] = keyboard_check(ord("A"));
//directions[UP] = keyboard_check(ord("W"));
//directions[DOWN] = keyboard_check(ord("S"));

//var _ctrl = keyboard_check(vk_control);

//triggers[TRIGGER_ATTACK] = keyboard_check(vk_shift) && !_ctrl;
//triggers[TRIGGER_ATTACK_CYCLE] = keyboard_check_pressed(vk_shift) && _ctrl;

//triggers[TRIGGER_DASH] = keyboard_check(vk_space);

//triggers[TRIGGER_MAGIC] = keyboard_check(ord("E")) && !_ctrl;
//triggers[TRIGGER_MAGIC_CYCLE] = keyboard_check_pressed(ord("E")) && _ctrl;

//triggers[TRIGGER_CLOSE_OR_OPEN_PARTY_MENU] = keyboard_check_pressed(vk_escape);

//triggers[TRIGGER_ENGAGE] = keyboard_check_pressed(ord("C"));
//triggers[TRIGGER_ENGAGE_DISABLE] = keyboard_check_pressed(ord("C")) && _ctrl;

//triggers[TRIGGER_FORMATION] = keyboard_check_pressed(ord("F"));

//triggers[TRIGGER_DESELECT_ALL] = keyboard_check_pressed(ord("Q"));

//triggers[TRIGGER_USE] = keyboard_check_pressed(ord("T"));

//triggers[TRIGGER_SELECT_BOX] = keyboard_check(ord("R"));