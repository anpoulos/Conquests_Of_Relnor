///@param target

alarm[7] = -1;

var _target = argument0;

isCharging = false;

var _damage = scr_lifeform_get_random_hit(equipment[EQUIPMENT_TYPE_WEAPON])*2;

scr_lifeform_combat_damage(_target, self, _damage, 20);

if(isPlayer){
	state = moveState;
}
else{
	scr_npc_choose_next_state();
}