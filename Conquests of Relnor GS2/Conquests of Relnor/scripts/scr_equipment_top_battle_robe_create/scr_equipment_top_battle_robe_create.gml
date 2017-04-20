
///@param owner
var _equipment = scr_equipment_create(spr_top_robe_icon, noone, obj_inventory_equipment_parent, "Battle Robe (Blue)", 10, 1000, 0, 3, 0, 0.01, argument0);

var _equipmentType = EQUIPMENT_TYPE_TOP;

_equipment.equipmentStats[EQUIPMENT_STATS_TYPE] = _equipmentType;
_equipment.equipmentStats[EQUIPMENT_STATS_TOOL_TYPE] = noone;
_equipment.equipmentStats[EQUIPMENT_STATS_SEX] = SEX_MALE;

_equipment.sprite[DOWN] = spr_top_battle_robe_down;

_equipment.sprite[LEFT] = spr_top_battle_robe_left;

_equipment.sprite[RIGHT] = spr_top_battle_robe_right;

_equipment.sprite[UP] = spr_top_battle_robe_up;

_equipment.equipmentSlots[_equipmentType] = true;

return _equipment;

