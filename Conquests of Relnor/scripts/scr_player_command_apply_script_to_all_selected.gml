///scr_player_command_apply_script_to_all_selected(script)

if(argument0 == noone) return false;

    for(var i = 0; i < self.commandModule.totalSelected; i++){
            with(scr_linked_list_get_next(self.commandModule.selected)){
                script_execute(argument0);
            }
    }


