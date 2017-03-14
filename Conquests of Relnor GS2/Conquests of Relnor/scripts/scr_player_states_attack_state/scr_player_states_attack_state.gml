///scr_player_states_attack_state

if(self.equipment[EQUIPMENT_TYPE_WEAPON] != noone){
    script_execute(self.equipment[EQUIPMENT_TYPE_WEAPON].weaponScript);
}
else{
    if(isPlayer){
        script_execute(scr_player_combat_attacks_melee_fists);
    }
    else{
        script_execute(scr_npc_combat_attacks_melee_fists);
    }
}
