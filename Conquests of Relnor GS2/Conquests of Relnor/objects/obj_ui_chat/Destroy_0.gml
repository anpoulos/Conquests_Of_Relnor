///Destroy

with(player){
    scr_player_disable_busy();
}
with(npc){
    scr_npc_disable_busy();
}

while(!scr_linked_list_is_empty(buttons)){
	instance_destroy(scr_linked_list_remove_next(buttons));
}
scr_linked_list_destroy(buttons);

while(!scr_linked_list_is_empty(lines)){
	instance_destroy(scr_linked_list_remove_next(lines));
}
scr_linked_list_destroy(lines);

for(var i = 0; i < array_length_1d(branches); i++){
	if(branches[i] != noone){
		scr_linked_list_destroy(branches[i]);
	}
}

scr_destroy_instance(ChatContainer);

instance_destroy(speechBubble);

