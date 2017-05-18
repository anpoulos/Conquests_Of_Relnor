/// @description Insert description here
// You can write your code in this editor

if(engageRangeClicked){
	var _totalSelected = scr_linked_list_size(selected);
	var _newEngageDistance = point_distance(player.x, player.y, mouse_x, mouse_y);
	for(var i = 0; i < _totalSelected; i++){
		var _selectedNpc = scr_linked_list_get_next(selected);
		if(instance_exists(_selectedNpc) && 
		player.allegianceRank > _selectedNpc.allegianceRank &&
		_newEngageDistance < _selectedNpc.sight){
			_selectedNpc.previewEngageDistance = _newEngageDistance;
		}
	}
}
else if(wanderRangeClicked){
	previewWanderDistance = point_distance(wanderRangeX, wanderRangeY, mouse_x, mouse_y);
}