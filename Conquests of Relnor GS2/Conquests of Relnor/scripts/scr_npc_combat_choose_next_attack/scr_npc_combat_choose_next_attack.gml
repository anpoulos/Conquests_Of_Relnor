///scr_npc_combat_choose_next_attack
if(self.equipment[EQUIPMENT_TYPE_WEAPON] != noone){
	currentAttack = self.equipment[EQUIPMENT_TYPE_WEAPON].weaponScript;
}
else{
	currentAttack = scr_npc_combat_attacks_melee_fists;
    //script_execute(scr_npc_combat_attacks_melee_fists);
}

