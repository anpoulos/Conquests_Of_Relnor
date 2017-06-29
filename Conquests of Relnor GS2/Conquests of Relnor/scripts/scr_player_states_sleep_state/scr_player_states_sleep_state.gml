
if(global.time == originalSleepTime){
	scr_player_disable_busy();
	state = moveState;
	originalSleepTime = -1;
	global.timeIncrement = 1;
}