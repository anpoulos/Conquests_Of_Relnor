///scr_lifeform_is_facing(object)

var _object = argument0;

var _direction360RelativeToMe = point_direction(x, y, _object.x, _object.y);
var _direction4WayRelativeToMe = round(_direction360RelativeToMe/90);
if(_direction4WayRelativeToMe > 3){
    _direction4WayRelativeToMe = RIGHT;
}

return (_direction4WayRelativeToMe == face4Way);
