/// @description Insert description here
// You can write your code in this editor

instance_destroy(MenuContainer);

scr_ui_menus_restore_all();

scr_ui_virtual_mouse_cleanup_from_player(); 

scr_player_disable_busy();