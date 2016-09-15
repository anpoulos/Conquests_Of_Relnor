///scr_lifeform_automove_check
if(self.moveToX != noone && self.moveToY != noone){
    self.alarm[1] = -1; //turn off idle state alarm
    
    //lovely performance hit this does
    if(self.isAggressive && self.target == noone){
        self.target = scr_npc_get_target();
        if(self.target != noone){
            self.state = scr_npc_follow_target_state;
            return true;
        }
    }
    
    var _rangeStop = self.moveToAccuracy;
    var _distanceToEnd = point_distance(self.x, self.y, self.moveToX, self.moveToY);
    if(_distanceToEnd < _rangeStop){
        self.moveToX = noone;
        self.moveToY = noone;
        scr_npc_set_move_offset(0,0);
        self.commandedMoveTo = false;
        
        if(self.moveToEndScript != noone){
            script_execute(self.moveToEndScript);
            self.moveToEndScript = noone;
        }
        
        if(self.isPlayer){
            self.moveInputs = scr_player_get_action_inputs;
            self.state = scr_lifeform_move_state;
        }
        else{
            self.state = scr_npc_choose_next_state;
        }
        
    }
    else{
        if(phy_active && scr_lifeform_is_path_blocked(self.moveToX, self.moveToY)){
            scr_npc_set_move_offset(0, 0);  
            if(self.target != noone){
                self.alarm[2] = 60; //target timeout timer
            }  
            if(!self.commandedMoveTo){
                self.moveToX = noone;
                self.moveToY = noone;
                scr_npc_choose_next_state();
                return true;
            }
        }
        else{ 
            var _xy = scr_npc_get_move_offset(self.x, self.y, self.moveToX, self.moveToY, self.moveToAccuracy/2);
            scr_npc_set_move_offset(_xy[0], _xy[1]);
            self.state = self.moveState;        
        }        
    }
}
