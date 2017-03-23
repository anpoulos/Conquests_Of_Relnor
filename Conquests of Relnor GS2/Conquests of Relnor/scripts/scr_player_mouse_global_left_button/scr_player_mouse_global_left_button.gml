///scr_player_mouse_global_left_button_down

	
	var _mouseX = device_mouse_x_to_gui(0);
	var _mouseY = device_mouse_y_to_gui(0);
	
	for(var i = 0; i < instance_number(obj_ui_clickable_parent); i++){
	    var _uiObject = instance_find(obj_ui_clickable_parent, i);
		if(_uiObject.clickedScript == noone || _uiObject.alarm[0] > 0){
			continue;
		}
	    if(scr_ui_draw_is_visible(_uiObject)){
	        var _isInButton = point_in_rectangle(_mouseX, _mouseY, 
	        _uiObject.leftX, _uiObject.topY, _uiObject.rightX, _uiObject.bottomY);
	        if(_isInButton){
	            _uiObject.pressed = true; 
	            scr_linked_list_add(ClickedUIObjects, _uiObject);
	        }
	    }
	}

    if(isBusy || scr_linked_list_size(ClickedUIObjects) > 0){
        return false;
    }

    if(keyboard_check(ord("R"))){
        if(self.selectBox == noone && !instance_exists(self.selectBox)){
            self.selectBox = instance_create(mouse_x, mouse_y, obj_player_select_box);
            self.selectBox.selectScript = scr_player_command_select;
            self.selectBox.creator = self;
            self.selectBox.originalX = mouse_x;
            self.selectBox.originalY = mouse_y;
        }
        scr_obj_move_to(self.selectBox, mouse_x, mouse_y);
    }
    else{
        var _selected = instance_position(mouse_x, mouse_y, obj_npc_Parent);
        if(_selected != noone && 
        instance_exists(_selected) && 
        (_selected.allegiance == allegiance || _selected.allegiance == ALLEGIANCE_NEUTRAL)){
            self.stillSelecting = true;
            scr_player_command_select(self, _selected);
            alarm[3] = 2;
        }
    }

