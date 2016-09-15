///scr_lifeform_is_path_blocked(desiredX, desiredY)

    //get direction
        var _xReach = round(self.reach/3);
        var _yReach = round(self.reach/3);
        var _direction360 = point_direction(self.x, self.y, argument0, argument1);
        _direction360 = round(_direction360/45);
        if(_direction360 >= 7){
            _direction360 = FACE_DOWN;
        }
        
        //apply multiplier for intended destination direction
        switch(_direction360){
        case FACE_RIGHT:
            _yReach = 0;
        break;
        case FACE_LEFT:
            _xReach *= -1;
            _yReach = 0;
        break;        
        case FACE_UPPERRIGHT:
            _yReach *= -1;
        break;
        case FACE_UPPERLEFT:
            _xReach *= -1;
            _yReach *= -1;
        break;
        case FACE_UP:
            _xReach = 0;
            _yReach *= -1;
        break;
//        case FACE_DOWNRIGHT:
//        break;
        case FACE_DOWNLEFT:
            _xReach *= -1;
        break;
        case FACE_DOWN:
            _xReach = 0;
        break;
        }     
        
        //the intended new coordinates
        var _desiredX = self.x+_xReach;
        var _desiredY = self.y+_yReach;
           
        //maybe make this a rectangle?
        var _colliding = collision_line(self.x, self.y, _desiredX, _desiredY, obj_npc_Parent, false, true);
    
        return _colliding;
