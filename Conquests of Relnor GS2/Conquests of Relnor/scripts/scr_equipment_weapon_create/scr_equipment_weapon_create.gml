///@param damageType 0
///@param name 1
///@param weight 2
///@param value 3
///@param damage 4
///@param defence 5
///@param reach 6
///@param dropProbability 7
///@param owner 8
///@param toolType 9
///@param icon 10
///@param groundSprite 11

var _weapon = scr_equipment_create(argument10,argument11,obj_equipment_weapon_parent, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8);

_weapon.equipmentStats[EQUIPMENT_STATS_TYPE] = EQUIPMENT_TYPE_WEAPON;

_weapon.damageType = argument0;

_weapon.equipmentStats[EQUIPMENT_STATS_TOOL_TYPE] = argument9;

return _weapon;

