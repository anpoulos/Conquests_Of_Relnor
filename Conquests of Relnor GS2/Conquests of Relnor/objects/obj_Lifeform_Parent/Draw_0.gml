///Draw Equipment and sprite

//draw shadow
if(hasShadow){
	scr_map_shadow_draw(global.shadowOpacity);
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

