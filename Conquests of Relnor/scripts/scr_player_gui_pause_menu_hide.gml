///scr_player_gui_pause_menu

scr_player_disable_busy();
    
if(PauseMenuContainer != noone){
    for(var i = 0; i < scr_linked_list_size(Menus); i++){
        var _menu = scr_linked_list_get_next(Menus);
        if(instance_exists(_menu)){
            _menu.isVisible = _menu.wasVisible;
        }
    }
    PauseMenuContainer.isVisible = false;
    return true;
}


