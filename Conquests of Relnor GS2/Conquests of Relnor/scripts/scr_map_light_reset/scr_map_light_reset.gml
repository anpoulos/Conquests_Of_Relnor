///@param obj_light
///@param radius
///@param depth
///@param color

var _light = argument0;
var _radius = argument1;
var _depth = argument2;
var _color = argument3;

with(_light){
	lightColor = _color;
	radius = _radius;
	depth = _depth;
	leftX = x - radius;
	rightX = x + radius;
	topY = round(y - radius*0.8);
	bottomY = y + radius;
	leftOffset = leftX;
	rightOffset = rightX;
	topOffset = topY;
	bottomOffset = bottomY;
}
