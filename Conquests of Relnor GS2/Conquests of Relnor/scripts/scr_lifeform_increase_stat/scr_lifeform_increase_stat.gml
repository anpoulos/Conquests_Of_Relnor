///@param lifeform
///@param statType
///@param statIndex
///@param amount

var _lifeform = argument0;
var _statType = argument1;
var _statIndex = argument2;
var _amount = argument3;

if(_amount == noone || _amount == 0){
	return false;
}

var _newStatAmount = _lifeform.statsCurrent[_statType, _statIndex] + _amount;

if(_statType == STATS_PHYSICAL){
	switch(_statIndex){
		case STATS_PHYSICAL_ENERGY:
		case STATS_PHYSICAL_HEALTH:
			if(_newStatAmount > _lifeform.statsMax[_statType, _statIndex]){
				_newStatAmount = _lifeform.statsMax[_statType, _statIndex];
			}
		break;
	}
}

if(_newStatAmount < 0){
	_newStatAmount = 0;
}

_lifeform.statsCurrent[_statType, _statIndex] = _newStatAmount;

return true;