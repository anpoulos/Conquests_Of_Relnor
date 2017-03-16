/// scr_lifeform_increase_stat(lifeform, statType, statIndex, amount);

var _lifeform = argument0;
var _statType = argument1;
var _statIndex = argument2;
var _amount = argument3;

if(_amount == noone || _amount == 0){
	return false;
}

var _newStatAmount = _lifeform.statsCurrent[_statType, _statIndex] + _amount;

if(_lifeform.statsCurrent[_statType, _statIndex] > _lifeform.statsMax[_statType, _statIndex]){
	_newStatAmount = _lifeform.statsMax[_statType, _statIndex];
}

if(_lifeform.statsCurrent[_statType, _statIndex] < 0){
	_newStatAmount = 0;
}

_lifeform.statsCurrent[_statType, _statIndex] = _newStatAmount;

return true;