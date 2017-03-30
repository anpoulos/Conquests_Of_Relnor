

commandModule.followButtonClicked = false;

for(var i = 0; i < commandModule.totalSelected; i++){
	var _selected = scr_linked_list_get_next(commandModule.selected);
	if(commandModule.followTarget != noone){
		scr_npc_commands_move(_selected, scr_npc_choose_next_state, 
			commandModule.followTarget.x, commandModule.followTarget.y, false);
	}
	_selected.followTarget = commandModule.followTarget;
}
commandModule.mouseCommand = noone;
commandModule.followTarget = noone;