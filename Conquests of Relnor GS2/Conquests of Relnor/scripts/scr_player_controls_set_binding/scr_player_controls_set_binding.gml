///@param bindingValue
///@param bindingIndex
///@param inputType
///@param isExtra
///@param slot

var _bindingValue = argument0;
var _bindingIndex = argument1;
var _inputType = argument2;
var _isExtra = argument3;
var _slot = argument4;

with(global.player){
	if(_inputType == TRIGGER_INPUT_TYPE_KEYBOARD){
		if(_isExtra){
			triggersExtraBinding[_bindingIndex] = _bindingValue;
			triggersExtraBindingInputType[_bindingIndex] = TRIGGER_INPUT_TYPE_KEYBOARD;
		}
		else{
			triggersBinding[_bindingIndex] = _bindingValue;
			triggersInputType[_bindingIndex] = TRIGGER_INPUT_TYPE_KEYBOARD;
		}
	}
	else{
		if(_isExtra){
			triggersExtraBinding[_bindingIndex] = _bindingValue;
			triggersExtraBindingInputType[_bindingIndex] = TRIGGER_INPUT_TYPE_CONTROLLER;
			triggersExtraGamePadSlot[_bindingIndex] = _slot;
		}
		else{
			triggersBinding[_bindingIndex] = _bindingValue;
			triggersInputType[_bindingIndex] = TRIGGER_INPUT_TYPE_CONTROLLER;
			triggersGamePadSlot[_bindingIndex] = _slot;
		}
	}
	
	for(var i = 0; i < TRIGGERS_MAX; i++){
		if(triggersInputType[i] != _inputType || triggersExtraBindingInputType[i] != _inputType){
			scr_player_controls_set_defaults(_inputType);
			scr_player_controls_set_binding(argument0, argument1, argument2, argument3, argument4);
			break;
		}
	}
	
}

