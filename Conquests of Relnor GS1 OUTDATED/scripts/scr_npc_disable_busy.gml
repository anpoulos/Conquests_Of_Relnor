///scr_npc_disable_busy

if(isBusy){
    isBusy = false;
    self.state = scr_npc_choose_next_state;
}
