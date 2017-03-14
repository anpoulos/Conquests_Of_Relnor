///scr_npc_states_attack_state
if(self.target == noone || !instance_exists(self.target)){
    scr_npc_choose_next_state();
    return false;
}

scr_npc_combat_choose_next_attack();

scr_lifeform_face_towards(self, target.x, target.y);

script_execute(self.currentAttack);

