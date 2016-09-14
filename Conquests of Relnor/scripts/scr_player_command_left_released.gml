///scr_player_command_select

//move units
if(!self.stillSelecting){
    if(!self.CommandMenuContainer.buttonPressed){
        var t = "";
        scr_player_command_apply_script_to_all_selected(self.unitMoveCommand);
    }    
}

with(self.selectBox){
    instance_destroy();
}
self.selectBox = noone;
