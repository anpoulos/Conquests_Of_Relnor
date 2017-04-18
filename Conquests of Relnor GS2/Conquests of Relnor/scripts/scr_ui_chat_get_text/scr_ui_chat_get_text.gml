
var _rawText = argument0;

_rawText = string_replace_all(_rawText, "_", " ");

_rawText = string_replace_all(_rawText, "#player", ChatWindow.player.name);
if(ChatWindow.npc != noone){
	_rawText = string_replace_all(_rawText, "#npc", ChatWindow.npc.name);
}

return _rawText;