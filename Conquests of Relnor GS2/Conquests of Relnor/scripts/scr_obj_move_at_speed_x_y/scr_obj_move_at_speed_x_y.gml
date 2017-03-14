///scr_obj_move_at_speed_x_y(obj_source, destinationX, destinationY, speed)

var _source = argument0;
var _destinationX = argument1;
var _destinationY = argument2;
var _followSpeed = argument3;

_source.x += (_destinationX - _source.x) * _followSpeed;
_source.y += (_destinationY - _source.y) * _followSpeed;
