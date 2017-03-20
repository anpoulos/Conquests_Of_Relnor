///scr_equipment_create_iron_sword(owner)
///@param owner
var _sword = scr_equipment_create(0,0,obj_equipment_sword_parent, "Iron Sword", 5, 50, 2, 0, 30, argument0);

if(_sword.owner.isPlayer){
    _sword.weaponScript = scr_player_combat_attacks_melee_small;
}
else{
    _sword.weaponScript = scr_npc_combat_attacks_melee_small;
}

return _sword;

