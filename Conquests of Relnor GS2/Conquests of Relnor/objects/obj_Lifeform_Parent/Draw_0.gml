///Draw Equipment and sprite

//draw shadow
if(hasShadow){
	//if(!global.isInterior){
	//	if(global.shadowOpacity > 0.0){
	//		var _sun = global.sun;
	//		var _direction = point_direction(_sun.x, _sun.y, x, y);
	
	//		var _distance = point_distance(_sun.x, _sun.y, x, y);
	
	//		var _p = _distance/_sun.radius;
	
	//		draw_sprite_ext(sprite_index, 0, 
	//							x + 10*dcos(_direction),
	//							y - 10*dsin(_direction),
	//							1 ,
	//							0.75 + _p,
	//							_direction-90,
	//							c_black, global.shadowOpacity);
	//	}
	//	else{
	//		scr_lifeform_draw_shadows_misc(global.nightShadowOpacity);
	//	}
	//}
	//else{
	//	scr_lifeform_draw_shadows_misc(0.5);
	//}
	scr_lifeform_draw_shadows_misc(0.5);
}

var _equipmentLength = array_length_1d(self.equipment);

//draw items behind first
for(var i = 0; i < _equipmentLength; i++){
    var _item = self.equipment[i];
    if(_item != noone && _item.spriteBehind[self.face4Way]){
        draw_sprite(_item.sprite[self.face4Way], image_index, self.x, self.y);
    }
}

//draw lifeform
draw_self();

//draw items in front
for(var i = 0; i < _equipmentLength; i++){
    var _item = self.equipment[i];
    if(_item != noone && !_item.spriteBehind[self.face4Way]){
        draw_sprite(_item.sprite[self.face4Way], image_index, self.x, self.y);
    }
}



///Draw Healthbar

if(healthBarIsVisible){
    var _h = 40;
    draw_sprite(spr_lifeform_health_bar, healthBarCurrentBar, x, y-_h);
    draw_sprite_ext(spr_lifeform_energy_bar, energyBarCurrentBar, x, y-_h+4,
    1,0.5,0,c_white, 1.0);
}

