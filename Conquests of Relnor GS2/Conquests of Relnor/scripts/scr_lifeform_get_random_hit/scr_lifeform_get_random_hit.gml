///@param obj_weapon

var _item = argument0;

if(_item != noone){
	var _toolIndex = _item.equipmentStats[EQUIPMENT_STATS_TOOL_TYPE];
	var _accuracy = irandom_range( ceil(statsCurrent[STATS_TOOLS,_toolIndex]/STATS_MULTIPLIER), LEVEL_CAP)/LEVEL_CAP;
	var _damage = _item.equipmentStats[EQUIPMENT_STATS_DAMAGE] * _accuracy;

	return _damage;
}
else{
	var _accuracy = irandom_range( ceil(statsMax[STATS_PHYSICAL, STATS_PHYSICAL_ENERGY]/(STATS_MULTIPLIER*STATS_ENERGY_MULTIPLIER)), LEVEL_CAP ) / LEVEL_CAP;
	var _strength = statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_STRENGTH];
	var _a = ceil(_strength/STATS_MULTIPLIER);
	var _damage = irandom(_a)*_accuracy;
	
	return _damage;
}

