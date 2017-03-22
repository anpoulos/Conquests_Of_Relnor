///Red_Archer

event_inherited();
scr_npc_constructor("Red_Archer", 100, 10, 300, 500, 300, ALLEGIANCE_RED, 0);

scr_npc_set_attack_sprites(spr_npc_archer_red_up, spr_npc_archer_red_down,
spr_npc_archer_red_right, spr_npc_archer_red_left, 0.1);

scr_npc_set_sprites(spr_npc_archer_red_up, spr_npc_archer_red_down,
spr_npc_archer_red_right, spr_npc_archer_red_left, 30);

self.deadSprite = spr_npc_archer_red_dead;

//equipment and inventory override
self.equipment[WEAPON] = scr_equipment_weapons_create_wooden_bow(self);

self.inventory[0] = scr_consumable_potion_random(self);
self.inventory[1] = scr_consumable_food_random(self);
//override


