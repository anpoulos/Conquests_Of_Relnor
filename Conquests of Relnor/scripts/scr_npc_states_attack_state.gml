///scr_npc_states_attack_state
if(self.target == noone || !instance_exists(self.target)){
    scr_npc_choose_next_state();
    return false;
}

scr_npc_combat_choose_next_attack();

self.direction360 = point_direction(x,y,self.target.x,self.target.y);
scr_lifeform_update_face();

script_execute(self.currentAttack);

