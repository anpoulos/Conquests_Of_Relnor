
var _opacity = argument0;
var _vectorX = 0;
var _vectorY = 0;
var _totalLights = 0;

for(var i = 0; i < instance_number(obj_map_light); i++){
	var _light = instance_find(obj_map_light, i);
	if(_light.object_index == obj_map_light_sun){
		continue;
	}
	if(point_in_circle(x,y,_light.x, _light.y, _light.radius)){
		_totalLights += 1;
		
		var _distance = point_distance(x,y,_light.x,_light.y);
		var _strength = 1 - _distance/_light.radius;
		
		_vectorX += (_light.x - x)*_strength;
		_vectorY += (_light.y - y)*_strength;
	}
}

if(_totalLights > 0){
	var _direction = point_direction(x + _vectorX, y + _vectorY, x,y);
	
	draw_sprite_ext(sprite_index, 0, 
						x + 10*dcos(_direction),
						y - 10*dsin(_direction),
						1,
						1.25,
						_direction-90,
						c_black, 0.25);
}

