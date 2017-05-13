///Blue_Soldier

event_inherited();
var _name = "Blue_Soldier_"+string(instance_number(obj_npc_blue_soldier));
scr_npc_constructor(_name, 100, 100, 30, 400, 0, ALLEGIANCE_BLUE, 0);

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

gold = irandom(100);
isDefensive = false;