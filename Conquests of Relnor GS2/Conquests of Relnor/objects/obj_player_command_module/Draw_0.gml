///Draw engage circles and selection

//var _engageCircleAlpha = 0.2/self.totalSelectedWithEngage;
//var _wanderCircleAlpha = 0.2/self.totalSelectedWithWander;

for(var i = 0; i < scr_linked_list_size(self.selected); i++){
    var _currentNPC = scr_linked_list_get_next(self.selected);
    if(_currentNPC.isDefensive){
        draw_circle_colour(_currentNPC.x, _currentNPC.y, 10, c_red, c_red, true);
    }
    else{
        draw_circle(_currentNPC.x, _currentNPC.y, 10, true);
    }
    
    if(_currentNPC.commandedMoveTo){
        draw_line_colour(_currentNPC.x, _currentNPC.y, 
                        _currentNPC.moveToX, _currentNPC.moveToY,
                        c_green, c_green);
        draw_circle_colour(_currentNPC.moveToX, _currentNPC.moveToY, 
                            10, c_green, c_green, true);
    }
    
    if(_currentNPC.isAggressive){
        draw_set_alpha(0.7);
        draw_circle_colour(_currentNPC.x,_currentNPC.y, _currentNPC.sight, 
        c_red, c_red, true);
    }
    if(_currentNPC.wanderDistance > 0){
        draw_set_alpha(0.7);
        draw_circle_colour(_currentNPC.originX,_currentNPC.originY, _currentNPC.wanderDistance, 
        c_yellow, c_yellow, true);
    }
    draw_set_alpha(1);
}

///Draw mouse pointers

var _potentialEnemy = instance_position(mouse_x, mouse_y, obj_npc_Parent);
if(totalSelected > 0 && instance_exists(_potentialEnemy) && _potentialEnemy.allegiance != player.allegiance){
    draw_sprite(spr_player_command_module_mouse_enemy, 0, _potentialEnemy.x, _potentialEnemy.y);
}
else{
    switch(mouseCommand){
        case scr_player_commands_move_all:
            draw_sprite(spr_player_command_module_mouse_move_all, 0, mouse_x, mouse_y);
        break;
    }
}



