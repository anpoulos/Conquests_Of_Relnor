///Player

event_inherited();
PauseMenuContainer = noone;
zoom = 50;
busyState = scr_player_states_busy_state;
stillSelecting = false;
commandModule = instance_create(0,0,obj_player_command_module);
commandModule.player = self;
self.isPlayer = true;

//equipment and inventory override
self.inventory[0] = scr_equipment_create_iron_sword(self);
self.inventory[1] = scr_equipment_offhand_create_iron_shield(self);
self.inventory[2] = scr_equipment_weapons_create_wooden_bow(self);
self.inventory[3] = scr_consumable_create_small_health_potion(self);

self.equipment[EQUIPMENT_TYPE_WEAPON] = inventory[0];
self.equipment[EQUIPMENT_TYPE_OFFHAND] = inventory[1];

//overrides
self.reach = 30;
self.size = round(sprite_get_width(spr_player_up));

self.currentMoveSpeed = self.runSpeed;

self.allegiance = ALLEGIANCE_BLUE;
self.allegianceRank[ALLEGIANCE_BLUE] = 7;
self.idleState = noone;

self.statsMax[STATS_PHYSICAL, STATS_PHYSICAL_HEALTH] = 200;
self.statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_HEALTH] = self.statsMax[STATS_PHYSICAL, STATS_PHYSICAL_HEALTH];

self.statsMax[STATS_PHYSICAL, STATS_PHYSICAL_ENERGY] = 100;
self.statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_ENERGY] = self.statsMax[STATS_PHYSICAL, STATS_PHYSICAL_ENERGY];

self.name = "Player";

self.attackSprite[UP] = spr_player_up;
self.attackSprite[DOWN] = spr_player_down;
self.attackSprite[RIGHT] = spr_player_right;
self.attackSprite[LEFT] = spr_player_left;
self.attackImageSpeed = 0.6;

self.sprites[UP] = spr_player_up;
self.sprites[DOWN] = spr_player_down;
self.sprites[RIGHT] = spr_player_right;
self.sprites[LEFT] = spr_player_left;

self.moveState = scr_player_states_move_state;
self.moveInputs = scr_player_get_action_inputs;
self.attackState = scr_player_states_attack_state;
self.state = self.moveState;

///Player_View

view = instance_create(x,y, obj_player_view);
view.x = self.x;
view.y = self.y;
view.target = self;

///Create GUI

scr_player_create_gui();

