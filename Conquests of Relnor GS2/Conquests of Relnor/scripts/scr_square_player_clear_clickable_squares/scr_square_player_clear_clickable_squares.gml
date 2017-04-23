///@param obj_player_map

with(argument0){
	while(!scr_linked_list_is_empty(uiObjects)){
		instance_destroy(scr_linked_list_remove_next(uiObjects));
	}	
}


