///scr_player_disable_busy

if(isBusy){
    isBusy = false;
    self.state = self.moveState;
}
