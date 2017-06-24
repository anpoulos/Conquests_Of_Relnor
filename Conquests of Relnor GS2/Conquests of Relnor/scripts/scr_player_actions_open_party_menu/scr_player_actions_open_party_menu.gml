if(global.gamePaused){
	PauseMenuContainer.isVisible = false;
	
	scr_ui_menus_restore_all();
	
	scr_player_disable_busy();
	
	global.gamePaused = false;
	
	scr_ui_virtual_mouse_cleanup_from_player();
}
else{
	global.gamePaused = true;
	
	scr_ui_menus_hide_all();

	scr_player_enable_busy();

	scr_player_gui_party_menu();
	
	scr_ui_virtual_mouse_create(VIRTUAL_MOUSE_MODE_MOUSE, true);
}