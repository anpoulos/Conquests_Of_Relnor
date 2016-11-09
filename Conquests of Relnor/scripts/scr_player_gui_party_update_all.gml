///scr_player_gui_party_update_all(player)
with(argument0){
    scr_player_gui_party_update_inventory();
    scr_player_gui_party_update_equipment();
    InventoryInfoContainer.isVisible = false;
}
