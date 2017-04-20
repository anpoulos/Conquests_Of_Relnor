///scr_npc_states_move_state

if(currentMoveSpeed < moveSpeed){
    currentMoveSpeed += 0.5;
}

if(!ignoreTargeting && (self.isAggressive && !self.commandedMoveTo) || lockedTarget != noone){

	var _previousTarget = target;
	
    if(lockedTarget != noone){
        target = lockedTarget;
    }
    else{
        self.target = scr_npc_get_closest_target();
		if(_previousTarget != noone && target == noone){ //if npc was chasing someone and there is no longer anyone nearby to chase
            path_clear_points(path);
			scr_npc_choose_next_state();
		    return true;
		}
    }
	
    if(target != noone && instance_exists(target)){   //means we are chasing someone
        if(_previousTarget != target || point_distance(x, y, target.x, target.y) <= moveToAccuracy){
            self.state = self.attackState;
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

if(_totalPoints > 0){
    var _lastPointX = path_get_point_x(path, _totalPoints-1);
    var _lastPointY = path_get_point_y(path, _totalPoints-1);
    
    var _distanceToEnd = point_distance(self.x, self.y, _lastPointX, _lastPointY);
}

if(_distanceToEnd < moveToAccuracy){
        
	ignoreTargeting = false;	
		
    self.alarm[1] = -1; //turn off idle state alarm
    
    self.pathIndex = 0;
    self.commandedMoveTo = false;    
    path_clear_points(path);
    image_index = 0;
    image_speed = 0;
    
    if(self.moveToEndScript != noone){
        script_execute(self.moveToEndScript);
        self.moveToEndScript = noone;
    }
	else{
		scr_npc_choose_next_state();
	}
    
    return true;
}

var _nextPathPointX = path_get_point_x(path, pathIndex);
var _nextPathPointY = path_get_point_y(path, pathIndex);

var _distanceToNextPathPoint = point_distance(x,y,_nextPathPointX, _nextPathPointY);

if(_distanceToNextPathPoint < self.moveToAccuracy){
    if(pathIndex + 1 < _totalPoints){
        pathIndex += 1;
    }
}

//Get direction
self.direction360 = point_direction(x, y, _nextPathPointX,_nextPathPointY);
scr_lifeform_update_face();    
    
//Get length
self.length = self.currentMoveSpeed;

// Get speeds
var hSpeed = lengthdir_x(self.length, self.direction360);
var vSpeed = lengthdir_y(self.length, self.direction360);

//Control sprite speed
self.image_speed = sign(self.length) * self.imageSpeed;
if(self.length == 0) self.image_index = 0;

//Move
scr_obj_move_phy(self, hSpeed, vSpeed);
    