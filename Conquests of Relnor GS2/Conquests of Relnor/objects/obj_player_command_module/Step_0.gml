/// @description Insert description here
// You can write your code in this editor

var _mouseX = player.virtualMouse == noone ? mouse_x : player.virtualMouse.mouseX;
var _mouseY = player.virtualMouse == noone ? mouse_y : player.virtualMouse.mouseY;

if(engageRangeClicked){
	var _totalSelected = scr_linked_list_size(selected);
	var _newEngageDistance = point_distance(player.x, player.y, _mouseX, _mouseY);
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
	previewWanderDistance = point_distance(wanderRangeX, wanderRangeY, _mouseX, _mouseY);
}