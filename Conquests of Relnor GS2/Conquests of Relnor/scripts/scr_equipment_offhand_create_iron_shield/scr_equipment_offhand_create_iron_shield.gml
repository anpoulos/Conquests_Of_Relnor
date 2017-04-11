///scr_equipment_offhand_create_iron_shield(owner)

var _shield = scr_equipment_offhand_create(spr_equipment_iron_shield_icon, noone, obj_inventory_equipment_offhand_parent, "Iron Shield", 15, 200, 0, 5, 0, 0.01,
											argument0, STATS_TOOLS_SHIELDS, noone);

_shield.sprite[DOWN] = spr_equipment_iron_shield_down;
_shield.spriteBehind[DOWN] = false;

_shield.sprite[LEFT] = spr_equipment_iron_shield_left;
_shield.spriteBehind[LEFT] = false;

_shield.sprite[RIGHT] = spr_equipment_iron_shield_right;
_shield.spriteBehind[RIGHT] = true;

_shield.sprite[UP] = spr_equipment_iron_shield_up;
_shield.spriteBehind[UP] = true;

return _shield;