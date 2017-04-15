///Bring up esc menu

if(global.gamePaused){

	PauseMenuContainer.isVisible = false;
	
	scr_ui_menus_restore_all();
	
	scr_player_disable_busy();
	
	global.gamePaused = false;
}
else{
	global.gamePaused = true;
	
	scr_ui_menus_hide_all();

	scr_player_enable_busy();

	scr_player_gui_party_menu();
}
