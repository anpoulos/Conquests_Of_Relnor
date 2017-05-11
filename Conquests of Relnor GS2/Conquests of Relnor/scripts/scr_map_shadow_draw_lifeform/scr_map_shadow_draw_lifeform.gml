///@param opacityMultiplier
///@param yScaleMultiplier

var _totalLights = instance_number(obj_map_light_cycle);
	
if(argument0 <= 0.0){ //means in daylight
	isRevealed = true;
	return false;
}

isRevealed = false;

if(_totalLights == 0){
	return false;
}

var _vectorX = 0;
var _vectorY = 0;
var _forceAdditive = false;

var _additiveLights = global.additiveLights;
var _totalAdditiveLights = scr_linked_list_size(_additiveLights);

for(var i = 0; i < _totalAdditiveLights; i++){
	var _light = scr_linked_list_get_next(_additiveLights);
	if(point_distance(x,y,_light.lightX, _light.lightY) <= _light.radius*_light.strength){
		_forceAdditive = true;
		break;
	}
}

var _totalTotalLights = instance_number(obj_map_light_cycle);

for(var i = 0; i < _totalTotalLights; i++){

	var _light = instance_find(obj_map_light_cycle, i);
	var _effectiveRadius = _light.radius*_light.strength;
	
	if(point_distance(x,y,_light.lightX, _light.lightY) > _effectiveRadius){
		continue;
	}
	
	if(!isRevealed){
		isRevealed = true;
	}
	
	var _playerDistanceFromCenter = point_distance(x,y,_light.lightX, _light.lightY);
	
	var _direction = point_direction(_light.lightX, _light.lightY, x,y);
	
	var _radiusStrength = _effectiveRadius/_playerDistanceFromCenter;
	var _a = (_effectiveRadius - _playerDistanceFromCenter)*_radiusStrength;
	
	var _pointX = x + _a*dcos(_direction);
	var _pointY = y - _a*dsin(_direction);
	
	if(global.debug == 2){
		draw_line_color(x,y,_light.lightX, _light.lightY, c_red, c_red);
		draw_line_color(x,y,_pointX, _pointY, c_blue, c_blue);
		draw_circle(_light.lightX, _light.lightY, _effectiveRadius, true);
	}
	
	if(_forceAdditive){
		_vectorX += (x - _pointX);
		_vectorY += (y - _pointY);
	}
	else{
	
		var _direction = point_direction(x,y,_pointX, _pointY);
		var _distance = point_distance(x,y,_pointX,_pointY);	
	
		var _opacity = 1 - (max(sprite_width, sprite_height)/_distance);
	
		var _b = sprite_get_yoffset(sprite_index);
		var _c = sprite_height-_b;

		var _x = x + _c*dcos(_direction);
		var _y = y + _c*(0.5 - dsin(_direction));

		if(global.debug == 2){
			draw_text_color(x,y-75, "opacity: "+string(_opacity),
				c_white, c_white, c_white, c_white, 1.0);
			draw_line_color(x,y, _pointX, _pointY, c_white, c_white);
		}

		scr_lifeform_draw(_x,_y, 
			_direction > 180 ? -1 : 1,
			(1.0+_opacity)*argument1,
			_direction+270,
			c_black,
			_opacity*argument0);
	}
}

if(_forceAdditive){
	var _pointX = x + _vectorX;
	var _pointY = y + _vectorY;
	
	var _direction = point_direction(_pointX, _pointY,x,y);
	var _distance = point_distance(x,y,_pointX,_pointY);	
	
	var _opacity = 1 - (max(sprite_width, sprite_height)/_distance) ;
	
	var _b = sprite_get_yoffset(sprite_index);
	var _c = sprite_height-_b;

	var _x = x + _c*dcos(_direction);
	var _y = y + _c*(0.5 - dsin(_direction));

	if(global.debug == 2){
		draw_text_color(x,y-75, "opacity: "+string(_opacity),
			c_white, c_white, c_white, c_white, 1.0);
		draw_line_color(x,y, _pointX, _pointY, c_white, c_white);
	}

	scr_lifeform_draw(_x,_y, 
		_direction > 180 ? -1 : 1,
		(1.0+_opacity)*argument1,
		_direction+270,
		c_black,
		_opacity*argument0);
}
			