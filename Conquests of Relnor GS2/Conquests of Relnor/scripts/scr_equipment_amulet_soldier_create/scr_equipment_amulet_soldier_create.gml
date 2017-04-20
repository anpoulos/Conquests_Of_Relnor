
///@param owner
var _amulet = scr_equipment_create(spr_amulet_icon, noone, obj_inventory_equipment_parent, "Soldier's Amulet", 1, 500, 0, 1, 0, 0.01, argument0);

_amulet.equipmentStats[EQUIPMENT_STATS_TYPE] = EQUIPMENT_TYPE_AMULET;
_amulet.equipmentStats[EQUIPMENT_STATS_TOOL_TYPE] = noone;

_amulet.sprite[DOWN] = spr_amulet_soldier_down;

_amulet.sprite[LEFT] = spr_amulet_soldier_left;

_amulet.sprite[RIGHT] = spr_amulet_soldier_right;

_amulet.sprite[UP] = spr_amulet_soldier_up;

_amulet.equipmentSlots[EQUIPMENT_TYPE_AMULET] = true;

return _amulet;

