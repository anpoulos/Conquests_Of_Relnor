///scr_npc_auto_retaliate(target)
if(!isPlayer){
    self.target = argument0;
    self.state = self.attackState;
		
	if(!isAggressive){
		isAggressive = true;
	}
}
