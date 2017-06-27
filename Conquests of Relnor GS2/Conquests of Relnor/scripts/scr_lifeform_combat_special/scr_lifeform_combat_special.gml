
if(currentSpecial == noone){
	return;
}

if(statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_ENERGY] < currentSpecial.requiredEnergy){
	return;
}

script_execute(currentSpecial.useScript);