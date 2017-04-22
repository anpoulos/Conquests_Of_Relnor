
var _totalTroops = instance_number(obj_map_world_square_troop);
var _totalCamps = instance_number(obj_map_world_square_camp);

for(var i = 0; i < _totalCamps; i++){
	var _camp = instance_find(obj_map_world_square_camp, i);
	scr_linked_list_clear(_camp.troops);
}

for(var i = 0; i < _totalTroops; i++){
	var _troop = instance_find(obj_map_world_square_troop, i);
	
	var _closestCamp = noone;
	var _closestCampDistance = MAX;
	for(var j = 0; j < _totalCamps; j++){
		var _camp = instance_find(obj_map_world_square_camp, j);
		var _distance = point_distance(_troop.x, _troop.y, _camp.x, _camp.y);
		
		if(_camp.allegiance == _troop.allegiance && _distance < _closestCampDistance){
			_closestCamp = _camp;
			_closestCampDistance = _distance;
		}
	}
	
	if(_closestCamp != noone){
		scr_square_camp_attach_troop(_closestCamp, _troop);
	}
	
}