///@param notificationName

var _name = argument0;

with(global.player){
	var _chatWindow = scr_ui_chat_constructor(noone, noone, "Notifications", _name);
	scr_ui_open_chat(_chatWindow);
}