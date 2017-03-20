with(instance_find(obj_player, 0)){
	for(var i = 0; i < scr_linked_list_size(Menus); i++){
	    var _menu = scr_linked_list_get_next(Menus);
	    if(instance_exists(_menu)){
	        _menu.wasVisible = _menu.isVisible;
	        _menu.isVisible = false;
	    }
	}
}

scr_ui_menus_cleanup_list();