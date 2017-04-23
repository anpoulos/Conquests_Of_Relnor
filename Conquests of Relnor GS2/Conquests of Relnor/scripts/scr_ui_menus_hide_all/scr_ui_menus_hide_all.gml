

var _totalMenus = instance_number(obj_ui_menu_container);

for(var i = 0; i < _totalMenus; i++){
	var _menu = instance_find(obj_ui_menu_container, i);
	var _rootMenu = scr_ui_menus_get_root_menu(_menu);
	_rootMenu.wasVisible = _rootMenu.isVisible;
}

for(var i = 0; i < _totalMenus; i++){
	var _menu = instance_find(obj_ui_menu_container, i);
	var _rootMenu = scr_ui_menus_get_root_menu(_menu);
	_rootMenu.isVisible = false;
}

if(global.isWorldMap){
	scr_square_player_clear_clickable_squares(global.player.mapControl);
}