///@param statType
///@param textX
///@param textY
///@param yOffsetMedium
///@param yOffsetSmall
///@param character

var _statType = argument0;
var _textX = argument1;
var _textY = argument2;
var _yOffsetMedium = argument3;
var _yOffsetSmall = argument4;
var _character = argument5;

var _statMax = noone;

switch(_statType){
	case STATS_PHYSICAL: 
		_statMax = STATS_PHYSICAL_MAX; 
	break;
	
	case STATS_COMMANDING: 
		_statMax = STATS_COMMANDING_MAX; 
	break;
	
	case STATS_INTELLIGENCE: 
		_statMax = STATS_INTELLIGENCE_MAX; 
	break;
	
	case STATS_TOOLS: 
		_statMax = STATS_TOOLS_MAX; 
	break;
}

_textY += _yOffsetMedium;
var _text = scr_lifeform_get_stat_name(_statType, noone);
var _statText = scr_ui_font_constructor(_textX+10, _textY, _text, fnt_default_medium, c_white, 1, fa_left, fa_center, CharacterStatsContainer);
_statText.isVisible = true;
scr_linked_list_add(CharacterStatsContainerList, _statText);
for(var j = 0; j < _statMax; j++){
	_textY += _yOffsetSmall;
	var _text = scr_lifeform_get_stat_name(_statType, j)+ ": " 
	_text += string(_character.statsCurrent[_statType, j]) + "/";
	_text += string(_character.statsMax[_statType, j]);
	
	var _ratioOfThree = self.statsCurrent[_statType, j]/self.statsMax[_statType, j];
	var _range = round(_ratioOfThree * 2);
	var _color = c_green;
	switch(_range){
		case 0:
		_color = c_red;
		break;
		case 1:
		_color = c_yellow;
		break;
	}
	
	var _statText = scr_ui_font_constructor(_textX+20, _textY, _text, fnt_default_small, _color, 1, fa_left, fa_center, CharacterStatsContainer);
	_statText.isVisible = true;
	scr_linked_list_add(CharacterStatsContainerList, _statText);
}

return _textY;
