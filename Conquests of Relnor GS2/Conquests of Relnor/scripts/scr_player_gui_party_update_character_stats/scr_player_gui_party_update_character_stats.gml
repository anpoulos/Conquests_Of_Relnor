var _character = InventoryInfoContainerItemStats.player;

while(scr_linked_list_size(CharacterStatsContainerList) != 0){
	var _textObject = scr_linked_list_remove_next(CharacterStatsContainerList);
	instance_destroy(_textObject);
}

var _margin = 20;

var _textX = CharacterStatsContainer.leftX+_margin;
var _textY = CharacterStatsContainer.topY + _margin;
var _text = _character.name;

var _characterNameText = scr_ui_font_constructor(_textX, _textY, _text, fnt_default_medium_bold, c_white, 1, fa_left, fa_center, CharacterStatsContainer);
scr_linked_list_add(CharacterStatsContainerList, _characterNameText);
_characterNameText.isVisible = true;

var _yOffsetMedium = 20;
var _yOffsetSmall = 15;

_textY = scr_player_gui_party_stat_update_stat(STATS_PHYSICAL, _textX, _textY, _yOffsetMedium, _yOffsetSmall, _character);
_textY = scr_player_gui_party_stat_update_stat(STATS_INTELLIGENCE, _textX, _textY, _yOffsetMedium, _yOffsetSmall, _character);
_textY = scr_player_gui_party_stat_update_stat(STATS_TOOLS, _textX, _textY, _yOffsetMedium, _yOffsetSmall, _character);
_textY = scr_player_gui_party_stat_update_stat(STATS_COMMANDING, _textX, _textY, _yOffsetMedium, _yOffsetSmall, _character);
