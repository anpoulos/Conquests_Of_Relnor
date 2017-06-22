///@param npc
with(argument0){
	if(isBusy){
	    isBusy = false;
	    state = scr_npc_choose_next_state;
	}
}

