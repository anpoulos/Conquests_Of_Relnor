///@param mouseX
///@param mouseY

var _mouseX = argument0;
var _mouseY = argument1;

if(!global.isWorldMap){
	if(isBusy){
	    return false;
	}

	if(scr_player_command_menu_is_current(COMMAND_DESELECT_BOX)) {
	    if(selectBox == noone){
	        selectBox = instance_create(_mouseX, _mouseY, obj_player_select_box);
	        selectBox.selectScript = scr_player_command_find_and_deselect;
	        selectBox.creator = self;
	        selectBox.originalX = _mouseX;
	        selectBox.originalY = _mouseY;
	    }
	    scr_obj_move_to(self.selectBox, _mouseX, _mouseY);
	}
	else{
	    var _selectedWithMouse = instance_position(_mouseX, _mouseY, obj_npc_Parent);
	    if(_selectedWithMouse != noone && instance_exists(_selectedWithMouse)){
	        stillSelecting = true;
	        scr_player_command_find_and_deselect(self, _selectedWithMouse);
	        alarm[3] = 2;
			scr_player_command_menu_cleanup_for_cmd(COMMAND_DESELECT_SINGLE);
	    }
	}
}


