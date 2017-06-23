///@param mouseX
///@param mouseY

var _mouseX = argument0;
var _mouseY = argument1;

if(commandModule.engageRangeClicked){
	commandModule.engageRangeClicked = false;
	
	var _totalSelected = scr_linked_list_size(commandModule.selected);
	for(var i = 0; i < _totalSelected; i++){
		var _selectedNpc = scr_linked_list_get_next(commandModule.selected);
		if(_selectedNpc.previewEngageDistance > 0){
			_selectedNpc.engageDistance = _selectedNpc.previewEngageDistance;
			_selectedNpc.previewEngageDistance = 0;
		}
	}
	
	scr_player_command_menu_cleanup_for_cmd(COMMAND_ENGAGE_SET_RADIUS);
	
	return false;
}

if(commandModule.wanderRangeClicked){
	commandModule.wanderRangeClicked = false;
	
	var _totalSelected = scr_linked_list_size(commandModule.selected);
	for(var i = 0; i < _totalSelected; i++){
		var _selectedNpc = scr_linked_list_get_next(commandModule.selected);
		_selectedNpc.wanderDistance = min(commandModule.previewWanderDistance, _selectedNpc.sight);;
		_selectedNpc.originX = commandModule.wanderRangeX;
		_selectedNpc.originY = commandModule.wanderRangeY;
	}
	
	commandModule.wanderRangeX = 0;
	commandModule.wanderRangeY = 0;
	commandModule.previewWanderDistance = 0;
	
	scr_player_command_menu_cleanup_for_cmd(COMMAND_WANDER_SET_RADIUS);
	
	return false;
}

if(isBusy || scr_linked_list_size(ClickedUIObjects) > 0){

    while(scr_linked_list_size(ClickedUIObjects) > 0){
        var _uiObject = scr_linked_list_remove_next(ClickedUIObjects);
        //all objects in this list are from the clickable parent class
		if(MoveItem == noone || 
			(_uiObject == MoveItemButtonCurrent || _uiObject.object_index == obj_ui_party_character_panel)){
	        with(_uiObject){
				scr_ui_draw_clickable_clicked();
			}
		}
    }    

    return false;
}

if(!global.isWorldMap){
	//move units
	if(!stillSelecting){
		if(commandModule.mouseCommand != noone){
		
			var _originalMouseCommand = commandModule.mouseCommand;
			
			script_execute(commandModule.mouseCommand);
			
			switch(_originalMouseCommand){
				case scr_player_commands_attack_target:
					scr_player_command_menu_cleanup_for_cmd(COMMAND_ATTACK);
				break;
				
				case scr_player_commands_move_all:
					scr_player_command_menu_cleanup_for_cmd(COMMAND_MOVE);
				break;
				
				case scr_player_commands_follow:
					scr_player_command_menu_cleanup_for_cmd(COMMAND_FOLLOW);
				break;
				
				case scr_player_commands_square_formation:
					scr_player_command_menu_cleanup_for_cmd(COMMAND_FORMATION);
				break;
				
			}
			
		}
	}

	if(selectBox != noone){
		instance_destroy(selectBox);
		selectBox = noone;
		scr_player_command_menu_cleanup_for_cmd(COMMAND_SELECT_BOX);
		scr_player_command_menu_cleanup_for_cmd(COMMAND_DESELECT_BOX);
	}
}
else{
	var _cellX = scr_map_square_get_cell_coordinate(_mouseX);
	var _cellY = scr_map_square_get_cell_coordinate(_mouseY);
	var _point = instance_create(_cellX,_cellY,obj_point);
	var _square = scr_map_world_square_get_square(_point);
	instance_destroy(_point);
	
	if(_square != noone && scr_is_ancestor_or_is(_square.object_index, obj_map_world_square_clickable)){
		with(_square){
			scr_square_player_clicked_square();
		}
	}
	
}