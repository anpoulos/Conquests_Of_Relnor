///Blue_Archer

event_inherited();
scr_npc_constructor("Blue_Archer", 50, 100, 300, 500, 50, ALLEGIANCE_BLUE, 0);

scr_npc_set_attack_sprites(spr_npc_blue_archer_up, spr_npc_blue_archer_down,
spr_npc_blue_archer_right, spr_npc_blue_archer_left, 0.2);

scr_npc_set_sprites(spr_npc_blue_archer_up, spr_npc_blue_archer_down,
spr_npc_blue_archer_right, spr_npc_blue_archer_left, 30);

//equipment and inventory override
scr_lifeform_parent_inventory_equip(scr_equipment_weapons_create_wooden_bow(self));

scr_lifeform_parent_inventory_add(self, scr_consumable_potion_random(self));
scr_lifeform_parent_inventory_add(self, scr_consumable_food_random(self));

gold = irandom(100);

//override
self.wanderDistance = 0;


