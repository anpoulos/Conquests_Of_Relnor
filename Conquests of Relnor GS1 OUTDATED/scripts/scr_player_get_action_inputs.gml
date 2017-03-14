//scr_player_get_action_inputs

directions[RIGHT] = keyboard_check(ord('D'));
directions[LEFT] = keyboard_check(ord('A'));
directions[UP] = keyboard_check(ord('W'));
directions[DOWN] = keyboard_check(ord('S'));

triggers[TRIGGER_ATTACK] = keyboard_check(vk_shift);
triggers[TRIGGER_DASH] = keyboard_check(vk_space);


