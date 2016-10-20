///scr_lifeform_get_energy_bar_state(lifeform)
var _lifeform = argument0;

var _energyRatio = _lifeform.energy / _lifeform.maxEnergy;
var _barState = round(_energyRatio*9);

return _barState;
