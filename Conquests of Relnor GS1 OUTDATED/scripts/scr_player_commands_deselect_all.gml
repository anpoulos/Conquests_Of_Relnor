///scr_player_commands_deselect_all

    var _totalSelected = self.commandModule.totalSelected;
    var _selected = self.commandModule.selected;

    for(var i = 0; i < _totalSelected; i++){
        var _currentNPC = scr_linked_list_remove_next(_selected);
        scr_player_command_deselect(self, _currentNPC);
    }
