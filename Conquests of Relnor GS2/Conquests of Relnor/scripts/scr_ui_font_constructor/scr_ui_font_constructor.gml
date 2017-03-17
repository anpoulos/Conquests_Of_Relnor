///@param x
///@param y
///@param text
///@param font
///@param color
///@param alpha
///@param halign
///@param valign
///@param menuContainer


var _uiFont = instance_create(argument0,argument1,obj_ui_font);

_uiFont.text = argument2;
_uiFont.font = argument3;
_uiFont.color = argument4;
_uiFont.alpha = argument5;
_uiFont.halign = argument6;
_uiFont.valign = argument7;

if(argument8 != noone){
    scr_ui_menu_container_add_draw_object(_uiFont,argument8);
}

return _uiFont;
