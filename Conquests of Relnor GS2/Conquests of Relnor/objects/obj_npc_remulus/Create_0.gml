/// @description Constructor
// You can write your code in this editor

event_inherited();

scr_npc_constructor("Remulus", 20, 5, 20, 50, 100, ALLEGIANCE_NEUTRAL, 0);
self.isDefensive = false;

scr_npc_set_sprites(spr_remulus_up, spr_remulus_down, spr_remulus_right, spr_remulus_left,30);

shopGold = 500;

shopItems[0] = scr_equipment_create_iron_sword(self);
shopItemsAmount[0] = 2;

shopItems[1] = scr_equipment_offhand_create_iron_shield(self);
shopItemsAmount[1] = 1;

shopItems[2] = scr_consumable_weak_health_potion(self);
shopItemsAmount[2] = 100;
