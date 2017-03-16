///Destroy

with(player){
    scr_player_disable_busy();
}
with(npc){
    scr_npc_disable_busy();
}

for(var i = 0; i < scr_linked_list_size(buttons); i++){
	instance_destroy(scr_linked_list_remove_next(buttons));
}
scr_linked_list_destroy(buttons);

for(var i = 0; i < scr_linked_list_size(lines); i++){
	instance_destroy(scr_linked_list_remove_next(lines));
}
scr_linked_list_destroy(lines);

for(var i = 0; i < array_length_1d(branches); i++){
    scr_linked_list_destroy(branches[i]);
}

scr_destroy_instance(ChatContainer);


