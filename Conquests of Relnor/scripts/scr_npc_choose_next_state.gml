///scr_npc_choose_next_state

if(self.target == noone){
    self.target = scr_npc_get_target();
}

if(self.target != noone){
    self.state = scr_npc_follow_target_state;
    return true;
}

var _distanceFromOrigin = point_distance(self.originX, self.originY, self.x, self.y);
if(self.moveToX == noone && self.moveToY == noone && _distanceFromOrigin > self.wanderRadius){
    scr_lifeform_move_to(self, self.originX, self.originY, scr_npc_choose_next_state, 50, true);
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
        scr_lifeform_move_to(self, self.x+_moveOffsetX, self.y+_moveOffsetY,scr_npc_choose_next_state, 10, true);
    break;

}

