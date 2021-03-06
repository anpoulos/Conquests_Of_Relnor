///Object Depth
if(actionTimer > 0){
	actionTimer -= 1;
}

scr_map_shadow_draw_lifeform(1, 0.5);

depth = -y;
currentDepth = depth;
if(!global.gamePaused && combatCheckCount > 0){
	combatCheckCount -= 1;
}

//recover energy if not moving or using
if(!triggers[TRIGGER_DASH] && state != attackState){
	scr_lifeform_recover_energy();
}

statRestoreStep += 1;

//every ten seconds
if(statRestoreStep > 300){
	statRestoreStep = 0;
	
	for(var j = 0; j < STATS_PHYSICAL_MAX; j++){
		if(statsCurrent[STATS_PHYSICAL, j] > statsMax[STATS_PHYSICAL, j]){
			scr_lifeform_increase_stat(self, STATS_PHYSICAL, j, -1);
		}
	}
	for(var j = 0; j < STATS_COMMANDING_MAX; j++){
		if(statsCurrent[STATS_COMMANDING, j] > statsMax[STATS_COMMANDING, j]){
			scr_lifeform_increase_stat(self, STATS_COMMANDING, j, -1);
		}
	}
	for(var j = 0; j < STATS_TOOLS_MAX; j++){
		if(statsCurrent[STATS_TOOLS, j] > statsMax[STATS_TOOLS, j]){
			scr_lifeform_increase_stat(self, STATS_TOOLS, j, -1);
		}
	}
	for(var j = 0; j < STATS_INTELLIGENCE_MAX; j++){
		if(statsCurrent[STATS_INTELLIGENCE, j] > statsMax[STATS_INTELLIGENCE, j]){
			scr_lifeform_increase_stat(self, STATS_INTELLIGENCE, j, -1);
		}
	}

}

///State execution

if(global.gamePaused){
    image_speed = 0;
}
else{
    script_execute(state);
}

///Check for unwalkable object in front with collision line

//var _inFrontOfMe = false;
//switch(self.face4Way){
//    case RIGHT:
//        _inFrontOfMe = collision_line(x,y,x+self.size,y,obj_unwalkable,false,true);
//    break;
//    case DOWN:
//        _inFrontOfMe = collision_line(x,y,x,y+self.size,obj_unwalkable,false,true);
//    break;
//    case LEFT:
//        _inFrontOfMe = collision_line(x,y,x-self.size,y,obj_unwalkable,false,true);
//    break;
//    case UP:
//        _inFrontOfMe = collision_line(x,y-self.size*2,x,y,obj_unwalkable,false,true);
//    break;
//}

//if(_inFrontOfMe){
//    image_index = 0;
//    image_speed = 0;
//}

