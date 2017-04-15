///scr_player_enable_busy

with(global.player){
	if(!isBusy){
	    image_index = 0;
	    image_speed = 0;
	    isBusy = true;
	    state = self.busyState;
	}
}


