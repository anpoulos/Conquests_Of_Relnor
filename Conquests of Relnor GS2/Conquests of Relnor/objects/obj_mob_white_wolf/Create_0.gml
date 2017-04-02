///@description Constructor
event_inherited();

scr_npc_constructor("White Wolf", 10, 50, 30, 100, 100, ALLEGIANCE_ANIMAL, 0);
self.isDefensive = true;
self.isAggressive = true;

scr_npc_set_sprites(spr_mob_white_wolf_up, 
	spr_mob_white_wolf_down, 
	spr_mob_white_wolf_right, 
	spr_mob_white_wolf_left,40);
	
scr_npc_set_attack_sprites(spr_mob_white_wolf_up, 
	spr_mob_white_wolf_down, 
	spr_mob_white_wolf_right, 
	spr_mob_white_wolf_left, 0.2);

scr_lifeform_parent_inventory_add(self, scr_consumable_food_random(self));

statsMax[STATS_PHYSICAL, STATS_PHYSICAL_STRENGTH] = 10;
statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_STRENGTH] = 10;

gold = irandom(10);