///@param x
///@param y
///@param xScale
///@param yScale
///@param rotation
///@param color
///@param alpha

shader_set(shader_0);

switch(face4Way){
	case LEFT:
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_WEAPON], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		scr_lifeform_body_draw(argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_BOOTS], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_GLOVES], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_BOTTOM], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_TOP], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_AMULET], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		if(equipment[EQUIPMENT_TYPE_HELMET] != noone){
			scr_equipment_draw(equipment[EQUIPMENT_TYPE_HELMET], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
			scr_equipment_draw(equipment[EQUIPMENT_TYPE_ARMOR], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		}
		else{
			if(hasBodyParts){
				scr_equipment_draw(equipment[EQUIPMENT_TYPE_ARMOR], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
				draw_sprite_ext(body[BODY_HAIR, face4Way], image_index, argument0, argument1, argument2, argument3, argument4, argument5, argument6);
			}
		}
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_OFFHAND], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
	break;
	
	case RIGHT:
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_OFFHAND], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		scr_lifeform_body_draw(argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_BOOTS], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_GLOVES], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_BOTTOM], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_TOP], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_AMULET], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		if(equipment[EQUIPMENT_TYPE_HELMET] != noone){
			scr_equipment_draw(equipment[EQUIPMENT_TYPE_HELMET], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
			scr_equipment_draw(equipment[EQUIPMENT_TYPE_ARMOR], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		}
		else{
			if(hasBodyParts){
				scr_equipment_draw(equipment[EQUIPMENT_TYPE_ARMOR], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
				draw_sprite_ext(body[BODY_HAIR, face4Way], image_index, argument0, argument1, argument2, argument3, argument4, argument5, argument6);
			}
		}
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_WEAPON], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
	break;
	
	case UP:
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_OFFHAND], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_WEAPON], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		scr_lifeform_body_draw(argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_BOOTS], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_GLOVES], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_BOTTOM], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_TOP], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_AMULET], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		if(equipment[EQUIPMENT_TYPE_HELMET] != noone){
			scr_equipment_draw(equipment[EQUIPMENT_TYPE_HELMET], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
			scr_equipment_draw(equipment[EQUIPMENT_TYPE_ARMOR], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		}
		else{
			if(hasBodyParts){
				scr_equipment_draw(equipment[EQUIPMENT_TYPE_ARMOR], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
				draw_sprite_ext(body[BODY_HAIR, face4Way], image_index, argument0, argument1, argument2, argument3, argument4, argument5, argument6);
			}
		}
	break;
	
	case DOWN:
		scr_lifeform_body_draw(argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_BOOTS], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_GLOVES], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_BOTTOM], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_TOP], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_AMULET], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_ARMOR], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		if(equipment[EQUIPMENT_TYPE_HELMET] != noone){
			scr_equipment_draw(equipment[EQUIPMENT_TYPE_HELMET], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
			scr_equipment_draw(equipment[EQUIPMENT_TYPE_ARMOR], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		}
		else{
			if(hasBodyParts){
				scr_equipment_draw(equipment[EQUIPMENT_TYPE_ARMOR], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
				draw_sprite_ext(body[BODY_HAIR, face4Way], image_index, argument0, argument1, argument2, argument3, argument4, argument5, argument6);
			}
		}
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_OFFHAND], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
		scr_equipment_draw(equipment[EQUIPMENT_TYPE_WEAPON], argument0, argument1, argument2, argument3, argument4, argument5, argument6);
	break;
}

shader_reset();