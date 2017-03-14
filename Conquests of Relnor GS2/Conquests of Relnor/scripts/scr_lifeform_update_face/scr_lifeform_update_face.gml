///scr_lifeform_update_face

    //Update face
    scr_lifeform_get_face();
    
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
