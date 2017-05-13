///scr_npc_choose_next_state

collisionCounter = -1;
lastCollidedLifeform = noone;
firstCollidedLifeform = noone;

if(statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_HEALTH] <= 0){
	state = deathState;
	return true;
}
			
if(lockedTarget != noone){
    if(instance_exists(lockedTarget)){
        target = lockedTarget;
    }
    else{
        lockedTarget = noone;
    }
}

if(instance_exists(target)){
    state = attackState;
    return true;
}

if(followTarget != noone){
	if(instance_exists(followTarget)){
		var _distanceToTarget = point_distance(self.x, self.y, followTarget.x, followTarget.y);
		if(_distanceToTarget > size*4){
	        scr_npc_move_to(self, followTarget.x, followTarget.y, 
				noone, self.size*3, false, false, self.runSpeed, self.sight, false); 
		}
		else if(!scr_lifeform_is_in_combat(self)){
			scr_lifeform_face_towards(self, followTarget.x, followTarget.y);
		}
		scr_npc_check_equipment();
		return true;
	}
	else{
		followTarget = noone;
	}	
}

//if(waitForX != noone && waitForY != noone){
//	var _distance = point_distance(x,y,waitForX,waitForY);
//	if(_distance <= 5){
//		waitForX = noone;
//		waitForY = noone;
//	}
//	else{
//		var _anything = collision_circle(waitForX, waitForY, 5, obj_Lifeform_Parent, false, true);
//		if(_anything == noone){
//			scr_npc_move_to(self, waitForX, waitForY, noone, size, false, false, self.runSpeed, self.sight, true);
//		}
//	}
//	return true;
//}

if(wanderDistance != 0 && point_distance(originX, originY, x, y) > wanderRadius){
    scr_npc_move_to(self, originX, originY, noone, 50, false, false, self.walkSpeed, size, false);
    return true;
}
    
var _nextState = irandom_range(0,2);

if(self.alarm[1] > 0 || self.wanderDistance == 0 || scr_lifeform_is_in_combat(self)){ //means we should be idle
    _nextState = 0;
}

switch(_nextState){
    //idle
    case 0:
    case 1:
        self.alarm[1] = irandom_range(30,90);
        self.state = idleState;
		scr_npc_check_equipment();
    break;
    
    //wander
    case 2:
        self.alarm[1] = wanderDistance/2;
        var _moveOffsetX = irandom_range(0,wanderDistance);
        var _isNegativeX = irandom_range(0,1);
        if(_isNegativeX){
            _moveOffsetX *= -1;
        }
        var _moveOffsetY = irandom_range(0,wanderDistance);
        var _isNegativeY = irandom_range(0,1);
        if(_isNegativeY){
            _moveOffsetY *= -1;
        }
        var _desiredX = x+_moveOffsetX;
        var _desiredY = y+_moveOffsetY;
        scr_npc_move_to(self, _desiredX, _desiredY, noone, 10, false, true, self.walkSpeed, self.sight, false);
    break;

}

