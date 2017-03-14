///Create
event_inherited();

//Overrides
self.weaponType = WEAPON_TYPE_MELEE;
self.icon = spr_equipment_iron_sword_icon;

//Sprites
self.sprite[DOWN] = spr_equipment_iron_sword_down;
self.spriteBehind[DOWN] = false;

self.sprite[LEFT] = spr_equipment_iron_sword_left;
self.spriteBehind[LEFT] = true;

self.sprite[RIGHT] = spr_equipment_iron_sword_right;
self.spriteBehind[RIGHT] = false;

self.sprite[UP] = spr_equipment_iron_sword_up;
self.spriteBehind[UP] = false;



