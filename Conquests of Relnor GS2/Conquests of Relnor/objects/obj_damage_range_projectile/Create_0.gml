///Create

event_inherited();

sprites[DOWN] = noone;
sprites[LEFT] = noone;
sprites[RIGHT] = noone;
sprites[UP] = noone;

initialSpeed = 30;
maxSpeed = 30;

//overrides
self.arrivalScript = scr_lifeform_damage_projectile_arrival;

