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

var _totalLights = global.totalLights;
var _totalTotalLights = scr_linked_list_size(_totalLights);

for(var i = 0; i < _totalTotalLights; i++){

	var _light = scr_linked_list_get_next(_totalLights);
	var _effectiveRadius = _light.radius*_light.strength;
	
	if(point_distance(x,y,_light.lightX, _light.lightY) > _effectiveRadius){
		continue;
	}
	
	isRevealed = true;
	
	var _playerDistanceFromCenter = point_distance(x,y,_light.lightX, _light.lightY);
	
	var _direction = point_direction(_light.lightX, _light.lightY, x,y);
	
	var _radiusStrength = _effectiveRadius/_playerDistanceFromCenter;
	
	var _pointX = x + (_effectiveRadius - _playerDistanceFromCenter)*dcos(_direction)*_radiusStrength;
	var _pointY = y - (_effectiveRadius - _playerDistanceFromCenter)*dsin(_direction)*_radiusStrength;
	
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
	
		//var _a = sprite_get_xoffset(sprite_index);
		var _b = sprite_get_yoffset(sprite_index);

		var _x = x + (sprite_height-_b)*dcos(_direction);
		var _y = y + (sprite_height-_b)*(0.5 - dsin(_direction));

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

if(_vectorX != 0 || _vectorY != 0){
	var _pointX = x + _vectorX;
	var _pointY = y + _vectorY;
	
	var _direction = point_direction(_pointX, _pointY,x,y);
	var _distance = point_distance(x,y,_pointX,_pointY);	
	
	var _opacity = 1 - (max(sprite_width, sprite_height)/_distance) ;
	
	//var _a = sprite_get_xoffset(sprite_index);
	var _b = sprite_get_yoffset(sprite_index);

	var _x = x + (sprite_height-_b)*dcos(_direction);
	var _y = y + (sprite_height-_b)*(0.5 - dsin(_direction));

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
			
			
//draw_sprite_ext(sprite_index, image_index, 
//					x + 10*dcos(_direction),
//					y - 10*dsin(_direction),
//					-1,
//					0.5+_opacity,
//					_direction+270,
//					c_black, _opacity*argument0);




//var _totalLights = instance_number(obj_map_light_cycle);

//if(_totalLights == 0){
//	return false;
//}

//var _vectorX = 0;
//var _vectorY = 0;

//for(var i = 0; i < _totalLights; i++){

//	var _light = instance_find(obj_map_light_cycle, i);
	
//	if(point_distance(x,y,_light.lightX, _light.lightY) > _light.radius){
//		continue;
//	}
	
//	var _playerDistanceFromCenter = point_distance(x,y,_light.lightX, _light.lightY);
	
//	var _direction = point_direction(_light.lightX, _light.lightY, x,y);
	
//	var _radiusStrength = _light.radius/_playerDistanceFromCenter;
	
//	var _pointX = x + (_light.radius-_playerDistanceFromCenter)*dcos(_direction)*_radiusStrength*_light.strength;
//	var _pointY = y - (_light.radius-_playerDistanceFromCenter)*dsin(_direction)*_radiusStrength*_light.strength;
	
//	if(global.debug > 0){
//		draw_line_color(x,y,_light.lightX, _light.lightY, c_red, c_red);
//		draw_line_color(x,y,_pointX, _pointY, c_blue, c_blue);
//		draw_circle(_light.lightX, _light.lightY, _light.radius, true);
//	}
	
//	_vectorX += (x - _pointX);
//	_vectorY += (y - _pointY);
//}

//var _pointX = x + _vectorX;
//var _pointY = y + _vectorY;
	
//var _direction = point_direction(x,y, _pointX, _pointY);
	
//var _opacity = 1 - (max(sprite_width, sprite_height)/point_distance(x,y,_pointX,_pointY)) ;
	
//var _a = sprite_get_xoffset(sprite_index);
//var _b = sprite_get_yoffset(sprite_index);
	
////simplified expressions
////var _x = x + _a*dsin(_direction) - dcos(_direction)*(sprite_width + _a + 10);
////var _y = y + dsin(_direction)*(_b + 10) + dcos(_direction)*(-sprite_height/2 + _b);

//var _x = x - (sprite_height-_b)*2*dcos(_direction) + sprite_get_xoffset(sprite_index)*dsin(_direction)
//				- sprite_get_xoffset(sprite_index)*dcos(_direction);
//var _y = y  + _a*dcos(_direction)/2 - sprite_height/2*dcos(_direction) + 
//			sprite_get_yoffset(sprite_index)*dcos(_direction) + sprite_get_yoffset(sprite_index)*dsin(_direction);
	
////unsimplified expressions
////var _x = x - (sprite_width+10)*dcos(_direction) + sprite_get_xoffset(sprite_index)*dsin(_direction)
////				- sprite_get_xoffset(sprite_index)*dcos(_direction);
					
////var _y = y + 10*dsin(_direction) - sprite_height/2*dcos(_direction) + 
////			sprite_get_yoffset(sprite_index)*dcos(_direction) + sprite_get_yoffset(sprite_index)*dsin(_direction);
	
//if(global.debug > 0){
//	draw_circle(_pointX, _pointY, 10, false);
//	if(global.debug > 1){
//		draw_text_color(x,y-75, "opacity: "+string(_opacity),
//			c_white, c_white, c_white, c_white, 1.0);
//	}
//	draw_circle(_x, _y, 5, true);
//	draw_line_color(x,y, _pointX, _pointY, c_white, c_white);
//}
	
//	var _s = argument1;
	
//draw_sprite_general(sprite_index, image_index, 0,0,
//	sprite_width, sprite_height,//*argument1,
//	_x,
//	_y,
//	-1,
//	-1,
//	_direction-90,
//	c_black, c_black, c_black, c_black,
//	_opacity * argument0);
		
////draw_sprite_ext(sprite_index, image_index, 
////					x + 10*dcos(_direction),
////					y - 10*dsin(_direction),
////					-1,
////					0.5+_opacity*2,
////					_direction+270,
////					c_black, _opacity);

