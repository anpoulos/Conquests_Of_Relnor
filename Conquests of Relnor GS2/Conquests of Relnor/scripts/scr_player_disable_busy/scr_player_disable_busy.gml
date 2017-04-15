///scr_player_disable_busy

with(global.player){
	if(isBusy){
	    isBusy = false;
	    self.state = self.moveState;
	}
}
