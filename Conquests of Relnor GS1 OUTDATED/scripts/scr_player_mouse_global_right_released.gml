///scr_player_mouse_global_right_released
if(isBusy){
    return false;
}

with(self.selectBox){
    instance_destroy();
}
self.selectBox = noone;
