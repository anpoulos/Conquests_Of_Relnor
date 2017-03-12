///scr_ui_chat_button_branch

//is being called from button object, use tempVal to get next branch index

var _player = instance_find(obj_player, 0);
var _branchIndex = tempVal;

with(_player){
    scr_ui_chat_load_branch(_branchIndex);
}
