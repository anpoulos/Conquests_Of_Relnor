///Object Depth

depth = -y;
self.currentDepth = depth;

///State execution

if(global.gamePaused){
    image_speed = 0;
}
else{
    script_execute(state);
}

///Check for unwalkable object in front with collision line

if(self.state != self.moveState){
    return false;
}

var _inFrontOfMe = false;

switch(self.face4Way){
    case RIGHT:
        _inFrontOfMe = collision_line(x,y,x+self.size,y,obj_unwalkable,false,true);
    break;
    case DOWN:
        _inFrontOfMe = collision_line(x,y,x,y+self.size,obj_unwalkable,false,true);
    break;
    case LEFT:
        _inFrontOfMe = collision_line(x,y,x-self.size,y,obj_unwalkable,false,true);
    break;
    case UP:
        _inFrontOfMe = collision_line(x,y-self.size*2,x,y,obj_unwalkable,false,true);
    break;
}

if(_inFrontOfMe){
    image_index = 0;
    image_speed = 0;
}

