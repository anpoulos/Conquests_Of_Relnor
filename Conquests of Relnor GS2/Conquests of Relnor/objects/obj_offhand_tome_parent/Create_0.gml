/// @description Insert description here
// You can write your code in this editor

event_inherited();

for(var i = 0; i < SPELL_MAX; i++){
	spell[i] = noone;
}

initializedSpells = scr_linked_list_create();

selectedSpell = noone;

icon = spr_tome;

self.sprite[DOWN] = spr_tome_down;
self.spriteBehind[DOWN] = false;

self.sprite[LEFT] = spr_tome_left;
self.spriteBehind[LEFT] = false;

self.sprite[RIGHT] = spr_tome_right;
self.spriteBehind[RIGHT] = false;

self.sprite[UP] = spr_tome_up;
self.spriteBehind[UP] = true;

flameObject = obj_map_light_spell_blue;

useScript = scr_equipment_tome_equip;