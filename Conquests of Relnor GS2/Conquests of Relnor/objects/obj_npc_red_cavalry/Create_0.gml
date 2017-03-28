///Red_Cavalry

event_inherited();
scr_npc_constructor("Red_Cavalry", 300, 20, 60, 500, 300, ALLEGIANCE_RED, 0);

scr_npc_set_attack_sprites(spr_npc_red_cavalry_up, spr_npc_red_cavalry_down,
spr_npc_red_cavalry_right, spr_npc_red_cavalry_left, 0.1);

scr_npc_set_sprites(spr_npc_red_cavalry_up, spr_npc_red_cavalry_down,
spr_npc_red_cavalry_right, spr_npc_red_cavalry_left, 60);

self.deadSprite = spr_npc_soldier_blue_dead;

//equipment and inventory override
self.equipment[OFFHAND] = scr_equipment_offhand_create_iron_shield(self);

self.equipment[WEAPON] = scr_equipment_create_iron_sword(self);

//override
self.wanderDistance = 0;

scr_npc_set_speeds(2,8,12);

