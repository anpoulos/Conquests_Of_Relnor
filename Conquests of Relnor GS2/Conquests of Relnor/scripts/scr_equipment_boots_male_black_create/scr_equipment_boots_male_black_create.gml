
///@param owner
var _equipment = scr_equipment_create(spr_boots_icon, noone, obj_inventory_equipment_parent, "Black Boots", 1, 10, 0, 0, 0, 0.00, argument0);

var _equipmentType = EQUIPMENT_TYPE_BOOTS;

_equipment.equipmentStats[EQUIPMENT_STATS_TYPE] = _equipmentType;
_equipment.equipmentStats[EQUIPMENT_STATS_TOOL_TYPE] = noone;
_equipment.equipmentStats[EQUIPMENT_STATS_SEX] = SEX_MALE;

_equipment.sprite[DOWN] = spr_boots_black_down;

_equipment.sprite[LEFT] = spr_boots_black_left;

_equipment.sprite[RIGHT] = spr_boots_black_right;

_equipment.sprite[UP] = spr_boots_black_up;

_equipment.equipmentSlots[_equipmentType] = true;

return _equipment;

