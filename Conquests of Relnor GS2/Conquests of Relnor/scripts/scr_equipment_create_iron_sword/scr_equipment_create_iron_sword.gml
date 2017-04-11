///scr_equipment_create_iron_sword(owner)
///@param owner
var _sword = scr_equipment_weapon_create(obj_damage_melee_small, "Iron Sword", 7, 100, 5, 1, 30, 0.10, argument0, STATS_TOOLS_BLADES, spr_equipment_iron_sword_icon, noone);

_sword.sprite[DOWN] = spr_equipment_iron_sword_down;
_sword.spriteBehind[DOWN] = false;

_sword.sprite[LEFT] = spr_equipment_iron_sword_left;
_sword.spriteBehind[LEFT] = true;

_sword.sprite[RIGHT] = spr_equipment_iron_sword_right;
_sword.spriteBehind[RIGHT] = false;

_sword.sprite[UP] = spr_equipment_iron_sword_up;
_sword.spriteBehind[UP] = false;

return _sword;

