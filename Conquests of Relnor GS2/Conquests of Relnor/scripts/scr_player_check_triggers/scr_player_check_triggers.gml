

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

	if(triggers[TRIGGER_ATTACK] || triggers[TRIGGER_MAGIC]){
	    image_index = 0;
	    state = attackState;
		scr_lifeform_actions_set_free_cool(10);
	}
}

if(triggers[TRIGGER_AUTO_TARGET]){
	var _angle1 = 0;
	var _angle2 = 0;

	switch(face8Way){
		case FACE_RIGHT:
			_angle1 = 337.5;
			_angle2 = 22.5;
		break;
		
		case FACE_UPPERRIGHT:
			_angle1 = 22.5;
			_angle2 = 67.5;
		break;
	
		case FACE_UP:
			_angle1 = 67.5;
			_angle2 = 112.5;
		break;
		
		case FACE_UPPERLEFT:
			_angle1 = 112.5;
			_angle2 = 157.5;
		break;
		
		case FACE_LEFT:
			_angle1 = 157.5;
			_angle2 = 202.5;
		break;
		
		case FACE_DOWNLEFT:
			_angle1 = 202.5;
			_angle2 = 247.5;
		break;
		
		case FACE_DOWN:
			_angle1 = 247.5;
			_angle2 = 292.5;
		break;
		
		case FACE_DOWNRIGHT:
			_angle1 = 292.5;
			_angle2 = 337.5;
		break;
	}
	
	var _x1 = x + dcos(_angle1);
	var _x2 = x + dcos(_angle2);
	
	var _y1 = y + dsin(_angle1);
	var _y2 = y + dsin(_angle2);
	
	autoTargetUI = instance_create(x,y,obj_auto_target);
	autoTargetUI.x1 = _x1;
	autoTargetUI.x2 = _x2;
	autoTargetUI.y1 = _y1;
	autoTargetUI.y2 = _y2;
}


