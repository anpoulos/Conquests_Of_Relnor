///scr_lifeform_constructor_initialize_stats

for(var i = 0; i < STATS_MAX; i++){
    statsCurrent[i] = noone;
}

for(var i = 0; i < STATS_MAX; i++){
    statsMax[i] = noone;
}

for(var i = 0; i < STATS_PHYSICAL_MAX; i++){
    statsMax[STATS_PHYSICAL, i] = noone;
    statsCurrent[STATS_PHYSICAL, i] = noone;
}

for(var i = 0; i < STATS_COMMANDING_MAX; i++){
    statsMax[STATS_COMMANDING, i] = noone;
    statsCurrent[STATS_COMMANDING, i] = noone;
}

for(var i = 0; i < STATS_TOOLS_MAX; i++){
    statsMax[STATS_TOOLS, i] = noone;
    statsCurrent[STATS_TOOLS, i] = noone;
}

for(var i = 0; i < STATS_INTELLIGENCE_MAX; i++){
    statsMax[STATS_INTELLIGENCE, i] = noone;
    statsCurrent[STATS_INTELLIGENCE, i] = noone;
}
