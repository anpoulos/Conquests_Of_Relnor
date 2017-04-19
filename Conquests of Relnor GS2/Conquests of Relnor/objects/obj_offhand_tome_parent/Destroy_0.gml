/// @description Insert description here
// You can write your code in this editor

while(!scr_linked_list_is_empty(initializedSpells)){
	instance_destroy(scr_linked_list_remove_next(initializedSpells));
}

scr_linked_list_destroy(initializedSpells);
scr_linked_list_destroy(uninitializedSpells);

event_inherited();