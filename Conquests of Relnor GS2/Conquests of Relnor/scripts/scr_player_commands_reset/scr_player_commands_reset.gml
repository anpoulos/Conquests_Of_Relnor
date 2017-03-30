///scr_player_commands_reset

if(self.commandModule.squarePreview != noone){
    scr_destroy_instance(self.commandModule.squarePreview);
    self.commandModule.squarePreview = noone;
}

self.commandModule.mouseCommand = noone;
commandModule.followButtonClicked = false;
commandModule.followTarget = false;


