///scr_ui_draw_line_constructor(x1,y1,x2,y2,width,col1,col2, menuContainer)

var _line = instance_create(0,0,obj_ui_line);

_line.x1 = argument0;
_line.y1 = argument1;
_line.x2 = argument2;
_line.y2 = argument3;
_line.width = argument4;
_line.col1 = argument5;
_line.col2 = argument6;

scr_ui_menu_container_add_draw_object(_line, argument7);

return _line;
