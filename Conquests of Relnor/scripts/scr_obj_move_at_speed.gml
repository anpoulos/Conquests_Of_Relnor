///scr_obj_move_at_speed(obj_source, obj_target, speed)
if(!instance_exists(argument0) || !instance_exists(argument1) || !instance_exists(argument2)){
    return false;
}

var _source = argument0;
var _target = argument1;
var _followSpeed = argument2;

_source.x += (_target.x - _source.x) * _followSpeed;
_source.y += (_target.y - _source.y) * _followSpeed;
