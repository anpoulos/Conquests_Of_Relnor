///scr_player_mouse_global_right_button

if(!global.isWorldMap){
	if(isBusy){
	    return false;
	}

	if(scr_player_command_menu_is_current(COMMAND_DESELECT_BOX)) {
	    if(selectBox == noone){
	        selectBox = instance_create(mouse_x, mouse_y, obj_player_select_box);
	        selectBox.selectScript = scr_player_command_find_and_deselect;
	        selectBox.creator = self;
	        selectBox.originalX = mouse_x;
	        selectBox.originalY = mouse_y;
	    }
	    scr_obj_move_to(self.selectBox, mouse_x, mouse_y);
	}
	else{
	    var _selectedWithMouse = instance_position(mouse_x, mouse_y, obj_npc_Parent);
	    if(_selectedWithMouse != noone && instance_exists(_selectedWithMouse)){
	        stillSelecting = true;
	        scr_player_command_find_and_deselect(self, _selectedWithMouse);
	        alarm[3] = 2;
			scr_player_command_menu_cleanup_for_cmd(COMMAND_DESELECT_SINGLE);
	    }
	}
}


