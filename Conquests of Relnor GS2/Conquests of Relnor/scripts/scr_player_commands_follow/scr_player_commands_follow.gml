

commandModule.followButtonClicked = false;

for(var i = 0; i < commandModule.totalSelected; i++){
	var _selected = scr_linked_list_get_next(commandModule.selected);
	if(commandModule.followTarget != noone){
	
		var _followTarget = commandModule.followTarget;
		
		var _angle = point_direction(_followTarget.x, _followTarget.y, _selected.x, _selected.y);
		var _offset = _followTarget.size*2;
		var _x = _followTarget.x + _offset*dcos(_angle);
		var _y = _followTarget.y - _offset*dsin(_angle);
		
		scr_npc_commands_move(_selected, scr_npc_choose_next_state, 
			_x, _y, false);
	}
	_selected.followTarget = commandModule.followTarget;
}
commandModule.mouseCommand = noone;
commandModule.followTarget = noone;