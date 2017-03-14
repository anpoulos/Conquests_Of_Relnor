///Blue_Cavalry

event_inherited();
scr_npc_constructor("Blue_Cavalry", 300, 20, 60, 500, 300, ALLEGIANCE_BLUE, 0);

scr_npc_set_attack_sprites(spr_blue_cavalry_up, spr_blue_cavalry_down,
spr_blue_cavalry_right, spr_blue_cavalry_left, 0.1);

scr_npc_set_sprites(spr_blue_cavalry_up, spr_blue_cavalry_down,
spr_blue_cavalry_right, spr_blue_cavalry_left, 60);

self.deadSprite = spr_npc_soldier_blue_dead;

//equipment and inventory override

//override
self.wanderDistance = 0;

scr_npc_set_speeds(2,8,12);



