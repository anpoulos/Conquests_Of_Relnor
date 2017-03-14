///scr_equipment_create(obj_equipment, name, weight, damage, defence, reach, owner)

var _equipment = instance_create(0,0,argument0);

_equipment.itemStats[ITEM_STATS_NAME] = argument1;
_equipment.itemStats[ITEM_STATS_WEIGHT] = argument2;
_equipment.equipmentStats[EQUIPMENT_STATS_DAMAGE] = argument3;
_equipment.equipmentStats[EQUIPMENT_STATS_DEFENCE] = argument4;
_equipment.equipmentStats[EQUIPMENT_STATS_RANGE] = argument5;
_equipment.owner = argument6;

return _equipment;
