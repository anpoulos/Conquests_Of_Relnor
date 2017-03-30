///scr_player_mouse_global_left_released

if(isBusy || scr_linked_list_size(ClickedUIObjects) > 0){

    while(scr_linked_list_size(ClickedUIObjects) > 0){
        var _uiObject = scr_linked_list_remove_next(ClickedUIObjects);
        //all objects in this list are from the clickable parent class
        _uiObject.alarm[0] = _uiObject.delay;
    }    

    return false;
}

//move units
if(!self.stillSelecting){
	if(commandModule.mouseCommand != noone){
        script_execute(self.commandModule.mouseCommand);
	}
}

with(self.selectBox){
    instance_destroy();
}
self.selectBox = noone;
