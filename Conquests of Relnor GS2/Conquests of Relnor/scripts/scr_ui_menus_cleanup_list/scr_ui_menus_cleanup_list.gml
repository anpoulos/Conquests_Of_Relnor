with(instance_find(obj_player, 0)){
	for(var i = 0; i < scr_linked_list_size(Menus); i++){
	    var _menu = scr_linked_list_peak(Menus);
	    if(!instance_exists(_menu)){
			scr_linked_list_remove_next(Menus);
	    }
		else{
			scr_linked_list_get_next(Menus);
		}
	}
}