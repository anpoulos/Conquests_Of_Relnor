///scr_ui_menu_create_container(originX, originY, position_array4, color_array4, isOutlined, menuAlpha, stepScript)

var _menu = instance_create(argument0, argument1, obj_ui_menu_container);

_menu.leftOffset = argument2.item[0];
_menu.leftX = _menu.x + _menu.leftOffset;

_menu.topOffset = argument2.item[1];
_menu.topY = _menu.y + _menu.topOffset;

_menu.rightOffset = argument2.item[2];
_menu.rightX = _menu.x + _menu.rightOffset;

_menu.bottomOffset = argument2.item[3];
_menu.bottomY = _menu.y + _menu.bottomOffset;

_menu.topLeftColor = argument3.item[0];
_menu.topRightColor = argument3.item[1];
_menu.bottomRightColor = argument3.item[2];
_menu.bottomLeftColor = argument3.item[3];
_menu.isOutlined = argument4;
_menu.menuAlpha = argument5;
_menu.stepScript = argument6;

return _menu;

