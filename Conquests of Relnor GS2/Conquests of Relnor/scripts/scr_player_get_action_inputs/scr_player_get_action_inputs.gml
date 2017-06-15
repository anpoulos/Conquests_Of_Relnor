//scr_player_get_action_inputs
for(var i = 0; i < TRIGGERS_MAX; i++){
	triggers[i] = 0;
}

for(var i = 0; i < TRIGGERS_MAX; i++){
	if(triggersExtraBinding[i] == 0){
		if(scr_player_controls_check_input(i)){
			switch(i){
				case TRIGGER_MAGIC:
					triggers[i] = !scr_player_controls_check_input(TRIGGER_MAGIC_CYCLE);
				break;
			
				case TRIGGER_ATTACK:
					triggers[i] = !scr_player_controls_check_input(TRIGGER_ATTACK_CYCLE);
				break;
			
				default:
					triggers[i] = true;
				break;
			}
		}
	}
	else{
		triggers[i] = scr_player_controls_check_input(i) && scr_player_controls_check_extra_input(i);
	}
}
