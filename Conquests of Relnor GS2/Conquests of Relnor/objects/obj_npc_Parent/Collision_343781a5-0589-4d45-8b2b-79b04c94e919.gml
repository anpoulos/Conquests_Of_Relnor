///Collision

//if(state == idleState && waitForX == noone && waitForY == noone){
//	var _direction = point_direction(x,y, other.x, other.y) + 45;
	
//	var _multiplier = 2;
//	var _tempX = x + _multiplier*size*dcos(_direction);
//	var _tempY = y - _multiplier*size*dsin(_direction);
	
//	while(collision_circle(_tempX, _tempY, size, obj_Lifeform_Parent, false, true) != noone && _multiplier < 10){
//		_direction += 45;
//		if(_direction >= 360){
//			_direction = 0;
//			_multiplier += 1;
//		}
//		_tempX = x + _multiplier*size*dcos(_direction);
//		_tempY = y - _multiplier*size*dsin(_direction);		
//	}
//	waitForX = phy_position_x;
//	waitForY = phy_position_y;
	
//	scr_npc_move_to(self, _tempX, _tempY, scr_npc_choose_next_state, size-1, false, false, self.runSpeed);
//}

if(!instance_exists(self)){
	return;
}

if(walkThroughNPCs &&
other.allegiance == allegiance){
	phy_active = false;
	alarm[6] = room_speed;
}
else{
	if(currentMoveSpeed > 0){
	    var _myNextPointX = path_get_point_x(path, pathIndex);
	    var _myNextPointY = path_get_point_y(path, pathIndex);

	    if(point_distance(phy_position_x,phy_position_y,_myNextPointX, _myNextPointY) > 
	        point_distance(other.phy_position_x,other.phy_position_y,_myNextPointX, _myNextPointY)){
	        currentMoveSpeed -= 1;
	    }
	}

	if((self.isAggressive || self.isDefensive) && !self.commandedMoveTo){
	    if(other.allegiance != self.allegiance){
			collisionCounter = -1;
			lastCollidedLifeform = noone;
			firstCollidedLifeform = noone;
	        scr_npc_auto_retaliate(other);
	        return true;
	    }
	}
	
		if(collisionCounter == -1){
			firstCollidedLifeform = other;
			lastCollidedLifeform = noone;
			collisionCounter = room_speed;
		}
		else if(collisionCounter > 0){
			lastCollidedLifeform = other;
			if(lastCollidedLifeform != firstCollidedLifeform){
				collisionCounter = -1;
				lastCollidedLifeform = noone;
				firstCollidedLifeform = noone;
			}
		}
	
		if(collisionCounter > 0){
			collisionCounter -= 1;
			if(collisionCounter == 0){
				if(firstCollidedLifeform == lastCollidedLifeform && instance_exists(firstCollidedLifeform)){
				//random move
					var _myNextPointX = path_get_point_x(path, pathIndex);
					var _myNextPointY = path_get_point_y(path, pathIndex);
	
					var _direction = point_direction(phy_position_x, phy_position_y, _myNextPointX, _myNextPointY);
					var _randDirection1 = _direction + 45;
					var _randDirection2 = _direction - 45;
	
					switch(irandom(1)){
						case 0: _direction = _randDirection1;
						case 1: _direction = _randDirection2;
					}
	
					var _distance = size*2;
					var _newX = phy_position_x + _distance*dcos(_direction);
					var _newY = phy_position_y - _distance*dsin(_direction);
					target = noone;
					scr_npc_move_to(self, _newX, _newY, noone, size,
					false,false,runSpeed, 200, true);
					currentMoveSpeed = runSpeed;
				}
				lastCollidedLifeform = noone;
				firstCollidedLifeform = noone;
				collisionCounter = -1;
			}
		}
	
	
	
	return true;

	///Walk Around Other Lifeform

	if(self.state != self.moveState){// || self.target != noone){
	    myCollisionTurn = false;
	}

	if(!myCollisionTurn){
	    other.myCollisionTurn = true;
	    return false;
	}

	myCollisionTurn = false;

	var _object360RelativeToMe = point_direction(x,y, other.x, other.y);
	var _directionRelativeToMe4Way = round(_object360RelativeToMe/90);
	if(_directionRelativeToMe4Way > 3){
	    _directionRelativeToMe4Way = RIGHT;
	}

	var _face4Way = self.face4Way;

	if(self.face4Way == _directionRelativeToMe4Way){
	    var _rand = irandom_range(0,1);
	    if(_rand == 0){
	        _rand = -1;
	    }
	    var _d = size;
	    var _newXOffset = 0;
	    var _newYOffset = 0;
	    var _newXOffset2 = 0;
	    var _newYOffset2 = 0;
    
	    switch(self.face4Way){
	        case DOWN:
	            _newXOffset = _d*_rand;
	            _newXOffset2 = _newXOffset;
	            _newYOffset2 = _d;
	        break;
	        case UP:
	            _newXOffset = _d*_rand;
	            _newXOffset2 = _newXOffset;
	            _newYOffset2 = -_d;     
	        break;
	        case RIGHT:
	            _newYOffset = _d*_rand;
	            _newYOffset2 = _newYOffset;
	            _newXOffset2 = _d;
	            break;   
	        case LEFT:
	            _newYOffset = _d*_rand;
	            _newYOffset2 = _newYOffset;
	            _newXOffset2 = -_d;  
	        break;
	    }
    
    
	    var _destinedX1 = x+_newXOffset;
	    var _destinedY1 = y+_newYOffset;
    
	    if(!collision_circle(_destinedX1, _destinedY1, 10, obj_Lifeform_Parent, false, true) && 
	    !collision_circle(_destinedX1, _destinedY1, 10, obj_unwalkable, false, true) && 
	    mp_grid_get_cell(global.aiGrid, scr_room_get_grid_x(_destinedX1), scr_room_get_grid_y(_destinedY1)) != -1 ){
	        path_change_point(path, pathIndex, _destinedX1, _destinedY1, self.currentMoveSpeed);
	        if(pathIndex+1 < path_get_number(path)){
	           path_change_point(path, pathIndex+1, x+_newXOffset2, y+_newYOffset2, self.currentMoveSpeed);
	        }     
	    }
    
	}


}

