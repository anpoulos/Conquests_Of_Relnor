///scr_npc_states_move_state


if(self.target != noone){   //means we are chasing someone
    var _p = path_add();
    if(mp_grid_path(global.aiGrid, _p, x, y, target.x, target.y, true)){
        if(path_get_number(_p) > 0){
            path_delete(path);
            path = _p;
            pathIndex = 1;
        }
    }
}

if(path_get_length(path) == 0){ 
    image_index = 0;
    image_speed = 0;
    return true;
}

var _rangeStop = self.moveToAccuracy;
var _totalPoints = path_get_number(path);
if(_totalPoints < 1){
    return false;
}
var _lastPointX = path_get_point_x(path, _totalPoints-1);
var _lastPointY = path_get_point_y(path, _totalPoints-1);

var _distanceToEnd = point_distance(self.x, self.y, _lastPointX, _lastPointY);

if(_distanceToEnd < _rangeStop){
        
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
    
    scr_npc_choose_next_state();
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

scr_npc_movement_move_one_tick(_nextPathPointX, _nextPathPointY);

return true;
