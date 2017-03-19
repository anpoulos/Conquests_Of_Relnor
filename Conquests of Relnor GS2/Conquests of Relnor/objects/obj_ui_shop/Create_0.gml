/// @description Create containers and buttons
// You can write your code in this editor
event_inherited();

owner = noone;


//Menu Container
var _menuColor = make_colour_rgb(100,100,150);
var _menuColorArray = scr_create_obj_array4_repeat(_menuColor, "_menuColorArray");
    
var _halfWidth = display_get_gui_width()/2;
var _halfHeight = display_get_gui_height()/2;
    
var _menuPosArray = scr_create_obj_array4(-_halfWidth+50, -_halfHeight+50, 
                                        _halfWidth-50, _halfHeight-50, "_menuPosArray");
var _menuX = _halfWidth;
var _menuY = _halfHeight;
    
shopContainer = scr_ui_menu_create_container(_menuX, _menuY, _menuPosArray, _menuColorArray, true, 0.9, noone);
    
scr_destroy_instance(_menuColorArray);
scr_destroy_instance(_menuPosArray);

shopContainer.isVisible = true;
//End of Menu Container

