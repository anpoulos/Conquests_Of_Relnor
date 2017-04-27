///scr_player_mouse_global_right_released
if(!global.isWorldMap){
	if(isBusy){
	    return false;
	}

	with(self.selectBox){
	    instance_destroy();
	}
	self.selectBox = noone;
}
