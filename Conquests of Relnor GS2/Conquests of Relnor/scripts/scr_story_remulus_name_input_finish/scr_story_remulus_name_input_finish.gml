///used as player

var _nameText = argument0;

self.name = _nameText;

instance_destroy(UiInput);

quest[0] = 1;

scr_ui_chat_load_branch(5);