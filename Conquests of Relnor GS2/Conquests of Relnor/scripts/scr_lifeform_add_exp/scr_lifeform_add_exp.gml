///@lifeform
///@experience


var _lifeform = argument0;
var _experience = argument1;

_lifeform.experience += _experience;

while(_lifeform.experience > global.mapControl.experienceTotal[_lifeform.level]){
	_lifeform.level += 1;
	_lifeform.statPoints += STATS_MULTIPLIER;
	if(_lifeform.autoLevel){
		scr_lifeform_auto_level(_lifeform);
	}
}