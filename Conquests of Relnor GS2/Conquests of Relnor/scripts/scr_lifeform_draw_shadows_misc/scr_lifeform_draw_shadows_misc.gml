
var _opacityMultiplier = argument0;
var _vectorX = 0;
var _vectorY = 0;
var _totalLights = 0;

for(var i = 0; i < instance_number(obj_map_light_cycle); i++){

	var _light = instance_find(obj_map_light_cycle, i);
	
	if(point_distance(x,y,_light.lightX, _light.lightY) > _light.radius){
		continue;
	}
	
	_totalLights += 1;
	
	var _playerDistanceFromCenter = point_distance(x,y,_light.lightX, _light.lightY);
	
	var _direction = point_direction(_light.lightX, _light.lightY, x,y);
	
	var _radiusStrength = _light.radius/_playerDistanceFromCenter;
	
	var _pointX = x + (_light.radius-_playerDistanceFromCenter)*dcos(_direction)*_radiusStrength*_light.strength;
	var _pointY = y - (_light.radius-_playerDistanceFromCenter)*dsin(_direction)*_radiusStrength*_light.strength;
	
	if(global.debug > 0){
		draw_line_color(x,y,_light.lightX, _light.lightY, c_red, c_red);
		draw_line_color(x,y,_pointX, _pointY, c_blue, c_blue);
		draw_circle(_light.lightX, _light.lightY, _light.radius, true);
	}
	
	_vectorX += (x - _pointX);
	_vectorY += (y - _pointY);
}

if(_totalLights > 0){
	var _pointX = x + _vectorX;
	var _pointY = y + _vectorY;
	
	var _direction = point_direction(_pointX, _pointY, x,y);
	
	var _opacity = ( 1 - (max(sprite_width, sprite_height)/point_distance(x,y,_pointX,_pointY)) ) *_opacityMultiplier;
	
	if(global.debug > 0){
		draw_circle(_pointX, _pointY, 10, false);
		if(global.debug > 1){
			draw_text_color(x,y-75, "opacity: "+string(_opacity),
				c_white, c_white, c_white, c_white, 1.0);
		}
	}
	
	draw_sprite_ext(sprite_index, image_index, 
						x + 10*dcos(_direction),
						y - 10*dsin(_direction),
						-1,
						0.5+_opacity*2,
						_direction+270,
						c_black, _opacity);
}

