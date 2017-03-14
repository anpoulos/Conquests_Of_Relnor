///Create
event_inherited();

depth = -y;

//overrides
self.accuracy = 10;

self.sprites[FACE_DOWN] = spr_equipment_projectile_arrow_down;
self.sprites[FACE_LEFT] = spr_equipment_projectile_arrow_left;
self.sprites[FACE_RIGHT] = spr_equipment_projectile_arrow_right;
self.sprites[FACE_UP] = spr_equipment_projectile_arrow_up;

self.sprites[FACE_DOWNLEFT] = spr_equipment_projectile_arrow_down_left;
self.sprites[FACE_DOWNRIGHT] = spr_equipment_projectile_arrow_down_right;
self.sprites[FACE_UPPERLEFT] = spr_equipment_projectile_arrow_up_left;
self.sprites[FACE_UPPERRIGHT] = spr_equipment_projectile_arrow_up_right;

self.initialSpeed = 30;
self.maxSpeed = initialSpeed;

self.knockback = 6;

