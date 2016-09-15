///scr_ui_menu_container_add_draw_object(obj_ui_draw_parent, obj_ui_menu_container)
var _object = argument0;
var _menuContainer = argument1;

for(var i = 0; i < _menuContainer.objects.size; i++){
    if(_menuContainer.objects.item[i] == noone){
        _menuContainer.objects.item[i] = _object;
        return true;
    }
}

return false;
