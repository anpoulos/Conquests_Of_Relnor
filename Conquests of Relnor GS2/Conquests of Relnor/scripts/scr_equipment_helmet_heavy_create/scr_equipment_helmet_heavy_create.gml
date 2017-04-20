///scr_equipment_create_iron_sword(owner)
///@param owner
var _helmet = scr_equipment_create(spr_helmet_icon, noone, obj_inventory_equipment_parent, "Heavy Helmet", 10, 500, 0, 10, 0, 0.01, argument0);

_helmet.equipmentStats[EQUIPMENT_STATS_TYPE] = EQUIPMENT_TYPE_HELMET;
_helmet.equipmentStats[EQUIPMENT_STATS_TOOL_TYPE] = noone;
_helmet.equipmentStats[EQUIPMENT_STATS_SEX] = SEX_MALE;

_helmet.equipmentSlots[EQUIPMENT_TYPE_HELMET] = true;

_helmet.sprite[DOWN] = spr_helmet_heavy_down;

_helmet.sprite[LEFT] = spr_helmet_heavy_left;

_helmet.sprite[RIGHT] = spr_helmet_heavy_right;

_helmet.sprite[UP] = spr_helmet_heavy_up;

return _helmet;

