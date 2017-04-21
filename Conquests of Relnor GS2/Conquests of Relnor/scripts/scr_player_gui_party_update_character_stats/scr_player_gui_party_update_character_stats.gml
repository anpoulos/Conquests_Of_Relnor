var _character = InventoryInfoContainerItemStats.character;

while(scr_linked_list_size(CharacterStatsContainerList) != 0){
	var _textObject = scr_linked_list_remove_next(CharacterStatsContainerList);
	instance_destroy(_textObject);
}

//Name Text
	var _textX = CharacterStatsContainer.leftX + 30;
	var _textY = CharacterStatsContainer.topY + 30;
	var _text = _character.name;

	var _fontText = scr_ui_font_constructor(_textX, _textY, _text, fnt_default_large, c_white, 1, fa_left, fa_center, CharacterStatsContainer);
	scr_linked_list_add(CharacterStatsContainerList, _fontText);
	_fontText.isVisible = true;
//Name Text

var _margin = 20;

//Level Text
	var _textX = CharacterStatsContainer.leftX+_margin;
	var _textY = _fontText.y + 25;
	var _text = "Level: " + string(_character.level);

	var _fontText = scr_ui_font_constructor(_textX, _textY, _text, fnt_default_medium, c_white, 1, fa_left, fa_center, CharacterStatsContainer);
	scr_linked_list_add(CharacterStatsContainerList, _fontText);
	_fontText.isVisible = true;
//Level Text

//EXP Text
	var _textX = CharacterStatsContainer.leftX+_margin;
	var _textY = _fontText.y + _margin;
	var _text = "Experience: " + string(_character.experience) + " / "+string(global.mapControl.experienceTotal[_character.level]);

	var _fontText = scr_ui_font_constructor(_textX, _textY, _text, fnt_default_medium, c_white, 1, fa_left, fa_center, CharacterStatsContainer);
	scr_linked_list_add(CharacterStatsContainerList, _fontText);
	_fontText.isVisible = true;
//EXP Text

//Gold Text
	var _textX = CharacterStatsContainer.leftX+_margin;
	var _textY = _fontText.y + _margin;
	var _text = "Gold: "+string(_character.gold);

	var _fontText = scr_ui_font_constructor(_textX, _textY, _text, fnt_default_medium, c_white, 1, fa_left, fa_center, CharacterStatsContainer);
	scr_linked_list_add(CharacterStatsContainerList, _fontText);
	_fontText.isVisible = true;
//Gold Text

//Defence Text
	var _textX = CharacterStatsContainer.leftX+_margin;
	var _textY = _fontText.y + _margin;
	var _text = "Defence: "+string(_character.defence);

	var _fontText = scr_ui_font_constructor(_textX, _textY, _text, fnt_default_medium, c_white, 1, fa_left, fa_center, CharacterStatsContainer);
	scr_linked_list_add(CharacterStatsContainerList, _fontText);
	_fontText.isVisible = true;
//Defence Text

var _yOffsetMedium = 30;
var _yOffsetSmall = 20;

_textY = scr_player_gui_party_stat_update_stat(STATS_PHYSICAL, _textX, _textY, _yOffsetMedium, _yOffsetSmall, _character);
_textY = scr_player_gui_party_stat_update_stat(STATS_INTELLIGENCE, _textX, _textY, _yOffsetMedium, _yOffsetSmall, _character);
_textY = scr_player_gui_party_stat_update_stat(STATS_TOOLS, _textX, _textY, _yOffsetMedium, _yOffsetSmall, _character);
_textY = scr_player_gui_party_stat_update_stat(STATS_COMMANDING, _textX, _textY, _yOffsetMedium, _yOffsetSmall, _character);
