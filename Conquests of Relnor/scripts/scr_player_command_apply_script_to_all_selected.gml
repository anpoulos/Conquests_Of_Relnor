///scr_player_command_apply_script_to_all_selected(script)

if(argument0 == noone) return false;

    for(var i = 0; i < MAX_NPCS; i++){
        if(self.commandModule.selected[i] != noone && 
        self.commandModule.selected[i]){
            with(global.npcs[i]){
                script_execute(argument0);
            }
        }
    }


