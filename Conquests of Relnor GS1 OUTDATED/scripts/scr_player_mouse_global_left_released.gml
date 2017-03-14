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
    var _potentialEnemy = instance_position(mouse_x, mouse_y, obj_npc_Parent);
    if(instance_exists(_potentialEnemy) && _potentialEnemy.allegiance != allegiance){
        for(var i = 0; i < scr_linked_list_size(commandModule.selected); i++){
            var _npc = scr_linked_list_get_next(commandModule.selected);
            scr_npc_combat_lock_target(_npc, _potentialEnemy);
        }
    }
    else{
        if(self.commandModule.mouseCommand != noone){
            script_execute(self.commandModule.mouseCommand);
        }
    }
}

with(self.selectBox){
    instance_destroy();
}
self.selectBox = noone;
