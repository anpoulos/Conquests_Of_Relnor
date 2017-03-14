///Blue_Archer

event_inherited();
scr_npc_constructor("Blue_Archer", 200, 10, 300, 400, 200, ALLEGIANCE_BLUE, 0);

scr_npc_set_attack_sprites(spr_npc_blue_archer_up, spr_npc_blue_archer_down,
spr_npc_blue_archer_right, spr_npc_blue_archer_left, 0.2);

scr_npc_set_sprites(spr_npc_blue_archer_up, spr_npc_blue_archer_down,
spr_npc_blue_archer_right, spr_npc_blue_archer_left, 30);

self.deadSprite = noone;

//equipment and inventory override
self.equipment[WEAPON] = scr_equipment_weapons_create_wooden_bow(self);

//override
self.wanderDistance = 0;



