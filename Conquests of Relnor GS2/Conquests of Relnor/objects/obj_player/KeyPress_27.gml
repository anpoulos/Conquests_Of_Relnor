///Bring up esc menu

if(PauseMenuContainer != noone){
    if(PauseMenuContainer.isVisible){
        scr_player_gui_party_menu_hide();
        return true;
    }
    else{
        scr_player_gui_party_menu();
        return true;
    }    
}

scr_player_gui_party_menu();

