///scr_npc_commands_move(npc, arrivalScript, destinationX, destinationY, ignoreLifeforms)
    if(self.allegiance != argument0.allegiance || 
            self.allegianceRank[self.allegiance] <= argument0.allegianceRank[argument0.allegiance]){
            return false;
    }
    
    argument0.commandedMoveTo = true;
    
    if(global.gamePaused){
        scr_npc_find_path(argument0, argument0.path, argument1, argument2);
    }
        
    scr_npc_move_to(argument0,  argument2, argument3,
    argument1, argument0.size, argument4, false, argument0.runSpeed);
