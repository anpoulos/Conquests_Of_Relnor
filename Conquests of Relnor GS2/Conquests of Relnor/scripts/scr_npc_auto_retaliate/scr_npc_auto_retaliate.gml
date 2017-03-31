///scr_npc_auto_retaliate(target)
        self.target = argument0;
        self.alarm[2] = -1;
        self.state = self.attackState;
		
		if(!isAggressive){
			isAggressive = true;
		}
	
	var _lookup = allegianceParent == noone ? obj_npc_Parent : allegianceParent;
	var _total = instance_number(_lookup);
	for(var i = 0; i < _total; i++){
		var _npc = instance_find(_lookup, i);
		var _distance = point_distance(x,y,_npc.x, _npc.y);
		if(_npc.state == _npc.idleState &&
		_distance <= _npc.sight && 
		_npc.target == noone &&
		_npc.lockedTarget == noone &&
		_npc.isDefensive){
			if(!_npc.isAggressive){
				_npc.isAggressive = true;
			}
			scr_npc_combat_lock_target(_npc, self.target);
		}
	}
