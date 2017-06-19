skipGetActionCheck = false;

for(var i = 0; i < TRIGGERS_MAX; i++){
	triggersInputType[i] = TRIGGER_INPUT_TYPE_KEYBOARD;
	triggersExtraBindingInputType[i] = TRIGGER_INPUT_TYPE_KEYBOARD;
	triggersExtraBinding[i] = 0;
	triggersExtraBindingType[i] = TRIGGER_TYPE_PRESSED;
	triggersGamePadSlot[i] = 0;
	triggersExtraGamePadSlot[i] = 0;
}

triggersType[TRIGGER_ATTACK] = TRIGGER_TYPE_CHECK;
triggersBinding[TRIGGER_ATTACK] = vk_shift;

triggersType[TRIGGER_ATTACK_CYCLE] = TRIGGER_TYPE_CHECK;
triggersBinding[TRIGGER_ATTACK_CYCLE] = vk_control;
triggersExtraBinding[TRIGGER_ATTACK_CYCLE] = vk_shift;

triggersType[TRIGGER_CLOSE_OR_OPEN_PARTY_MENU] = TRIGGER_TYPE_PRESSED;
triggersBinding[TRIGGER_CLOSE_OR_OPEN_PARTY_MENU] = vk_escape;

triggersType[TRIGGER_DASH] = TRIGGER_TYPE_CHECK;
triggersBinding[TRIGGER_DASH] = vk_space;

triggersType[TRIGGER_DESELECT_ALL] = TRIGGER_TYPE_PRESSED;
triggersBinding[TRIGGER_DESELECT_ALL] = ord("Q");

triggersType[TRIGGER_ENGAGE] = TRIGGER_TYPE_PRESSED;
triggersBinding[TRIGGER_ENGAGE] = vk_control;
triggersExtraBinding[TRIGGER_ENGAGE] = ord("C");

triggersType[TRIGGER_DISABLE] = TRIGGER_TYPE_PRESSED;
triggersBinding[TRIGGER_DISABLE] = vk_control;

triggersType[TRIGGER_FORMATION] = TRIGGER_TYPE_PRESSED;
triggersBinding[TRIGGER_FORMATION] = ord("F");

triggersType[TRIGGER_MAGIC] = TRIGGER_TYPE_CHECK;
triggersBinding[TRIGGER_MAGIC] = ord("E");

triggersType[TRIGGER_MAGIC_CYCLE] = TRIGGER_TYPE_CHECK;
triggersBinding[TRIGGER_MAGIC_CYCLE] = vk_control;
triggersExtraBinding[TRIGGER_MAGIC_CYCLE] = ord("E");

triggersType[TRIGGER_USE] = TRIGGER_TYPE_PRESSED;
triggersBinding[TRIGGER_USE] = ord("T");

triggersType[TRIGGER_SELECT_BOX] = TRIGGER_TYPE_CHECK;
triggersBinding[TRIGGER_SELECT_BOX] = ord("R");

triggersType[TRIGGER_UP] = TRIGGER_TYPE_CHECK;
triggersBinding[TRIGGER_UP] = ord("W");

triggersType[TRIGGER_DOWN] = TRIGGER_TYPE_CHECK;
triggersBinding[TRIGGER_DOWN] = ord("S");

triggersType[TRIGGER_RIGHT] = TRIGGER_TYPE_CHECK;
triggersBinding[TRIGGER_RIGHT] = ord("D");

triggersType[TRIGGER_LEFT] = TRIGGER_TYPE_CHECK;
triggersBinding[TRIGGER_LEFT] = ord("A");

triggersType[TRIGGER_COMMAND_MENU] = TRIGGER_TYPE_PRESSED;
triggersBinding[TRIGGER_COMMAND_MENU] = ord("C");

