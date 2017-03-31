//scr_player_get_action_inputs

directions[RIGHT] = keyboard_check(ord("D"));
directions[LEFT] = keyboard_check(ord("A"));
directions[UP] = keyboard_check(ord("W"));
directions[DOWN] = keyboard_check(ord("S"));

var _ctrl = keyboard_check(vk_control);

triggers[TRIGGER_ATTACK] = keyboard_check(vk_shift) && !_ctrl;
triggers[TRIGGER_ATTACK_CYCLE] = keyboard_check_pressed(vk_shift) && _ctrl;
triggers[TRIGGER_DASH] = keyboard_check(vk_space);
triggers[TRIGGER_MAGIC] = keyboard_check(ord("E")) && !_ctrl;
triggers[TRIGGER_MAGIC_CYCLE] = keyboard_check_pressed(ord("E")) && _ctrl;

