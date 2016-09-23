///scr_lifeform_move_state()

script_execute(self.moveInputs); //populates various direction values and key presses

scr_check_triggers(); //may change state

//get axis values
xAxis = self.directions[RIGHT] - self.directions[LEFT];
yAxis = self.directions[DOWN] - self.directions[UP];

//Get direction
self.direction360 = point_direction(0, 0, xAxis, yAxis);

//Get length
if (xAxis == 0 && yAxis == 0){
    self.length = 0;
}
else{
    self.length = self.currentMoveSpeed;
    scr_lifeform_get_face();
    if(triggers[TRIGGER_DASH]){
        state = scr_lifeform_dash_state;
        self.alarm[0] = dashSpeed;
    }
}

// Get speeds
hSpeed = lengthdir_x(self.length, self.direction360);
vSpeed = lengthdir_y(self.length, self.direction360);

//Control the sprite
self.image_speed = sign(self.length) * self.imageSpeed;
if(self.length == 0) self.image_index = 0;

//sprite direction
switch(self.face8Way){
    case FACE_RIGHT:
    //case RIGHT:
        self.face4Way = RIGHT;
        self.sprite_index = self.sprites[RIGHT];
    break;
    
    case FACE_LEFT:
    //case LEFT:
        self.face4Way = LEFT;
        self.sprite_index = self.sprites[LEFT];
    break;
    
    case FACE_UPPERRIGHT:
    case FACE_UPPERLEFT:
    case FACE_UP:
    //case UP:
        self.face4Way = UP;
        self.sprite_index = self.sprites[UP];
    break;
    
    case FACE_DOWNRIGHT:
    case FACE_DOWNLEFT:
    case FACE_DOWN:
    //case DOWN:
        self.face4Way = DOWN;
        self.sprite_index = self.sprites[DOWN];
    break;
}

//Move
scr_obj_move_phy(self, hSpeed, vSpeed);

