/// @description Insert description here
// You can write your code in this editor

scr_linked_list_destroy(possibleTargets);
scr_linked_list_destroy(possibleTargetsGUI);
global.gamePaused = false;
scr_ui_virtual_mouse_cleanup_from_player();
global.player.autoTarget = selectedTarget;