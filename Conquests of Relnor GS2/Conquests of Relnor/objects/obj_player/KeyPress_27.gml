///Bring up esc menu

var _totalClickables = instance_number(obj_ui_button);
for(var i = 0; i < _totalClickables; i ++){
	var _clickable = instance_find(obj_ui_button, i);
	if(scr_ui_draw_is_visible(_clickable) && _clickable.menuContainer != PauseMenuOptionsContainer){
		switch(_clickable.text){
			case "X":
			case "x":
			case "Close":
			case "Close Menu":
			case "close":
			case "close menu":
				with(_clickable){
					scr_ui_draw_clickable_clicked();
				}
				return true;
			break;
		}
	}
}

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
