///Animation End Checks

switch(state){
    case attackState:
        attacked = false;
		target = noone;
		image_speed = 0;
		image_index = 0;
		scr_npc_choose_next_state();
		
    break;
}

