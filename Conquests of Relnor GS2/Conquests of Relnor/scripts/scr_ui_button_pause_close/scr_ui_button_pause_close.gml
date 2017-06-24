///scr_ui_button_pause_close

scr_player_disable_busy();
    
global.gamePaused = false;

scr_ui_menus_restore_all();

scr_ui_virtual_mouse_cleanup_from_player();