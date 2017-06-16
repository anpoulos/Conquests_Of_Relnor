///tempVal is the bindingIndex

global.player.triggersBinding[tempVal] = 0;

with(global.player){
	scr_ui_menus_controls_refresh_bindings();
}