
///@param owner
var _equipment = scr_equipment_create(spr_pants_icon, noone, obj_inventory_equipment_parent, "Black Pants", 2, 1, 0, 0, 0, 0.0, argument0);

var _equipmentType = EQUIPMENT_TYPE_BOTTOM;

_equipment.equipmentStats[EQUIPMENT_STATS_TYPE] = _equipmentType;
_equipment.equipmentStats[EQUIPMENT_STATS_TOOL_TYPE] = noone;
_equipment.equipmentStats[EQUIPMENT_STATS_SEX] = SEX_MALE;

_equipment.sprite[DOWN] = spr_pants_black_down;

_equipment.sprite[LEFT] = spr_pants_black_left;

_equipment.sprite[RIGHT] = spr_pants_black_right;

_equipment.sprite[UP] = spr_pants_black_up;

_equipment.equipmentSlots[_equipmentType] = true;

return _equipment;

