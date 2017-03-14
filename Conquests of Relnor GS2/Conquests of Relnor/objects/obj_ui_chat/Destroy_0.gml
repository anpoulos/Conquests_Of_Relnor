///Destroy

with(player){
    scr_player_disable_busy();
}
with(npc){
    scr_npc_disable_busy();
}

for(var i = 0; i < array_length_1d(lines); i++){
    if(instance_exists(lines[i])){
        scr_destroy_instance(lines[i]);
    }
}

for(var i = 0; i < array_length_1d(buttons); i++){
    scr_destroy_instance(buttons[i]);
}

for(var i = 0; i < array_length_1d(branches); i++){
    scr_linked_list_destroy(branches[i]);
}

scr_destroy_instance(ChatContainer);
scr_linked_list_destroy(allLines);


