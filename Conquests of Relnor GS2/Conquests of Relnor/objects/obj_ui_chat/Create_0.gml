///Create

depth = -MAX;

originalNpc = noone;
npc = noone;
player = noone;
lines = scr_linked_list_create();
branches = noone; //array of linked lists
buttons = scr_linked_list_create();
currentBranch = 0;
ChatContainer = noone;
speechBubble = instance_create(x,y,obj_ui_chat_speech_bubble);

scr_ui_chat_initialize_misc();

scr_ui_chat_create_containers(self);

scr_ui_virtual_mouse_create(VIRTUAL_MOUSE_MODE_BUTTON, true);