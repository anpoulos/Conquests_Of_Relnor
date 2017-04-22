///@param troop_center

var _troopCenter = argument0;
var _campsTotal = scr_linked_list_size(_troopCenter.camps);

for(var i = 0; i < _campsTotal; i++){
	var _campPoint = scr_linked_list_get_next(_troopCenter.camps);
	var _camp = scr_map_world_square_get_square(_campPoint);
	
	if(_camp.allegiance = _troopCenter.allegiance && _camp.units < SQUARE_UNITS_MAX*2){
		_camp.units += _troopCenter.output;
	}
	
}