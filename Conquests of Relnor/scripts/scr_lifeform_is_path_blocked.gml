///scr_lifeform_is_path_blocked(desiredX, desiredY, objBlocking)

    //get direction
        var _reachRatio = self.reach/4;
        var _xReach = round(_reachRatio);
        var _yReach = round(_reachRatio);
        var _direction360 = point_direction(self.x, self.y, argument0, argument1);
        _direction360 = round(_direction360/45);
        if(_direction360 >= 7){
            _direction360 = FACE_DOWNRIGHT;
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
        //case FACE_DOWNRIGHT:
        //
        //break;
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
        //var _collidingLine = collision_line(self.x, self.y, _desiredX, _desiredY, obj_npc_Parent, false, true);
 
        var _collidingCircleWithUnwalkable = collision_circle(_desiredX, _desiredY, _reachRatio, argument2, false, true);
        
        return (_collidingCircleWithOtherNPC || _collidingCircleWithUnwalkable);
