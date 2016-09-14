    ///scr_npc_follow_target_state
    
    if(self.target == noone){
        return false;
    }
    var _distanceToTarget = point_distance(self.x, self.y, self.target.x, self.target.y);

    if(_distanceToTarget <= self.reach){
        self.alarm[2] = -1;
        script_execute(self.engageScript);
    }
    else if(_distanceToTarget > self.sight){
        self.alarm[2] = -1;
        self.target = noone;
        scr_npc_choose_next_state();
    }
    else
    {
        var _xReach = round(self.reach/2);
        var _yReach = round(self.reach/2);
        var _direction360 = point_direction(self.x, self.y, self.target.x, self.target.y);
        _direction360 = round(_direction360/45);
        if(_direction360 >= 7){
            _direction360 = FACE_DOWN;
        }
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
        
        var _desiredX = self.x+_xReach;
        var _desiredY = self.y+_yReach;
           
        var _colliding = collision_line(self.x, self.y, _desiredX, _desiredY, obj_npc_Parent, false, true);
    
        if(_colliding){
            image_index = 0;
            image_speed = 0;
            self.alarm[2] = 60;
        }
        else{
            scr_lifeform_move_to(self, self.target.x, self.target.y, scr_npc_choose_next_state,self.reach-1);
        }
    
        
    }
