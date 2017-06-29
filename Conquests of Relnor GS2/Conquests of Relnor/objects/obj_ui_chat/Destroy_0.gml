///Destroy

scr_linked_list_destroy_all(buttons);
scr_linked_list_destroy_all(lines);

for(var i = 0; i < array_length_1d(branches); i++){
	if(branches[i] != noone){
		scr_linked_list_destroy(branches[i]);
	}
}

scr_destroy_instance(ChatContainer);

instance_destroy(speechBubble);

if(instance_number(obj_ui_shop) == 0){
    scr_player_disable_busy();
    scr_npc_disable_busy(npc);
	scr_ui_virtual_mouse_cleanup_from_player();
}
