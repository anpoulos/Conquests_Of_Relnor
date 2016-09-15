///scr_player_commands_deselect_all

    for(var i = 0; i < MAX_NPCS; i++){
        if(self.commandModule.selected[i] != noone && 
        self.commandModule.selected[i]){
            scr_player_command_deselect(self, global.npcs[i]);
        }
    }
