
if(isPlayer){
	
	var _destinationX = 0;
	var _destinationY = 0;
	
	if(scr_player_has_auto_target()){
		_destinationX = autoTarget.x;
		_destinationY = autoTarget.y;
	}
	else if (triggersInput != TRIGGER_INPUT_TYPE_CONTROLLER){
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

var _xAmount = dcos(_direction)*15;
var _yAmount = dsin(_direction)*15;

scr_obj_move_phy(self, _xAmount, _yAmount);	

image_speed = 0.3;

isCharging = true;
alarm[7] = room_speed div 2;

state = scr_lifeform_states_charge_state;