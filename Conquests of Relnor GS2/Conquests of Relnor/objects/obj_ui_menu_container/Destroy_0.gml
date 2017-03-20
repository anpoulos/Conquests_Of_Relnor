///Destroy

while(!scr_linked_list_is_empty(objects)){
	instance_destroy(scr_linked_list_remove_next(objects));
}

scr_linked_list_destroy(objects);

