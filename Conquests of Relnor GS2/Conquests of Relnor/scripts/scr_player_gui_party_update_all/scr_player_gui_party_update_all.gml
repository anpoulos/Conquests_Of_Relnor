///scr_player_gui_party_update_all()
///@param hideItemInfo

var player = instance_find(obj_player, 0);
with(player){
	scr_ui_party_inventory_equipment_refresh(argument0);
    scr_player_gui_party_update_character_panels();
	scr_player_gui_party_update_character_stats();
}
