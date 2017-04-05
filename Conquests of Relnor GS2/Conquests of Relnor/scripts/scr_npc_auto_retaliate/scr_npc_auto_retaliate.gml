///scr_npc_auto_retaliate(target)
        self.target = argument0;
        self.alarm[2] = -1;
        self.state = self.attackState;
		
		if(!isAggressive){
			isAggressive = true;
		}
