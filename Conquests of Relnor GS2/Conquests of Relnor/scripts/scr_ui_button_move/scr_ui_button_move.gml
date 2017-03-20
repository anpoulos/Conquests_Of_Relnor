///scr_ui_button_move(obj_button, x, y)

var _button = argument0;
var _x = argument1;
var _y = argument2;

var _rightOffset = _button.rightX - _button.x;
var _leftOffset = _button.x - _button.leftX;
var _topOffset = _button.y - _button.topY;
var _bottomOffset = _button.bottomY - _button.y;

_button.rightX = _x+_rightOffset;
_button.leftX = _x-_leftOffset;
_button.topY = _y - _topOffset;
_button.bottomY = _y + _bottomOffset;
_button.x = _x;
_button.y = _y;
_button.textX = _button.x;
_button.textY = _button.y+5;