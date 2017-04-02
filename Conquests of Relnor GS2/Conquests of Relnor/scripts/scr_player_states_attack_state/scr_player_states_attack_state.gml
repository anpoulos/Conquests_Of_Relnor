///scr_player_states_attack_state

if(triggers[TRIGGER_ATTACK]){
	scr_lifeform_combat_attack(equipment[EQUIPMENT_TYPE_WEAPON]);
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
