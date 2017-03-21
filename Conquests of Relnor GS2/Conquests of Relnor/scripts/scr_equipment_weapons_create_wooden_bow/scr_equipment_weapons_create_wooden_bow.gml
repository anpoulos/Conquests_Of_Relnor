///scr_equipment_weapons_create_wooden_bow(owner)
var _bow = scr_equipment_create(0,0,obj_equipment_bows_parent, "Wooden Bow",3,75,1,0,300,0.75,argument0);

if(_bow.owner.isPlayer){
    _bow.weaponScript = scr_player_combat_attacks_projectile_arrow;
}
else{
    _bow.weaponScript = scr_npc_combat_attacks_projectile_arrow;
}

return _bow;
