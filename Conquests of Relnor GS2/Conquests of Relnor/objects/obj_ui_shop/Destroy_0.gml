/// @description Destroy buttons and stuff
// You can write your code in this editor

while(!scr_linked_list_is_empty(itemButtons)){
	instance_destroy(scr_linked_list_remove_next(itemButtons));
}

scr_linked_list_destroy(itemButtons);

instance_destroy(shopContainer);

scr_ui_virtual_mouse_cleanup_from_player();