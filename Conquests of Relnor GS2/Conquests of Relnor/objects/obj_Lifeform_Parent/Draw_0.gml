///Draw Equipment and sprite

//draw shadow
if(hasShadow){
	scr_map_shadow_draw(global.shadowOpacity, 0.75, image_index);
}

var _equipmentLength = array_length_1d(self.equipment);

//draw items behind first

switch(face4Way){
	case LEFT:
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_WEAPON]);
		scr_lifeform_body_draw();
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_BOOTS]);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_GLOVES]);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_BOTTOM]);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_TOP]);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_ARMOR]);
		if(equipment[EQUIPMENT_TYPE_HELMET] != noone){
			scr_equipment_draw(equipment[EQUIPMENT_TYPE_HELMET]);
			scr_equipment_draw(equipment[EQUIPMENT_TYPE_ARMOR]);
		}
		else{
			if(hasBodyParts){
				scr_equipment_draw(equipment[EQUIPMENT_TYPE_ARMOR]);
				draw_sprite(body[BODY_HAIR, face4Way], image_index, x, y);
			}
		}
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_OFFHAND]);
	break;
	
	case RIGHT:
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_OFFHAND]);
		scr_lifeform_body_draw();
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_BOOTS]);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_GLOVES]);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_BOTTOM]);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_TOP]);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_ARMOR]);
		if(equipment[EQUIPMENT_TYPE_HELMET] != noone){
			scr_equipment_draw(equipment[EQUIPMENT_TYPE_HELMET]);
			scr_equipment_draw(equipment[EQUIPMENT_TYPE_ARMOR]);
		}
		else{
			if(hasBodyParts){
				scr_equipment_draw(equipment[EQUIPMENT_TYPE_ARMOR]);
				draw_sprite(body[BODY_HAIR, face4Way], image_index, x, y);
			}
		}
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_WEAPON]);
	break;
	
	case UP:
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_OFFHAND]);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_WEAPON]);
		scr_lifeform_body_draw();
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_BOOTS]);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_GLOVES]);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_BOTTOM]);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_TOP]);
		if(equipment[EQUIPMENT_TYPE_HELMET] != noone){
			scr_equipment_draw(equipment[EQUIPMENT_TYPE_HELMET]);
			scr_equipment_draw(equipment[EQUIPMENT_TYPE_ARMOR]);
		}
		else{
			if(hasBodyParts){
				scr_equipment_draw(equipment[EQUIPMENT_TYPE_ARMOR]);
				draw_sprite(body[BODY_HAIR, face4Way], image_index, x, y);
			}
		}
	break;
	
	case DOWN:
		scr_lifeform_body_draw();
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_BOOTS]);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_GLOVES]);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_BOTTOM]);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_TOP]);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_ARMOR]);
		if(equipment[EQUIPMENT_TYPE_HELMET] != noone){
			scr_equipment_draw(equipment[EQUIPMENT_TYPE_HELMET]);
			scr_equipment_draw(equipment[EQUIPMENT_TYPE_ARMOR]);
		}
		else{
			if(hasBodyParts){
				scr_equipment_draw(equipment[EQUIPMENT_TYPE_ARMOR]);
				draw_sprite(body[BODY_HAIR, face4Way], image_index, x, y);
			}
		}
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_OFFHAND]);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_WEAPON]);
	break;
}


///Draw Healthbar

if(healthBarIsVisible){
    var _h = 40;
    draw_sprite(spr_lifeform_health_bar, healthBarCurrentBar, x, y-_h);
    draw_sprite_ext(spr_lifeform_energy_bar, energyBarCurrentBar, x, y-_h+4,
    1,0.5,0,c_white, 1.0);
}

