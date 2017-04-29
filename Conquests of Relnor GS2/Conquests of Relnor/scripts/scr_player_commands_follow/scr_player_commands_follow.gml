

commandModule.followButtonClicked = false;

for(var i = 0; i < commandModule.totalSelected; i++){
	var _selected = scr_linked_list_get_next(commandModule.selected);
	_selected.followTarget = commandModule.followTarget;
	_selected.state = scr_npc_choose_next_state;
}
commandModule.mouseCommand = noone;
commandModule.followTarget = noone;