///@param chat_window_object

var _chatWindow = argument0;

if(_chatWindow == noone){
	return false;
}

scr_player_enable_busy();

scr_ui_chat_load_branch(_chatWindow, _chatWindow.currentBranch);

_chatWindow.ChatContainer.isVisible = true;
