///Create
event_inherited();

depth = -y;

//overrides
self.accuracy = 10;

self.sprites[FACE_DOWN] = sprite_index;
self.sprites[FACE_LEFT] = sprite_index;
self.sprites[FACE_RIGHT] = sprite_index;
self.sprites[FACE_UP] = sprite_index;

self.sprites[FACE_DOWNLEFT] = sprite_index;
self.sprites[FACE_DOWNRIGHT] = sprite_index;
self.sprites[FACE_UPPERLEFT] = sprite_index;
self.sprites[FACE_UPPERRIGHT] = sprite_index;

self.initialSpeed = 15;
self.maxSpeed = initialSpeed;

self.knockback = 3;
self.amount = 4;
self.energyCost = 20;

light = instance_create(x,y,obj_map_light_spell_fire_small);