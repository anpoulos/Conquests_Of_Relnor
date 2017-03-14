///scr_player_gui_party_update_all()

var player = instance_find(obj_player, 0);
with(player){
    scr_player_gui_party_update_inventory();
    scr_player_gui_party_update_equipment();
    scr_player_gui_party_update_character_panels();
    InventoryInfoContainer.isVisible = false;
}
