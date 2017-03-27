///Create
event_inherited();

self.icon = spr_equipment_torch_icon;
self.equipmentStats[EQUIPMENT_STATS_TYPE] = EQUIPMENT_TYPE_OFFHAND;

self.sprite[DOWN] = spr_equipment_torch_down;
self.spriteBehind[DOWN] = false;

self.sprite[LEFT] = spr_equipment_torch_left;
self.spriteBehind[LEFT] = false;

self.sprite[RIGHT] = spr_equipment_torch_right;
self.spriteBehind[RIGHT] = true;

self.sprite[UP] = spr_equipment_torch_up;
self.spriteBehind[UP] = true;

flame = noone;

useScript = scr_equipment_torch_use;
unequipScript = scr_equipment_torch_unequip;
dropScript = scr_equipment_torch_drop;