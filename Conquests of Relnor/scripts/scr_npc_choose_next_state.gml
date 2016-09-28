///scr_npc_choose_next_state

if(self.isAggressive){
    self.target = scr_npc_get_closest_target();
    if(self.target != noone){
        var _targetGridX = scr_room_get_grid_x(self.target.x);
        var _targetGridY = scr_room_get_grid_y(self.target.y);
        var _distanceToTarget = point_distance(self.x, self.y, _targetGridX, _targetGridY);
        if(_distanceToTarget <= self.reach){
            self.alarm[2] = -1;
            self.state = self.attackState;
        }
        else{
            scr_npc_move_to(self, _targetGridX, _targetGridY, 
            scr_npc_choose_next_state,self.reach-1, false, false, self.runSpeed);   
        }
    return true;
    }
}

var _distanceFromOrigin = point_distance(self.originX, self.originY, self.x, self.y);
if(_distanceFromOrigin > self.wanderRadius){
    scr_npc_move_to(self, self.originX, self.originY, scr_npc_choose_next_state, 50, false, false, self.moveSpeed);
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
        self.state = scr_npc_idle_state;
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
        scr_npc_move_to(self, _desiredX, _desiredY, scr_npc_choose_next_state, 10, false, true, self.moveSpeed);
    break;

}

