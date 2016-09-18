///scr_player_commands_move_all
    for(var i = 0; i < self.commandModule.totalSelected; i++){
            scr_npc_commands_move(scr_linked_list_get_next(self.commandModule.selected),
            self.commandModule.unitArrivalCommand);
    }
