///@param hours

var _hours = argument0;

with(global.player){

	var _currentHour = global.time div 1000;
	var _projectedHour = _currentHour + _hours;
	
	if(_projectedHour >= 24){
		_projectedHour = _projectedHour - 24;
	}
	
	originalSleepTime = _projectedHour*1000;
	scr_player_enable_busy();
	global.timeIncrement = 100;
	
	global.time = _currentHour*1000;
	
	state = scr_player_states_sleep_state;
}