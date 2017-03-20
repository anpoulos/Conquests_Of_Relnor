
var _player = instance_find(obj_player, 0);

_player.ChatWindow.ChatContainer.isVisible = false;

scr_ui_shop_show(self);

instance_destroy(_player.ChatWindow);

