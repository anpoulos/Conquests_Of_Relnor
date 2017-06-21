///scr_ui_button_pause_close

scr_player_disable_busy();
    
global.gamePaused = false;

scr_ui_menus_restore_all();

if(!global.isWorldMap){
	scr_ui_virtual_mouse_cleanup_from_player();
}
else{
	scr_ui_virtual_mouse_create(VIRTUAL_MOUSE_MODE_MOUSE, false);
}