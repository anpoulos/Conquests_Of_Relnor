///scr_player_states_attack_state

if(triggers[TRIGGER_ATTACK]){
	var _item = equipment[EQUIPMENT_TYPE_WEAPON];
	if(_item != noone){
	    script_execute(_item.weaponScript);
	}
	else{
	    script_execute(scr_player_combat_attacks_melee_fists);
	}
}
else if(triggers[TRIGGER_MAGIC]){
	if(offhandSpell != noone){
		with(offhandSpell.useAs){
			script_execute(useScript);
		}
	}
	else{
		state = moveState;
	}
}
