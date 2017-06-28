
if(isPlayer){
	
	var _destinationX = 0;
	var _destinationY = 0;
	
	if(scr_player_has_auto_target()){
		_destinationX = autoTarget.x;
		_destinationY = autoTarget.y;
	}
	else if (global.triggersInput != TRIGGER_INPUT_TYPE_CONTROLLER){
		_destinationX = mouse_x;
		_destinationY = mouse_y;
	}
	else{
		return false;
	}
	
}
else{

}

scr_lifeform_face_towards(self, _destinationX, _destinationY);

var _direction = point_direction(x, y, _destinationX, _destinationY);

var _xAmount = dcos(_direction)*5000;
var _yAmount = -dsin(_direction)*5000;

statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_ENERGY] -= currentSpecial.requiredEnergy;

physics_apply_local_impulse(x,y, _xAmount, _yAmount);

image_speed = 0.4;

isCharging = true;
alarm[7] = room_speed;

state = scr_lifeform_states_charge_state;