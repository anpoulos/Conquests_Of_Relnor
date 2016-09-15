///scr_player_command_select

//move units
if(!self.stillSelecting){
    if(!self.CommandMenuContainer.buttonPressed && 
    !self.PassiveMenuContainer.buttonPressed){
        script_execute(self.commandModule.mouseCommand);
    }    
}

with(self.selectBox){
    instance_destroy();
}
self.selectBox = noone;
