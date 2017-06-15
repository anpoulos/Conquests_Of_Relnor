///scr_player_states_move_state()

if(global.isWorldMap){
	return false;
}

script_execute(moveInputs); //populates various direction values and key presses

scr_check_triggers(); //may change state

//get axis values
xAxis = triggers[TRIGGER_RIGHT] - triggers[TRIGGER_LEFT];
yAxis = triggers[TRIGGER_DOWN] - triggers[TRIGGER_UP];

//Get direction
direction360 = point_direction(0, 0, xAxis, yAxis);

//Get length
if (xAxis == 0 && yAxis == 0){
    length = 0;
}
else{
    length = currentMoveSpeed;
    scr_lifeform_get_face();
    if(triggers[TRIGGER_DASH]){
        //state = scr_lifeform_dash_state;
        //self.alarm[0] = dashSpeed;
        if(statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_ENERGY] > 0){
            statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_ENERGY] -= 1;
            length = dashSpeed;
        }
    }
}

// Get speeds
hSpeed = lengthdir_x(length, direction360);
vSpeed = lengthdir_y(length, direction360);

//Control the sprite
image_speed = sign(length) * imageSpeed;
if(length == 0) image_index = 0;
 
//sprite direction
switch(face8Way){
    case FACE_RIGHT:
    //case RIGHT:
        face4Way = RIGHT;
        sprite_index = sprites[RIGHT];
    break;
    
    case FACE_LEFT:
    //case LEFT:
        face4Way = LEFT;
        sprite_index = sprites[LEFT];
    break;
    
    case FACE_UPPERRIGHT:
    case FACE_UPPERLEFT:
    case FACE_UP:
    //case UP:
        face4Way = UP;
        sprite_index = sprites[UP];
    break;
    
    case FACE_DOWNRIGHT:
    case FACE_DOWNLEFT:
    case FACE_DOWN:
    //case DOWN:
        face4Way = DOWN;
        sprite_index = sprites[DOWN];
    break;
}

//var _cellX = (self.x + hSpeed) div global.tileOffset;
//var _cellY = (self.y + vSpeed) div global.tileOffset;

//if(mp_grid_get_cell(global.aiGrid, _cellX, _cellY) == 0){
var _destinationX = x + hSpeed;
var _destinationY = y + vSpeed;
if(_destinationX > 0 && _destinationX < room_width &&
	_destinationY > 0 && _destinationY < room_height){
	scr_obj_move_phy(self, hSpeed, vSpeed);	
}
//}




