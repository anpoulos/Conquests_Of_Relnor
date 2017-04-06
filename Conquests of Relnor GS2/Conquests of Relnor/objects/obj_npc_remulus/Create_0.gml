/// @description Constructor
// You can write your code in this editor

event_inherited();

scr_npc_constructor("Remulus", 20, 5, 20, 50, 100, ALLEGIANCE_NEUTRAL, 0);
self.isDefensive = false;

scr_npc_set_sprites(spr_remulus_up, spr_remulus_down, spr_remulus_right, spr_remulus_left,30);

shopGold = 500;

for(var i = 0; i < 100; i++){
	scr_shop_add_item(self, scr_consumable_food_random(self));
}

for(var i = 0; i < 5; i++){
	scr_shop_add_item(self, scr_consumable_weak_health_potion(self));
}
