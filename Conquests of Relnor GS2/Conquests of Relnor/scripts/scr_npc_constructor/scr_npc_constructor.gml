///scr_npc_constructor(name, hitpoints, energy, reach, sight, wanderDistance, allegiance, allegianceRank)
///@param name 0 
///@param hitpoints 1
///@param energy 2
///@param reach 3
///@param sight 4
///@param wanderDistance 5
///@param allegiance 6
///@param allegianceRank 7


self.name = argument0;
self.statsMax[STATS_PHYSICAL, STATS_PHYSICAL_HEALTH] = argument1;
self.statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_HEALTH] = argument1;
self.statsMax[STATS_PHYSICAL, STATS_PHYSICAL_ENERGY] = argument2;
self.statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_ENERGY] = argument2;
self.reach = argument3;
self.sight = argument4;
self.wanderDistance = argument5;
self.oldWanderDistance = self.wanderDistance;
self.wanderRadius = self.wanderDistance;
self.oldWanderRadius = self.wanderRadius;

self.allegiance = argument6;
self.allegianceRank[self.allegiance] = argument7;

