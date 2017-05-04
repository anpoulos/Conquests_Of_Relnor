///scr_npc_states_move_state

if(currentMoveSpeed < moveSpeed){
    currentMoveSpeed += 0.5;
}

if(!ignoreTargeting && (isAggressive && !commandedMoveTo) || lockedTarget != noone){

	var _previousTarget = target;
	
    if(lockedTarget != noone){
        target = lockedTarget;
    }
    else{
        target = scr_npc_get_closest_target();
		if(_previousTarget != noone && target == noone){ //if npc was chasing someone and there is no longer anyone nearby to chase
            path_clear_points(path);
			scr_npc_choose_next_state();
		    return true;
		}
    }
	
    if(target != noone && instance_exists(target)){   //means we are chasing someone
        if(_previousTarget != target || point_distance(x, y, target.x, target.y) <= moveToAccuracy){
            state = attackState;
            path_clear_points(path);
            return true;
        }
        else {
			if(!scr_npc_get_path(self, target.x, target.y, path)){
				scr_npc_choose_next_state();
				moveSpeed = 0;
				return true;
			}
			else{
                pathIndex = 1;
			}
        }
    }
	
}

var _totalPoints = path_get_number(path);
var _distanceToEnd = 0;

var _nextPathPointX = path_get_point_x(path, pathIndex);
var _nextPathPointY = path_get_point_y(path, pathIndex);

if(_totalPoints > 0){
    var _lastPointX = path_get_point_x(path, _totalPoints-1);
    var _lastPointY = path_get_point_y(path, _totalPoints-1);
    
    var _distanceToEnd = point_distance(x, y, _lastPointX, _lastPointY);
	
	//Get direction
	direction360 = point_direction(x, y, _nextPathPointX,_nextPathPointY);
	if(pathIndex == 0){
		if(followTarget != noone && instance_exists(followTarget)){
			scr_lifeform_face_towards(self, followTarget.x, followTarget.y);
		}
	}
	else{
		scr_lifeform_update_face();    
	}
}

if(_distanceToEnd < moveToAccuracy){
		
	ignoreTargeting = false;	
		
    alarm[1] = -1; //turn off idle state alarm
    
    pathIndex = 0;
    commandedMoveTo = false;    
    path_clear_points(path);
    image_index = 0;
    image_speed = 0;
    
    if(moveToEndScript != noone){
        script_execute(moveToEndScript);
        moveToEndScript = noone;
    }
	else{
		scr_npc_choose_next_state();
	}	
    
    return true;
}

var _distanceToNextPathPoint = point_distance(x,y,_nextPathPointX, _nextPathPointY);

if(_distanceToNextPathPoint < moveToAccuracy){
    if(pathIndex + 1 < _totalPoints){
        pathIndex += 1;
    }
}
    
//Get length
length = currentMoveSpeed;

// Get speeds
var hSpeed = lengthdir_x(length, direction360);
var vSpeed = lengthdir_y(length, direction360);

//Control sprite speed
image_speed = sign(length) * imageSpeed;
if(length == 0) image_index = 0;

//Move
scr_obj_move_phy(self, hSpeed, vSpeed);
    