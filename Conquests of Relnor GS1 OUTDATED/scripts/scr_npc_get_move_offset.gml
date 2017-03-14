///scr_npc_get_move_offset(sourceX, sourceY, targetX, targetY, accuracy)

var _sourceX = round(argument0);
var _sourceY = round(argument1);
var _targetX = round(argument2);
var _targetY = round(argument3);
var _accuracy = argument4;

//for debug purposes
var _iOffsetX = _targetX - _sourceX;
var _iOffsetY = _targetY - _sourceY;

var _xOffset = sign(_iOffsetX);
var _yOffset = sign(_iOffsetY);

if(-_accuracy < _iOffsetX && _iOffsetX < _accuracy) _xOffset = 0;
if(-_accuracy < _iOffsetY && _iOffsetY < _accuracy) _yOffset = 0;

_xyResults[2] = 0;
_xyResults[0] = _xOffset;
_xyResults[1] = _yOffset;
return _xyResults;
