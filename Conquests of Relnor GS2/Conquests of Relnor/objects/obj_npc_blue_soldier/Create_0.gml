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
scr_lifeform_parent_inventory_equip(scr_equipment_offhand_create_iron_shield(self));

scr_lifeform_parent_inventory_equip(scr_equipment_create_iron_sword(self));

scr_lifeform_parent_inventory_add(self, scr_consumable_potion_random(self));
scr_lifeform_parent_inventory_add(self, scr_consumable_food_random(self));
//override
self.wanderDistance = 0;

