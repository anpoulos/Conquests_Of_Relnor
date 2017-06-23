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

oldRightType = global.player.triggersType[TRIGGER_RIGHT];
oldLeftType = global.player.triggersType[TRIGGER_LEFT];
oldUpType = global.player.triggersType[TRIGGER_UP];
oldDownType = global.player.triggersType[TRIGGER_DOWN];

global.player.triggersType[TRIGGER_RIGHT] = TRIGGER_TYPE_PRESSED;
global.player.triggersType[TRIGGER_LEFT] = TRIGGER_TYPE_PRESSED;
global.player.triggersType[TRIGGER_UP] = TRIGGER_TYPE_PRESSED;
global.player.triggersType[TRIGGER_DOWN] = TRIGGER_TYPE_PRESSED;