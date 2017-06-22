/// @description Insert description here
// You can write your code in this editor

global.gamePaused = true;

x1 = 0;
x2 = 0;
y1 = 0;
y2 = 0;

possibleTargets = scr_linked_list_create();
possibleTargetsGUI = scr_linked_list_create();
totalPossibleTargets = 0;
selectedTarget = noone;

scr_ui_virtual_mouse_create(VIRTUAL_MOUSE_MODE_AUTO_TARGET, false);

hasCalculated = false;