///scr_equipment_create_iron_sword(owner)
///@param owner
var _sword = scr_equipment_weapon_create(obj_damage_melee_small, "Iron Sword", 7, 100, 10, 1, 30, 0.10, argument0, STATS_TOOLS_BLADES, spr_equipment_iron_sword_icon, noone);

_sword.sprite[DOWN] = spr_equipment_iron_sword_down;

_sword.sprite[LEFT] = spr_equipment_iron_sword_left;

_sword.sprite[RIGHT] = spr_equipment_iron_sword_right;

_sword.sprite[UP] = spr_equipment_iron_sword_up;

scr_linked_list_add(_sword.specials, obj_special_charge);

return _sword;

