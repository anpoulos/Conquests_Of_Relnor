///@param clearItemInfo

with(instance_find(obj_player, 0)){
	scr_lifeform_update_health_bar(self);
	scr_player_gui_party_update_all(argument0);
	scr_player_gui_update_command_selected(true);
	scr_player_gui_update_information();
}