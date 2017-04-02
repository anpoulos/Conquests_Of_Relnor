///Create

npc = noone;
player = noone;
lines = scr_linked_list_create();
branches = noone; //array of linked lists
buttons = scr_linked_list_create();
currentBranch = 0;
defaultNameText = noone;
scripts[0] = noone;
scripts[1] = noone;
scripts[2] = noone;
scripts[3] = noone;
scripts[4] = noone;
scripts[5] = scr_story_cut_scene_example;

scr_ui_chat_create_containers(self);