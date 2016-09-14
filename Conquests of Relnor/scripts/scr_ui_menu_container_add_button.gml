///scr_ui_menu_container_add_button(obj_ui_button, obj_ui_menu_container)
var _button = argument0;
var _menuContainer = argument1;

for(var i = 0; i < _menuContainer.buttons.size; i++){
    if(_menuContainer.buttons.item[i] == noone){
        _menuContainer.buttons.item[i] = _button;
        return true;
    }
}

return false;
