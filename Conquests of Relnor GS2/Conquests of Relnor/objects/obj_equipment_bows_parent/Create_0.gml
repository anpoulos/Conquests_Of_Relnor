///Create
event_inherited();

self.weaponType = WEAPON_TYPE_RANGE;
self.icon = spr_equipment_wooden_bow_icon;

self.sprite[DOWN] = spr_equipment_wooden_bow_down;
self.spriteBehind[DOWN] = false;

self.sprite[LEFT] = spr_equipment_wooden_bow_left;
self.spriteBehind[LEFT] = true;

self.sprite[RIGHT] = spr_equipment_wooden_bow_right;
self.spriteBehind[RIGHT] = false;

self.sprite[UP] = spr_equipment_wooden_bow_up;
self.spriteBehind[UP] = false;

damageType = obj_damage_projectile_arrow;

equipmentStats[EQUIPMENT_STATS_TOOL_TYPE] = STATS_TOOLS_BOWS;