///scr_npc_constructor(name, hitpoints, energy, reach, sight, wanderDistance, allegiance, allegianceRank)

self.name = argument0;
self.hitpoints = argument1;
self.maxHitpoints = argument1;
self.enery = argument2;
self.reach = argument3;
self.sight = argument4;
self.wanderDistance = argument5;
self.oldWanderDistance = self.wanderDistance;
self.wanderRadius = self.wanderDistance;
self.allegiance = argument6;
self.allegianceRank[self.allegiance] = argument7;
