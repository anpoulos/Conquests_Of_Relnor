/// @Constructor

event_inherited();

sprite[4] = noone;
itemStats[ITEM_STATS_TYPE] = ITEM_TYPE_CONSUMABLE;
uses = 0;

useScript = scr_item_consumable_use;
additionalScript = noone;

effectsIntelligence[STATS_INTELLIGENCE_MAX] = noone;
effectsPhysical[STATS_PHYSICAL_MAX] = noone;
effectsCommanding[STATS_COMMANDING_MAX] = noone;
effectsTools[STATS_TOOLS_MAX] = noone;

effectsIntelligenceHidden[STATS_INTELLIGENCE_MAX] = noone;
effectsPhysicalHidden[STATS_PHYSICAL_MAX] = noone;
effectsCommandingHidden[STATS_COMMANDING_MAX] = noone;
effectsToolsHidden[STATS_TOOLS_MAX] = noone;

scr_array_set_all_noone(effectsIntelligence,STATS_INTELLIGENCE_MAX);
scr_array_set_all_noone(effectsPhysical,STATS_COMMANDING_MAX);
scr_array_set_all_noone(effectsCommanding,STATS_COMMANDING_MAX);
scr_array_set_all_noone(effectsTools,STATS_TOOLS_MAX);

scr_array_set_all_noone(effectsIntelligenceHidden,STATS_INTELLIGENCE_MAX);
scr_array_set_all_noone(effectsPhysicalHidden,STATS_COMMANDING_MAX);
scr_array_set_all_noone(effectsCommandingHidden,STATS_COMMANDING_MAX);
scr_array_set_all_noone(effectsToolsHidden,STATS_TOOLS_MAX);

