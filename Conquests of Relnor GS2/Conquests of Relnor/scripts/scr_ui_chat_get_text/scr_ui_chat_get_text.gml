
///@param chat_window_object
///@param rawText

var _chatWindow = argument0;
var _rawText = argument1;

_rawText = string_replace_all(_rawText, "_", " ");

if(_chatWindow.player != noone){
	_rawText = string_replace_all(_rawText, "#player", _chatWindow.player.name);
}
if(_chatWindow.npc != noone){
	_rawText = string_replace_all(_rawText, "#npc", _chatWindow.npc.name);
}

return _rawText;