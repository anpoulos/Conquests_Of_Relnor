///@description Constructor
event_inherited();

scr_npc_constructor("Sorceror", 50, 250, 30, 200, 200, ALLEGIANCE_ANIMAL, 1);
self.isDefensive = true;
self.isAggressive = true;

scr_npc_set_sprites(spr_animal_sorceror_up, 
	spr_animal_sorceror_down, 
	spr_animal_sorceror_right, 
	spr_animal_sorceror_left, 
	50);
	
scr_npc_set_attack_sprites(spr_animal_sorceror_up, 
	spr_animal_sorceror_down, 
	spr_animal_sorceror_right, 
	spr_animal_sorceror_left, 
	0.2);

scr_lifeform_parent_inventory_add(self, scr_consumable_food_random(self));
canEat = true;

statsMax[STATS_PHYSICAL, STATS_PHYSICAL_STRENGTH] = 10;
statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_STRENGTH] = 10;

gold = irandom(100);

var _tome = scr_equipment_tome_create_beginner_fire(self);
_tome.isVisibleWhenEquipped = false;

scr_lifeform_parent_inventory_add(self, _tome);

scr_lifeform_parent_inventory_equip(_tome);