///Red_Soldier

event_inherited();
scr_npc_constructor("Red_Soldier", 100, 100, 30, 400, 50, ALLEGIANCE_RED, 0);

scr_npc_set_attack_sprites(spr_npc_red_soldier_up, spr_npc_red_soldier_down,
spr_npc_red_soldier_right, spr_npc_red_soldier_left, 0.2);

scr_npc_set_sprites(spr_npc_red_soldier_up, spr_npc_red_soldier_down,
spr_npc_red_soldier_right, spr_npc_red_soldier_left, 30);

self.deadSprite = noone;

//equipment and inventory override
scr_lifeform_parent_inventory_equip(scr_equipment_offhand_create_iron_shield(self));

scr_lifeform_parent_inventory_equip(scr_equipment_create_iron_sword(self));

scr_lifeform_parent_inventory_add(self, scr_consumable_potion_random(self));
scr_lifeform_parent_inventory_add(self, scr_consumable_food_random(self));

gold = irandom(100);

//override
