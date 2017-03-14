///Create
event_inherited();

self.icon = spr_equipment_iron_shield_icon;
self.equipmentStats[EQUIPMENT_STATS_TYPE] = EQUIPMENT_TYPE_OFFHAND;

self.sprite[DOWN] = spr_equipment_iron_shield_down;
self.spriteBehind[DOWN] = false;

self.sprite[LEFT] = spr_equipment_iron_shield_left;
self.spriteBehind[LEFT] = false;

self.sprite[RIGHT] = spr_equipment_iron_shield_right;
self.spriteBehind[RIGHT] = true;

self.sprite[UP] = spr_equipment_iron_shield_up;
self.spriteBehind[UP] = true;

