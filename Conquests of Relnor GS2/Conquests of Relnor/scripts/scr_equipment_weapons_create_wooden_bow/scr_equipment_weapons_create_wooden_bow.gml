///scr_equipment_weapons_create_wooden_bow(owner)

var _bow = scr_equipment_weapon_create(obj_damage_projectile_arrow, "Wooden Bow", 5, 100, 3, 0, 300, 0.05, argument0, STATS_TOOLS_BOWS, 
										spr_equipment_wooden_bow_icon, noone);

_bow.sprite[DOWN] = spr_equipment_wooden_bow_down;

_bow.sprite[LEFT] = spr_equipment_wooden_bow_left;

_bow.sprite[RIGHT] = spr_equipment_wooden_bow_right;

_bow.sprite[UP] = spr_equipment_wooden_bow_up;

return _bow;