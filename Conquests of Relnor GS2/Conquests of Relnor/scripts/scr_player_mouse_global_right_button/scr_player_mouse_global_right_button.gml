///scr_player_mouse_global_right_button

if(isBusy){
    return false;
}

if(keyboard_check( ord("R"))) {
    if(self.selectBox == noone && !instance_exists(self.selectBox)){
        self.selectBox = instance_create(mouse_x, mouse_y, obj_player_select_box);
        self.selectBox.selectScript = scr_player_command_find_and_deselect;
        self.selectBox.creator = self;
        self.selectBox.originalX = mouse_x;
        self.selectBox.originalY = mouse_y;
    }
    scr_obj_move_to(self.selectBox, mouse_x, mouse_y);
}
else{
    var _selectedWithMouse = instance_position(mouse_x, mouse_y, obj_npc_Parent);
    if(_selectedWithMouse != noone && instance_exists(_selectedWithMouse)){
        self.stillSelecting = true;
        scr_player_command_find_and_deselect(self, _selectedWithMouse);
        alarm[3] = 2;
    }
}

