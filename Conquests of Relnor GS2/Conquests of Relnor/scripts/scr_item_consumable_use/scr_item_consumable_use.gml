
if(effectsIntelligence != noone){
	for(var i = 0; i < STATS_INTELLIGENCE_MAX; i++){
		scr_lifeform_increase_current_stat(owner, STATS_INTELLIGENCE, i, effectsIntelligence[i]);
	}
}

if(effectsCommanding != noone){
	for(var i = 0; i < STATS_COMMANDING; i++){
		scr_lifeform_increase_current_stat(owner, STATS_COMMANDING, i, effectsCommanding[i]);
	}
}

if(effectsPhysical != noone){
	for(var i = 0; i < STATS_PHYSICAL; i++){
		scr_lifeform_increase_current_stat(owner, STATS_PHYSICAL, i, effectsPhysical[i]);
	}
}

if(effectsTools != noone){
	for(var i = 0; i < STATS_TOOLS; i++){
		scr_lifeform_increase_current_stat(owner, STATS_TOOLS, i, effectsTools[i]);
	}
}

if(additionalScript != noone){
	script_execute(additionalScript);
}

uses -= 1;

if(uses == 0){
	for(var i = 0; i < INVENTORY_MAX; i++){
		var _item = owner.inventory[i];
		if(_item == self){
			owner.inventory[i] = noone;
			instance_destroy();
		}
	}
}
