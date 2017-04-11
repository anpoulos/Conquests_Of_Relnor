/// @description Insert description here
// You can write your code in this editor

event_inherited();

uninitializedSpells = noone;

initializedSpells = scr_linked_list_create();

selectedSpell = noone;

flameObject = obj_map_light_tome;

flameColor[0] = 200;
flameColor[1] = 200;
flameColor[2] = 200;

useScript = scr_equipment_tome_equip;

unequipScript = scr_equipment_tome_unequip;