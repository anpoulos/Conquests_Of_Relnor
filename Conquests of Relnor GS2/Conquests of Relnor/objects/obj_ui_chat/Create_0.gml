///Create

npc = noone;
player = noone;
lines = scr_linked_list_create();
branches = noone; //array of linked lists
buttons = scr_linked_list_create();
currentBranch = 0;

scr_ui_chat_initialize_misc();

scr_ui_chat_create_containers(self);