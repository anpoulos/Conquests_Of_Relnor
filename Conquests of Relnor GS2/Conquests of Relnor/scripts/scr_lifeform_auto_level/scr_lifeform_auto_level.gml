///@param lifeform

var _lifeform = argument0;

with(_lifeform){
	var _levelStrengthThisManyTimes = STATS_MULTIPLIER-2;
	
	for(var i = 0; i < EQUIPMENT_TYPE_MAX; i++){
		var _item = equipment[i];
		if(_item != noone){
			var _toolIndex = _item.equipmentStats[EQUIPMENT_STATS_TOOL_TYPE];
			if(_toolIndex != noone){
				scr_lifeform_level_stat(self, STATS_TOOLS, _toolIndex);
				switch(_toolIndex){
					case STATS_TOOLS_BLADES:
					case STATS_TOOLS_BOWS:
					case STATS_TOOLS_BLUNTS:
					case STATS_TOOLS_SHIELDS:
						_levelStrengthThisManyTimes = 1;
					break;
				}
			}
		}
	}
	
	for(var i = 0; i < _levelStrengthThisManyTimes; i++){
		scr_lifeform_level_stat(self, STATS_PHYSICAL, STATS_PHYSICAL_STRENGTH);
	}
	
	while(statPoints > 0){
		scr_lifeform_level_stat(self, STATS_PHYSICAL, STATS_PHYSICAL_HEALTH);
		scr_lifeform_level_stat(self, STATS_PHYSICAL, STATS_PHYSICAL_ENERGY);
	}
	
}