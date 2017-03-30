/// @description Insert description here
// You can write your code in this editor

event_inherited();

scr_linked_list_add(possibleEnemies, obj_npc_allegiance_red_parent);
scr_linked_list_add(possibleEnemies, obj_npc_allegiance_animal_parent);

switch(irandom(3)){
	case 0: scr_lifeform_parent_inventory_add(self, scr_equipment_torch_create(self, false));
}