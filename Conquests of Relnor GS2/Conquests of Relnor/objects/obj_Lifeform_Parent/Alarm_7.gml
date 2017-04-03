/// @description Lifeform collision check
// You can write your code in this editor

if(firstCollidedLifeform == lastCollidedLifeform){
	//random move
	
	var _direction = face8Way*45;
	var _randDirection1 = _direction + 90;
	var _randDirection2 = _direction - 90;
	
	switch(irandom(1)){
		case 0: _direction = _randDirection1;
		case 1: _direction = _randDirection2;
	}
	
	var _distance = size*2;
	var _newX = phy_position_x + _distance*dcos(_direction);
	var _newY = phy_position_y - _distance*dsin(_direction);
	
	if(collision_line(phy_position_x, phy_position_y, _newX, _newY, obj_Lifeform_Parent, false, true) == noone){
		scr_npc_move_to(self, _newX, _newY, scr_npc_choose_next_state, size,
		false,false,runSpeed, 200);
	}
	else{
		if(_direction == _randDirection1){
			_direction = _randDirection2;
		}
		else{
			_direction = _randDirection1;
		}
		var _newX = phy_position_x + _distance*dcos(_direction);
		var _newY = phy_position_y - _distance*dsin(_direction);
		if(collision_line(phy_position_x, phy_position_y, _newX, _newY, obj_Lifeform_Parent, false, true) == noone){
			scr_npc_move_to(self, _newX, _newY, scr_npc_choose_next_state, size,
			false,false,runSpeed, 200);
		}
	}
	
}

firstCollidedLifeform = noone;
lastCollidedLifeform = noone;
alarm[7] = -1;

