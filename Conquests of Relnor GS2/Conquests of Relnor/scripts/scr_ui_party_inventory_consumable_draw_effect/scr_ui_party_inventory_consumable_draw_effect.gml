///@Description Helper method to draw effect information
///@param statType
///@param previousX
///@param previousY
///@param offsetY
///@param obj_inventoryItem

var _statType = argument0;
var _previousX = argument1;
var _previousY = argument2;
var _offsetY = argument3;
var _inventoryItem = argument4;
var _statMax = noone;
var _effects = noone;
var _effectsHidden = noone;

switch(_statType){
	case STATS_PHYSICAL:
		_effects = _inventoryItem.effectsPhysical;
		_effectsHidden = _inventoryItem.effectsPhysicalHidden;
		_statMax = STATS_PHYSICAL_MAX;
	break;
	case STATS_COMMANDING:
		_effects = _inventoryItem.effectsCommanding;
		_effectsHidden = _inventoryItem.effectsCommandingHidden;
		_statMax = STATS_COMMANDING_MAX;
	break;
	case STATS_INTELLIGENCE:
		_effects = _inventoryItem.effectsIntelligence;
		_effectsHidden = _inventoryItem.effectsIntelligenceHidden;
		_statMax = STATS_INTELLIGENCE_MAX;
	break;
	case STATS_TOOLS:
		_effects = _inventoryItem.effectsTools;
		_effectsHidden = _inventoryItem.effectsToolsHidden;
		_statMax = STATS_TOOLS_MAX;
	break;
}


var _hasStat = false;

for(var i = 0; i < _statMax; i++){
	if(_effects[i] != noone && _effects[i] != 0){
		_hasStat = true;
		break;
	}
}
	
if(_hasStat){
	var _statName = scr_lifeform_get_stat_name(_statType, noone);
	draw_text_colour(_previousX+10, _previousY, _statName, c_white,c_white,c_white,c_white, 1);
	_previousY += _offsetY;
							
	for(var i = 0; i < _statMax; i++){
		if(_effects[i] == noone){
			continue;
		}
		var _statString = scr_lifeform_get_stat_name(_statType, i)+": ";
		var _statIncreaseAmount = _effects[i];
		if(_statIncreaseAmount == 0){
			continue;
		}
		var _color = c_white;
		if(_statIncreaseAmount > 0){
			_statString += "+";
			_color = c_green;
		}
		if(_statIncreaseAmount < 0){
			_statString += "-";
			_color = c_red;
		}
								
		if(_effectsHidden[i] != noone && _effectsHidden[i]){
			_statString += "?";
		}
		else{
			_statString += string(_statIncreaseAmount);
		}
								
		draw_text_colour(_previousX+20, _previousY, _statString, _color, _color, _color, _color, 1);
		_previousY += _offsetY-2;								
	}
}

	


return _previousY;