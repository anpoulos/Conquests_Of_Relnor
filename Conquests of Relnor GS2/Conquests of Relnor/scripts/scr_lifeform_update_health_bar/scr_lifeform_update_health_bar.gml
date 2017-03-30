///scr_lifeform_update_health_bar(lifeform)
///@param lifeform

//healthbar has 9 states, 0-9 no fill to full fill

var hpRatio = argument0.statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_HEALTH] / argument0.statsMax[STATS_PHYSICAL, STATS_PHYSICAL_HEALTH];
var barState = round(hpRatio*9);

argument0.healthBarCurrentBar = barState;
argument0.energyBarCurrentBar = scr_lifeform_get_energy_bar_state(argument0);
argument0.healthBarIsVisible = true;

argument0.alarm[4] = room_speed*5;


