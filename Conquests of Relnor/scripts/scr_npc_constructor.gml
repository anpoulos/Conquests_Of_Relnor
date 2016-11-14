///scr_npc_constructor(name, hitpoints, energy, reach, sight, wanderDistance, allegiance, allegianceRank)

self.name = argument0;
self.statsMax[STATS_HEALTH] = argument1;
self.statsCurrent[STATS_HEALTH] = argument1;
self.statsMax[STATS_ENERGY] = argument2;
self.statsCurrent[STATS_ENERGY] = argument2;
self.reach = argument3;
self.sight = argument4;
self.wanderDistance = argument5;
self.oldWanderDistance = self.wanderDistance;
self.wanderRadius = self.wanderDistance;
self.oldWanderRadius = self.wanderRadius;

self.allegiance = argument6;
switch(self.allegiance){ //auto declaration of enemies
    case ALLEGIANCE_BLUE:
        scr_npc_allegiance_blue_declare_enemies();
    break;
    case ALLEGIANCE_RED:
        scr_npc_allegiance_red_declare_enemies();
    break;
}
self.allegianceRank[self.allegiance] = argument7;

