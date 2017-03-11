///scr_player_gui_party_character_clicked

//this script is being executed as obj_ui_party_character_panel object
player.InventoryInfoContainerItemStats.player = character;

with(player){
    scr_player_gui_party_update_inventory();
    scr_player_gui_party_update_equipment();  
    
    for(var i = 0; i < scr_linked_list_size(CharacterPanels); i++){
        var _panel = scr_linked_list_get_next(CharacterPanels);
        _panel.selected = false;
    }
}

selected = true;
