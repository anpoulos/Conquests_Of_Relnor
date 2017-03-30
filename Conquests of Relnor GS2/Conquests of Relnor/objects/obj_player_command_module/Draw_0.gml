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
	
	if(_currentNPC.followTarget != noone){
		draw_line_color(_currentNPC.x, _currentNPC.y, 
			_currentNPC.followTarget.x, _currentNPC.followTarget.y,
			c_blue, c_blue);
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
	
	if(global.debug > 0 && _currentNPC.waitForX != noone){
		draw_line_color(_currentNPC.x, _currentNPC.y, _currentNPC.waitForX, _currentNPC.waitForY, c_red, c_red);
	}
	
    draw_set_alpha(1);
}

///Draw mouse pointers

if(followButtonClicked && totalSelected > 0){
	draw_circle_color(mouse_x, mouse_y, 20, c_green, c_green, true);
	var _potentialFollow = instance_position(mouse_x, mouse_y, obj_Lifeform_Parent);
	if(instance_exists(_potentialFollow)){
		followTarget = _potentialFollow;
	            draw_sprite(spr_player_command_module_mouse_follow, 0, mouse_x, mouse_y);
	}
	else{
		followTarget = noone;
	}
}
else{
	var _potentialEnemy = instance_position(mouse_x, mouse_y, obj_Lifeform_Parent);
	if(totalSelected > 0 && instance_exists(_potentialEnemy) && _potentialEnemy.allegiance != player.allegiance){
	    draw_sprite(spr_player_command_module_mouse_enemy, 0, _potentialEnemy.x, _potentialEnemy.y);
		attackTarget = _potentialEnemy;
		mouseCommand = scr_player_commands_attack_target;
	}
	else{
		attackTarget = noone;
	    switch(mouseCommand){
	        case scr_player_commands_move_all:
	            draw_sprite(spr_player_command_module_mouse_move_all, 0, mouse_x, mouse_y);
	        break;
	    }
	}
}



