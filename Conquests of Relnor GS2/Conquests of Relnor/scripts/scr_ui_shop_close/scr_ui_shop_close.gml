with(owner){
	scr_npc_disable_busy();
}

with(instance_find(obj_player, 0)){
	scr_player_disable_busy();
}

scr_ui_menus_reveal_all();

instance_destroy();