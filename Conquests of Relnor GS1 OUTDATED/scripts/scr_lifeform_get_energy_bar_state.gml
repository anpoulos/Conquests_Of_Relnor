///scr_lifeform_get_energy_bar_state(lifeform)
var _lifeform = argument0;

var _energyRatio = _lifeform.statsCurrent[STATS_PHYSICAL, STATS_PHYSICAL_ENERGY] / _lifeform.statsMax[STATS_PHYSICAL, STATS_PHYSICAL_ENERGY];
var _barState = round(_energyRatio*9);

return _barState;
