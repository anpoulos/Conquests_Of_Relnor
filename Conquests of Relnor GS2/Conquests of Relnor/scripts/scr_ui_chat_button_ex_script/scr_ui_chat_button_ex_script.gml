///scr_ui_chat_button_ex_script

//is being called from button object, use tempVal to get script index

var _player = instance_find(obj_player, 0);
var _scriptIndex = tempVal;

with(_player){
	script_execute(ChatWindow.scripts[_scriptIndex]);
}
