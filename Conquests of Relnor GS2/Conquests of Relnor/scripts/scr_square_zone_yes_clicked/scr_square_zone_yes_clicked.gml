///used as zone object
///tempVal is the menu container to destroy

instance_destroy(tempVal);

scr_ui_menus_restore_all();

scr_player_new_room(destinationX, destinationY, destinationRoom, noone);
