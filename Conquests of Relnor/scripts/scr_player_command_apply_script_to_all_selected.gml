///scr_player_command_apply_script_to_all_selected(script)

if(argument0 == noone) return false;

for(var i = 0; i < self.commandModule.totalSelected; i++){
    var _currentNPC = scr_linked_list_peak(self.commandModule.selected);
    if(instance_exists(_currentNPC)){
        if(self.allegiance == _currentNPC.allegiance && 
            self.allegianceRank[self.allegiance] > _currentNPC.allegianceRank[_currentNPC.allegiance]){
                with(scr_linked_list_get_next(self.commandModule.selected)){
                    script_execute(argument0);
                }
            }
    }
    else{
        scr_linked_list_remove_next(self.commandModule.selected);
    }
}


