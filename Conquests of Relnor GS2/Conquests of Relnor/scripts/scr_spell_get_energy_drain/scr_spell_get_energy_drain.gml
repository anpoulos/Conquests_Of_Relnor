///@lifeform
///@energyCost

var _lifeform = argument0;
var _energyCost = argument1;

var _languages = STATS_INTELLIGENCE_LANGUAGES;

var _a = _languages/LEVEL_CAP

if(_a > 0.5){
	_a = 0.5;
}

_energyCost -= _energyCost*_a;

return _energyCost;