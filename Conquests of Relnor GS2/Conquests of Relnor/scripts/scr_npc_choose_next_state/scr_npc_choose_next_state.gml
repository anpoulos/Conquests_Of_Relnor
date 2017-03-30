///scr_npc_choose_next_state

if(lockedTarget != noone){
    if(instance_exists(lockedTarget)){
        target = lockedTarget;
    }
    else{
        lockedTarget = noone;
    }
}

if(instance_exists(target)){
    var _distanceToTarget = point_distance(self.x, self.y, target.x, target.y);
    if(_distanceToTarget <= self.reach){
        self.alarm[2] = -1; //turn off idle alarm
        self.state = self.attackState;
    }
    else{
        scr_npc_move_to(self, target.x, target.y, 
			scr_npc_choose_next_state,self.size-1, false, false, self.runSpeed);   
    }
    return true;
}

if(followTarget != noone){
	if(instance_exists(followTarget)){
		var _distanceToTarget = point_distance(self.x, self.y, followTarget.x, followTarget.y);
		if(_distanceToTarget > size*4){
	        scr_npc_move_to(self, followTarget.x, followTarget.y, 
				scr_npc_choose_next_state,self.size*4, false, false, self.runSpeed); 
		}
		return true;
	}
	else{
		followTarget = noone;
	}	
}

if(waitForX != noone && waitForY != noone){
	var _distance = point_distance(x,y,waitForX,waitForY);
	if(_distance <= 5){
		waitForX = noone;
		waitForY = noone;
	}
	else{
		var _anything = collision_circle(waitForX, waitForY, 5, obj_Lifeform_Parent, false, true);
		if(_anything == noone){
			scr_npc_move_to(self, waitForX, waitForY, scr_npc_choose_next_state, size, false, false, self.runSpeed);
		}
	}
	return true;
}

var _distanceFromOrigin = point_distance(self.originX, self.originY, self.x, self.y);
if(_distanceFromOrigin > self.wanderRadius){
    scr_npc_move_to(self, self.originX, self.originY, scr_npc_choose_next_state, 50, false, false, self.walkSpeed);
    return true;
}
    
var _nextState = irandom_range(0,2);

if(self.alarm[1] > 0 || self.wanderDistance == 0){ //means we should be idle
    _nextState = 1;
}

switch(_nextState){
    //idle
    case 0:
    case 1:
        self.alarm[1] = irandom_range(30,90);
        self.state = idleState;
		scr_npc_rotate_equipment();
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
        var _desiredX = scr_room_get_grid_x(self.x+_moveOffsetX);
        var _desiredY = scr_room_get_grid_y(self.y+_moveOffsetY);
        scr_npc_move_to(self, _desiredX, _desiredY, scr_npc_choose_next_state, 10, false, true, self.walkSpeed);
    break;

}

