///scr_lifeform_automove_check
if(self.moveToX != noone && self.moveToY != noone){
    self.alarm[1] = -1; //turn off idle state alarm
    var _rangeStop = self.moveToAccuracy;
    var _distanceToEnd = point_distance(self.x, self.y, self.moveToX, self.moveToY);
    if(_distanceToEnd < _rangeStop){
        self.moveToX = noone;
        self.moveToY = noone;
        scr_npc_set_move_offset(0,0);
        
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
        var _xy = scr_npc_get_move_offset(self.x, self.y, self.moveToX, self.moveToY, self.moveToAccuracy/2);
        scr_npc_set_move_offset(_xy[0], _xy[1]);
    }
}
