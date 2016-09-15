///scr_ui_font_constructor(x,y, text, font, color, alpha, halign, valign, menuContainer)

var _uiFont = instance_create(argument0,argument1,obj_ui_font);

_uiFont.text = argument2;
_uiFont.font = argument3;
_uiFont.color = argument4;
_uiFont.alpha = argument5;
_uiFont.halign = argument6;
_uiFont.valign = argument7;

if(argument7 != noone){
    _uiFont.menuContainer = argument8;
    scr_ui_menu_container_add_draw_object(_uiFont,_uiFont.menuContainer);
}

return _uiFont;
