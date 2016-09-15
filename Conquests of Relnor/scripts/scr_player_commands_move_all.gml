///scr_player_commands_move_all
    for(var i = 0; i < MAX_NPCS; i++){
        if(self.commandModule.selected[i] != noone && 
        self.commandModule.selected[i]){
            scr_npc_commands_move(global.npcs[i],
            self.commandModule.unitArrivalCommand);
        }
    }
