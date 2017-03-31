///scr_check_triggers

if(triggers[TRIGGER_MAGIC_CYCLE]){
	var _item = equipment[EQUIPMENT_TYPE_OFFHAND];
	if(_item != noone && _item.object_index == obj_offhand_tome_parent){
		_item.selectedSpell = scr_linked_list_get_next(_item.initializedSpells);
		self.offhandSpell = _item.selectedSpell;
		scr_player_gui_update_information();
	}
}

if(triggers[TRIGGER_ATTACK] || triggers[TRIGGER_MAGIC]){
    image_index = 0;
    state = attackState;
}

