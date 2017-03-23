///@param x 0
///@param y 1
///@param obj_equipment 2
///@param name 3
///@param weight 4 
///@param value 5
///@param damage 6
///@param defence 7
///@param reach 8
///@param drop_percentage 9
///@param owner 10

var _equipment = scr_item_create(argument0, argument1, argument2, argument3, argument4,
		argument5,argument9,noone,noone,argument10,false);

_equipment.equipmentStats[EQUIPMENT_STATS_DAMAGE] = argument6;
_equipment.equipmentStats[EQUIPMENT_STATS_DEFENCE] = argument7;
_equipment.equipmentStats[EQUIPMENT_STATS_RANGE] = argument8;

return _equipment;
