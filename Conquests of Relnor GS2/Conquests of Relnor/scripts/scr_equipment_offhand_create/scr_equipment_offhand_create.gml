///@param icon
///@param groundSprite
///@param obj_equipment
///@param name 3
///@param weight 4
///@param value 5
///@param damage 6
///@param defence 7
///@param reach 8
///@param dropProbability 9
///@param owner 10
///@param toolType 11
///@param actionScript

var _offhand = scr_equipment_create(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10);

_offhand.equipmentStats[EQUIPMENT_STATS_TOOL_TYPE] = argument11;
_offhand.actionScript = argument12;

return _offhand;