

instance_destroy(menuContainer);

global.player.commandMenu = noone;

if(global.gamePaused){
	global.gamePaused = false;
}

//room_speed = 30;

scr_ui_virtual_mouse_cleanup_from_player();