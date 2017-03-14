///scr_npc_states_wait_move


//check if can walk there or not
var _inFrontOfMe = false;
var _checkDistance = 2;

switch(self.face4Way){
    case RIGHT:
        _inFrontOfMe = collision_line(x,y,x+_checkDistance,y,obj_Lifeform_Parent,false,true);
    break;
    case DOWN:
        _inFrontOfMe = collision_line(x,y,x,y+_checkDistance,obj_Lifeform_Parent,false,true);
    break;
    case LEFT:
        _inFrontOfMe = collision_line(x,y,x-_checkDistance,y,obj_Lifeform_Parent,false,true);
    break;
    case UP:
        _inFrontOfMe = collision_line(x,y-_checkDistance,x,y,obj_Lifeform_Parent,false,true);
    break;
}

if(!_inFrontOfMe){
    self.state = self.moveState;
}
