///Blue_Soldier

event_inherited();
scr_npc_constructor("Blue_Soldier", 200, 10, 30, 400, 200, ALLEGIANCE_BLUE, 0);

self.size = sprite_get_height(self.sprite_index);

scr_npc_set_attack_sprites(spr_test_npc_soldier_up, spr_test_npc_soldier_down,
spr_test_npc_soldier_right, spr_test_npc_soldier_left, 0.2);

scr_npc_set_sprites(spr_test_npc_soldier_up, spr_test_npc_soldier_down,
spr_test_npc_soldier_right, spr_test_npc_soldier_left, 30);

self.deadSprite = spr_npc_soldier_blue_dead;

//equipment and inventory override
self.equipment[OFFHAND] = scr_equipment_offhand_create_iron_shield(self);

self.equipment[WEAPON] = scr_equipment_create_iron_sword(self);

self.inventory[0] = scr_consumable_potion_random(self);
self.inventory[1] = scr_consumable_food_random(self);
//override
self.wanderDistance = 0;



