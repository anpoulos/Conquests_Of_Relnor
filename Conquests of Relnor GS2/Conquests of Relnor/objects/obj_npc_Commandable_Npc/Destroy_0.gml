///Destroy

if(self.selected){
    if(instance_exists(self.commander)){
        for(var i = 0; i < self.commander.commandModule.totalSelected; i++){
            var _currentNPC = scr_linked_list_peak(self.commander.commandModule.selected);
            if(_currentNPC == self){
                scr_linked_list_remove_next(self.commander.commandModule.selected);
                break;
            }
            else{
                scr_linked_list_get_next(self.commander.commandModule.selected);
            }
        }
    
        scr_player_command_deselect(self.commander, self);
    }
}

event_inherited();

