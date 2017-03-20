///@param x
///@param y
///@param obj_equipment
///@param name
///@param weight
///@param value
///@param damage
///@param defence
///@param reach
///@param owner

var _equipment = scr_item_create(argument0, argument1, argument2, argument3, argument4,
		argument5,noone,noone,argument9,false);

_equipment.equipmentStats[EQUIPMENT_STATS_DAMAGE] = argument6;
_equipment.equipmentStats[EQUIPMENT_STATS_DEFENCE] = argument7;
_equipment.equipmentStats[EQUIPMENT_STATS_RANGE] = argument8;

return _equipment;
