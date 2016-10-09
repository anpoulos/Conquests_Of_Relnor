///scr_player_mouse_global_left_released

if(isBusy || ClickedUIObject){
    ClickedUIObject = noone;
    return false;
}

//move units
if(!self.stillSelecting && self.commandModule.mouseCommand != noone){
    script_execute(self.commandModule.mouseCommand);
}

with(self.selectBox){
    instance_destroy();
}
self.selectBox = noone;
