///Player

event_inherited();

balance = 50.0

quest[0] = 0;

autoLevel = false;

PrimaryAttackText = noone;
allegianceParent = obj_npc_allegiance_blue_parent;
gold = 1000;
zoom = 50;
busyState = scr_player_states_busy_state;
stillSelecting = false;
commandModule = instance_create(0,0,obj_player_command_module);
commandModule.player = self;
self.isPlayer = true;

//equipment and inventory override
scr_lifeform_parent_inventory_add(self, scr_equipment_tome_create_beginner_fire(self));
scr_lifeform_parent_inventory_add(self, scr_equipment_create_iron_sword(self));
scr_lifeform_parent_inventory_add(self, scr_equipment_offhand_create_iron_shield(self));
scr_lifeform_parent_inventory_add(self, scr_equipment_weapons_create_wooden_bow(self));
scr_lifeform_parent_inventory_add(self, scr_consumable_strong_health_potion(self));
scr_lifeform_parent_inventory_add(self, scr_consumable_bread(self));
scr_lifeform_parent_inventory_add(self, scr_equipment_torch_create(self, false));
scr_lifeform_parent_inventory_add(self, scr_item_key_24_7_inn_room(self));
scr_lifeform_parent_inventory_add(self, scr_equipment_armor_blue_heavy_create(self));
scr_lifeform_parent_inventory_add(self, scr_equipment_helmet_heavy_create(self));
scr_lifeform_parent_inventory_add(self, scr_equipment_amulet_soldier_create(self));
scr_lifeform_parent_inventory_add(self, scr_equipment_top_battle_robe_create(self));
scr_lifeform_parent_inventory_add(self, scr_equipment_bottom_pants_black_create(self));
scr_lifeform_parent_inventory_add(self, scr_equipment_boots_male_black_create(self));


//overrides
self.reach = 30;
self.size = round(sprite_get_width(spr_player_up));

self.currentMoveSpeed = self.runSpeed;

self.allegiance = ALLEGIANCE_BLUE;
self.allegianceRank[ALLEGIANCE_BLUE] = 7;
self.idleState = noone;

self.statsMax[STATS_PHYSICAL, STATS_PHYSICAL_HEALTH] = 10;
self.statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_HEALTH] = self.statsMax[STATS_PHYSICAL, STATS_PHYSICAL_HEALTH];

self.statsMax[STATS_PHYSICAL, STATS_PHYSICAL_ENERGY] = 50;
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

hasBodyParts = true;

scr_lifeform_body_set_sex(self, SEX_MALE);
scr_lifeform_body_set_eyes(self, BLUE);
body[BODY_HAIR, DOWN] = spr_male_hair_black_medium_down;
body[BODY_HAIR, LEFT] = spr_male_hair_black_medium_left;
body[BODY_HAIR, RIGHT] = spr_male_hair_black_medium_right;
body[BODY_HAIR, UP] = spr_male_hair_black_medium_up;

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

