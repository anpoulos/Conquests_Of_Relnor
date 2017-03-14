///Follow arguments

if(mouse_check_button(mb_middle)){
    scr_obj_move_at_speed_x_y(self, mouse_x, mouse_y, followSpeed);
}
else{
    if(!global.gamePaused){
        scr_obj_move_at_speed(self, target, followSpeed);
    }
}

