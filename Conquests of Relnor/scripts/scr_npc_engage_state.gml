///scr_npc_engage_state

    var _distanceToTarget = point_distance(self.x, self.y, self.target.x, self.target.y);

    if(_distanceToTarget <= self.reach){
        scr_npc_engage_nearby_target();
    }
    else if(_distanceToTarget > self.sight){
        self.target = noone;
        scr_npc_choose_next_state();
    }
    else{
        scr_lifeform_move_to(self, self.target.x, self.target.y, scr_npc_choose_next_state,self.reach-1);
    }
