///scr_lifeform_constructor_initialize_stats

for(var j = 0; j < STATS_PHYSICAL_MAX; j++){
	statsMax[STATS_PHYSICAL, j] = 0;
	statsCurrent[STATS_PHYSICAL, j] = 0;
	statsLevel[STATS_PHYSICAL, j] = 0;
}
for(var j = 0; j < STATS_COMMANDING_MAX; j++){
	statsMax[STATS_COMMANDING, j] = 0;
	statsCurrent[STATS_COMMANDING, j] = 0;
	statsLevel[STATS_COMMANDING, j] = 0;
}
for(var j = 0; j < STATS_TOOLS_MAX; j++){
	statsMax[STATS_TOOLS, j] = 0;
	statsCurrent[STATS_TOOLS, j] = 0;
	statsLevel[STATS_TOOLS, j] = 0;
}
for(var j = 0; j < STATS_INTELLIGENCE_MAX; j++){
	statsMax[STATS_INTELLIGENCE, j] = 0;
	statsCurrent[STATS_INTELLIGENCE, j] = 0;
	statsLevel[STATS_INTELLIGENCE, j] = 0;
}