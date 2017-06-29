

var _isFree = scr_lifeform_actions_is_free();

if(_isFree){
	if(triggers[TRIGGER_USE]){
		if(scr_player_actions_use()){
			scr_lifeform_actions_set_free_cool(10);
			return;
		}
	}

	if(triggers[TRIGGER_MAGIC_CYCLE]){
		var _item = equipment[EQUIPMENT_TYPE_OFFHAND];
		if(_item != noone && _item.object_index == obj_offhand_tome_parent){
			_item.selectedSpell = scr_linked_list_get_next(_item.initializedSpells);
			self.offhandSpell = _item.selectedSpell;
			scr_player_gui_update_information();
			scr_lifeform_actions_set_free_cool(10);
		}
	}
	
	if(triggers[TRIGGER_ATTACK_CYCLE] && scr_linked_list_size(specials) > 0){
		if(currentSpecial != noone){
			instance_destroy(currentSpecial);
		}
		currentSpecial = instance_create(0,0,scr_linked_list_get_next(specials));
	}

	if((triggers[TRIGGER_ATTACK] || triggers[TRIGGER_MAGIC]) &&
	(global.triggersInput != TRIGGER_INPUT_TYPE_CONTROLLER || autoTarget != noone)){		
		image_index = 0;
		state = attackState;
		scr_lifeform_actions_set_free_cool(10);
	}
	
	if(triggers[TRIGGER_SPECIAL]){
		scr_lifeform_combat_special();
	}
}

if(triggers[TRIGGER_AUTO_TARGET]){

	if(autoTarget != noone){
		autoTarget = noone;
	}
	
	var _angle1 = 0;
	var _angle2 = 0;

	switch(face8Way){
		case FACE_RIGHT:
			_angle1 = 315;
			_angle2 = 45;
		break;
		
		case FACE_UPPERRIGHT:
			_angle1 = 0;
			_angle2 = 90;
		break;
	
		case FACE_UP:
			_angle1 = 45;
			_angle2 = 135;
		break;
		
		case FACE_UPPERLEFT:
			_angle1 = 90;
			_angle2 = 180;
		break;
		
		case FACE_LEFT:
			_angle1 = 135;
			_angle2 = 225;
		break;
		
		case FACE_DOWNLEFT:
			_angle1 = 180;
			_angle2 = 270;
		break;
		
		case FACE_DOWN:
			_angle1 = 225;
			_angle2 = 315;
		break;
		
		case FACE_DOWNRIGHT:
			_angle1 = 270;
			_angle2 = 360;
		break;
	}
	
	var _x1 = x + sight*dcos(_angle1);
	var _x2 = x + sight*dcos(_angle2);
	
	var _y1 = y - sight*dsin(_angle1);
	var _y2 = y - sight*dsin(_angle2);
		
	var _npcsList = global.allNpcs;
	var _totalNpcs = scr_linked_list_size(_npcsList);
		
	for(var i = 0; i < _totalNpcs; i++){
		if(instance_exists(scr_linked_list_peak(_npcsList))){
			var _npc = scr_linked_list_get_next(_npcsList);
			if(!_npc.isDead && 
			scr_misc_allegiance_are_enemies(_npc.allegiance, allegiance) && 
			point_in_triangle(_npc.x, _npc.y, x,y,_x1,_y1,_x2,_y2)){
				autoTarget = _npc;
				break;
			}
		}
		else{
			scr_linked_list_remove_next(_npcsList);
		}
	}
		
}


