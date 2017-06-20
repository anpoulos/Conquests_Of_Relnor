///scr_player_mouse_global_left_button_down

if(commandModule.primeWanderRangeClicked){
	commandModule.primeWanderRangeClicked = false;
	commandModule.wanderRangeX = mouse_x;
	commandModule.wanderRangeY = mouse_y;
	commandModule.wanderRangeClicked = true;
	
	return false;
}

	var _mouseX = device_mouse_x_to_gui(0);
	var _mouseY = device_mouse_y_to_gui(0);
	
	var _totalClickable = instance_number(obj_ui_clickable_parent);
	
	for(var i = 0; i < _totalClickable; i++){
	    var _uiObject = instance_find(obj_ui_clickable_parent, i);
		if(_uiObject.clickedScript == noone){
			continue;
		}
	    if(scr_ui_draw_is_visible(_uiObject)){
	        var _isInButton = point_in_rectangle(_mouseX, _mouseY, 
	        _uiObject.leftX, _uiObject.topY, _uiObject.rightX, _uiObject.bottomY);
	        if(_isInButton && 
				!scr_linked_list_exists(ClickedUIObjects, _uiObject) &&
				(MoveItem == noone || 
					_uiObject == MoveItemButtonCurrent || 
					_uiObject.object_index == obj_ui_party_character_panel)
					){
	            _uiObject.pressed = true; 
	            scr_linked_list_add(ClickedUIObjects, _uiObject);
	        }
			else{
				_uiObject.pressed = false;
			}
	    }
	}

    if(isBusy || scr_linked_list_size(ClickedUIObjects) > 0){
        return false;
    }

	if(!global.isWorldMap){
		if(scr_player_command_menu_is_current(COMMAND_SELECT_BOX) ||
		scr_player_command_menu_is_current(COMMAND_DESELECT_BOX)){
	        if(selectBox == noone){
	            selectBox = instance_create(mouse_x, mouse_y, obj_player_select_box);
	            selectBox.selectScript = scr_player_command_menu_is_current(COMMAND_DESELECT_BOX) ? 
					scr_player_command_find_and_deselect : 
					scr_player_command_select;
	            selectBox.creator = self;
	            selectBox.originalX = mouse_x;
	            selectBox.originalY = mouse_y;
	        }
	        scr_obj_move_to(selectBox, mouse_x, mouse_y);
	    }
		else if(commandModule.followButtonClicked){
	
		}
	    else{
	        var _selected = instance_position(mouse_x, mouse_y, obj_npc_Parent);
	        if(_selected != noone && 
	        instance_exists(_selected) && 
	        (_selected.allegiance == allegiance || _selected.allegiance == ALLEGIANCE_NEUTRAL)){
	            stillSelecting = true;
				if(scr_player_command_menu_is_current(COMMAND_DESELECT_SINGLE)){
					scr_player_command_find_and_deselect(self, _selected);
				scr_player_command_menu_cleanup_for_cmd(COMMAND_DESELECT_SINGLE);
				}
				else{
					scr_player_command_select(self, _selected);
				scr_player_command_menu_cleanup_for_cmd(COMMAND_SELECT_SINGLE);
				}
	            alarm[3] = 2;
	        }
	    }
	}
