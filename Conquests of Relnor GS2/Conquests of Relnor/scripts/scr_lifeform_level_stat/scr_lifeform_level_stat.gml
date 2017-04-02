///@lifeform
///@statType
///@statIndex

var _lifeform = argument0;
var _statType = argument1;
var _statIndex = argument2;

if(_lifeform.statPoints > 0){
	_lifeform.statPoints -= 1;
}
else{
	return false;
}

var _increaseStatBy = 1;
	
if(_statType == STATS_PHYSICAL){

	switch(_statIndex){
		case STATS_PHYSICAL_HEALTH:
			_increaseStatBy = STATS_HEALTH_MULTIPLIER;
		break;
		
		case STATS_PHYSICAL_ENERGY:
			_increaseStatBy = STATS_ENERGY_MULTIPLIER;
		break;
	}
}

_lifeform.statsMax[_statType, _statIndex] += _increaseStatBy;
_lifeform.statsCurrent[_statType, _statIndex] += _increaseStatBy;

return true;