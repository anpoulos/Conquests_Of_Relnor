//scr_player_get_action_inputs


directions[RIGHT] = keyboard_check(ord('D'));
directions[LEFT] = keyboard_check(ord('A'));
directions[UP] = keyboard_check(ord('W'));
directions[DOWN] = keyboard_check(ord('S'));

triggers[ATTACK] = keyboard_check(ord('F'));
triggers[DASH] = keyboard_check_pressed(vk_space);
