///scr_npc_idle_state
image_speed = 0;
image_index = 0;

if(self.isAggressive){
    self.target = scr_npc_get_closest_target();
    
    if(self.target != noone){
        alarm[1] = -1; //turn off idle alarm
		state = attackState;
        return true;
    }
}
