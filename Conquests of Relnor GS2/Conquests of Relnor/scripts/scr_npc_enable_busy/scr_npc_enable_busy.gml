///@param npc

with(argument0){
	if(!isBusy){
	    isBusy = true;
	    state = busyState;
	    alarm[1] = -1; //turn off idle state alarm
	}
}

