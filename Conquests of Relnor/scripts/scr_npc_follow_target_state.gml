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
        scr_npc_move_to(self, self.target.x, self.target.y, 
        scr_npc_choose_next_state,self.reach-1, true, false);            
    }
