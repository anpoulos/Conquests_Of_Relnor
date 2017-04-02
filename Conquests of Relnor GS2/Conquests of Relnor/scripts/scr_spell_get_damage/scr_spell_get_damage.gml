///@lifeform
///@baseDamage

var _lifeform = argument0; 

var _damage = argument1;


var _interpretation = _lifeform.statsCurrent[STATS_INTELLIGENCE, STATS_INTELLIGENCE_INTERPRETATION];

_damage += irandom( floor( (_interpretation/LEVEL_CAP)*_damage ) );

return _damage;