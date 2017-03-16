///Create Man 01

event_inherited();

scr_npc_constructor("Man", 20, 5, 20, 50, 100, ALLEGIANCE_NEUTRAL, 0);
self.isDefensive = false;
self.nameIdentifier = "01";

scr_npc_set_sprites(spr_npc_man_01_up, spr_npc_man_01_down, spr_npc_man_01_right, spr_npc_man_01_left,30);
