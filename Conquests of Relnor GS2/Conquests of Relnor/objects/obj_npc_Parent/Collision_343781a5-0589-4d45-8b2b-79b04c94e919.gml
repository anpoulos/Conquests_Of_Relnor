///Collision

if(currentMoveSpeed > 0){
    var _myNextPointX = path_get_point_x(path, pathIndex);
    var _myNextPointY = path_get_point_y(path, pathIndex);
    if(point_distance(x,y,_myNextPointX, _myNextPointY) > 
        point_distance(other.x,other.y,_myNextPointX, _myNextPointY)){
        currentMoveSpeed -= 1;
    }
}

if((self.isAggressive || self.isDefensive) && !self.commandedMoveTo){
    if(other.allegiance != self.allegiance){
        scr_npc_auto_retaliate(other);
        return true;
    }
}

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
    mp_grid_get_cell(global.aiGrid, scr_room_get_grid_x(_destinedX1), scr_room_get_grid_y(_destinedY1)) != 0 ){
        path_change_point(path, pathIndex, _destinedX1, _destinedY1, self.currentMoveSpeed);
        if(pathIndex+1 < path_get_number(path)){
           path_change_point(path, pathIndex+1, x+_newXOffset2, y+_newYOffset2, self.currentMoveSpeed);
        }     
    }
    
}



