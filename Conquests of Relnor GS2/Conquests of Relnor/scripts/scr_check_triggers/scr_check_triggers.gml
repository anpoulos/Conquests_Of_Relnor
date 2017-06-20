///scr_check_triggers

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


