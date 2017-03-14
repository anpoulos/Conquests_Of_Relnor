///scr_npc_enable_busy

if(!isBusy){
    isBusy = true;
    state = busyState;
    alarm[1] = -1; //turn off idle state alarm
}
