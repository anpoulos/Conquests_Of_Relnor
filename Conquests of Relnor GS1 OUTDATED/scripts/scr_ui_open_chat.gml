///scr_ui_open_chat(ChatWindow)
var _chatWindow = argument0;

scr_ui_chat_load_branch(_chatWindow.currentBranch);

_chatWindow.ChatContainer.isVisible = true;
