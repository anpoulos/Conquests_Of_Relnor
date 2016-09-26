///scr_npc_states_move_state

if(self.moveToX == noone || self.moveToY == noone){ 
    image_index = 0;
    image_speed = 0;
    return true;
}

var _rangeStop = self.moveToAccuracy;
var _distanceToEnd = point_distance(self.x, self.y, self.moveToX, self.moveToY);

if(_distanceToEnd < _rangeStop){
        
    self.alarm[1] = -1; //turn off idle state alarm
    
    self.commandedMoveTo = false;    
    self.moveToX = noone;
    self.moveToY = noone;
    image_index = 0;
    image_speed = 0;
    
    if(self.moveToEndScript != noone){
        script_execute(self.moveToEndScript);
        self.moveToEndScript = noone;
    }
    
    self.state = scr_npc_choose_next_state;
    return true;
}

var _pathFound = false;

if(mp_grid_path(global.aiGrid, path, x, y, self.moveToX, self.moveToY, true)){
    _pathFound = true;
}
else if(mp_grid_path(global.aiGrid, path, x, y, self.moveToX+global.tileOffset, self.moveToY, true)){
    _pathFound = true;
}
else if(mp_grid_path(global.aiGrid, path, x, y, self.moveToX, self.moveToY+global.tileOffset, true)){
    _pathFound = true;
}
else if(mp_grid_path(global.aiGrid, path, x, y, self.moveToX, self.moveToY-global.tileOffset, true)){
    _pathFound = true;
}
else if(mp_grid_path(global.aiGrid, path, x, y, self.moveToX-global.tileOffset, self.moveToY, true)){
    _pathFound = true;
}


if(_pathFound){

    path_set_kind(path, 1);
    path_set_precision(path, 8);
    
    var myX = x;
    var myY = y;
    var myNewX = path_get_point_x(path, 1);
    var myNewY = path_get_point_y(path, 1);
    
    //Get direction
    self.direction360 = point_direction(x, y, myNewX,myNewY );
    scr_lifeform_update_face();    
    
    //Get length
    self.length = self.currentMoveSpeed;
    
    // Get speeds
    hSpeed = lengthdir_x(self.length, self.direction360);
    vSpeed = lengthdir_y(self.length, self.direction360);
    
    //Control sprite speed
    self.image_speed = sign(self.length) * self.imageSpeed;
    if(self.length == 0) self.image_index = 0;
    
    //Move
    scr_obj_move_phy(self, hSpeed, vSpeed);
}
else{
    image_speed = 0;
    image_index = 0;
}

return true;
