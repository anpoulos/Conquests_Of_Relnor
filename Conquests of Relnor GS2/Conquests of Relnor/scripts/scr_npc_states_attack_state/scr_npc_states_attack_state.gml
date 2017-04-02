///scr_npc_states_attack_state
if(self.target == noone || !instance_exists(self.target)){
    scr_npc_choose_next_state();
    return false;
}

scr_lifeform_combat_attack(equipment[EQUIPMENT_TYPE_WEAPON]);
