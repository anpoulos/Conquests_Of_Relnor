/// @description Charge Timeout

isCharging = false;
if(isPlayer){
	state = moveState;
}
else{
	scr_npc_choose_next_state();
}