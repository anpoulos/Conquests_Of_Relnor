///@param linkedList

while(!scr_linked_list_is_empty(argument0)){
	var _obj = scr_linked_list_remove_next(argument0);
	if(instance_exists(_obj)){
		instance_destroy(_obj);
	}
}

scr_linked_list_destroy(argument0);