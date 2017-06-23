/// @description Insert description here
// You can write your code in this editor

scr_linked_list_destroy(possibleTargets);
scr_linked_list_destroy(possibleTargetsGUI);
global.gamePaused = false;
scr_ui_virtual_mouse_cleanup_from_player();
global.player.autoTargetUI = noone;

global.player.triggersType[TRIGGER_RIGHT] = oldRightType;
global.player.triggersType[TRIGGER_LEFT] = oldLeftType;
global.player.triggersType[TRIGGER_UP] = oldUpType;
global.player.triggersType[TRIGGER_DOWN] = oldDownType;