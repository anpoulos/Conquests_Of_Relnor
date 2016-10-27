///scr_ui_menu_container_add_draw_object(obj_ui_draw_parent, obj_ui_menu_container)
var _object = argument0;
var _menuContainer = argument1;

_object.menuContainer = _menuContainer;
scr_linked_list_add(_menuContainer.objects, _object);

return false;
