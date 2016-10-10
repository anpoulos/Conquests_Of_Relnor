///scr_npc_combat_choose_next_attack
if(equipment[WEAPON] != noone &&
    equipment[WEAPON].object_index == obj_equipment_bows_wooden){
    currentAttack = ATTACKS[ATTACK_RANGE];
}
else{
    currentAttack = ATTACKS[ATTACK_MELEE];
}

