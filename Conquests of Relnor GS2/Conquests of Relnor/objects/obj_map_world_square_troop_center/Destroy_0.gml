/// @description Insert description here
// You can write your code in this editor

while(!scr_linked_list_is_empty(camps)){
	instance_destroy(scr_linked_list_remove_next(camps));
}

scr_linked_list_destroy(camps);