///@param obj_menu_container

var _menu = argument0;

do{
	var _menuParent = _menu.menuContainer;
	if(_menuParent != noone){
		_menu = _menuParent;
	}
}
until(_menuParent == noone);

return _menu;
