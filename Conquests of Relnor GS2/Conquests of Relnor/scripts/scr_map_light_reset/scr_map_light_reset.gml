///@param obj_light
///@param radius
///@param depth
///@param color

var _light = argument0;
var _radius = argument1;
var _depth = argument2;
var _color = argument3;

with(_light){
	if(_color != noone){
		lightColor = _color;
	}
	radius = _radius;
	if(_depth != noone){
		depth = _depth;
	}
	scr_map_light_calculate_dimensions();
	leftOffset = leftX;
	rightOffset = rightX;
	topOffset = topY;
	bottomOffset = bottomY;
}
