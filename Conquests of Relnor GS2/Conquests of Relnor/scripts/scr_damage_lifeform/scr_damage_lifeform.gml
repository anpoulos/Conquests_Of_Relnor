///@param lifeform
///@param source
///@param obj_damage

if(!instance_exists(argument0)|| !instance_exists(argument1) ||
    !instance_exists(argument2)){
    return false;
}

scr_lifeform_combat_damage(argument0, argument1, argument2.amount, argument2.knockback);

