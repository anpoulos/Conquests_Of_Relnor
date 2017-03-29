///@description Constructor
event_inherited();

scr_npc_constructor("White Wolf", 100, 50, 30, 100, 100, ALLEGIANCE_NEUTRAL, 0);
self.isDefensive = true;
self.isAggressive = true;

scr_npc_set_sprites(spr_mob_white_wolf_up, 
	spr_mob_white_wolf_down, 
	spr_mob_white_wolf_right, 
	spr_mob_white_wolf_left,30);

