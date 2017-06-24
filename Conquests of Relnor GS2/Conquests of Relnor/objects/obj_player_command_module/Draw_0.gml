///Draw engage circles and selection

//var _engageCircleAlpha = 0.2/self.totalSelectedWithEngage;
//var _wanderCircleAlpha = 0.2/self.totalSelectedWithWander;

if(global.isWorldMap || player == noone){
	return true;
}

var _mouseX = player.virtualMouse == noone ? mouse_x : player.virtualMouse.mouseX;
var _mouseY = player.virtualMouse == noone ? mouse_y : player.virtualMouse.mouseY;

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
        draw_circle_colour(_currentNPC.x,_currentNPC.y, _currentNPC.engageDistance, 
        c_red, c_red, true);
    }
    if(_currentNPC.wanderDistance > 0){
        draw_set_alpha(0.7);
        draw_circle_colour(_currentNPC.originX,_currentNPC.originY, _currentNPC.wanderDistance, 
        c_yellow, c_yellow, true);
    }
	if(_currentNPC.previewEngageDistance > 0){
        draw_set_alpha(0.7);
        draw_circle_colour(_currentNPC.x,_currentNPC.y, _currentNPC.previewEngageDistance, 
        c_orange, c_orange, true);
	}
	if(global.debug == 1){
		var _string = string(_currentNPC.wanderDistance);
		draw_text(_currentNPC.x, _currentNPC.y + _currentNPC.size, _string);
	}
	
    draw_set_alpha(1);
}

if(wanderRangeClicked){
    draw_set_alpha(0.7);
	draw_circle_color(wanderRangeX, wanderRangeY, previewWanderDistance, 
	c_white, c_white, true);
    draw_set_alpha(1);
}

///Draw mouse pointers

if(player.commandMenu != noone && player.commandMenu.currentCommand != noone){
	switch(player.commandMenu.currentCommand){
		case COMMAND_FOLLOW:
			draw_circle_color(_mouseX, _mouseY, 20, c_green, c_green, true);
			var _potentialFollow = instance_position(_mouseX, _mouseY, obj_Lifeform_Parent);
			if(instance_exists(_potentialFollow)){
				followTarget = _potentialFollow;
				        draw_sprite(spr_player_command_module_mouse_follow, 0, _mouseX, _mouseY);
			}
			else{
				followTarget = noone;
			}
		break;
		
		case COMMAND_ATTACK:
			var _potentialEnemy = instance_position(_mouseX, _mouseY, obj_Lifeform_Parent);
	
			if(totalSelected > 0 && 
			instance_exists(_potentialEnemy) && 
			scr_misc_allegiance_are_enemies(player.allegiance, _potentialEnemy.allegiance)){
			    draw_sprite(spr_player_command_module_mouse_enemy, 0, _potentialEnemy.x, _potentialEnemy.y);
				attackTarget = _potentialEnemy;
				mouseCommand = scr_player_commands_attack_target;
			}
		break;
		
		default:
			attackTarget = noone;
		    switch(mouseCommand){
		        case scr_player_commands_move_all:
		            draw_sprite(spr_player_command_module_mouse_move_all, 0, _mouseX, _mouseY);
		        break;
		    }
		break;
	}
}
else if(primeWanderRangeClicked){
	draw_sprite(spr_command_module_set_wander, 0, _mouseX, _mouseY);
}
else{
	attackTarget = noone;
	switch(mouseCommand){
		case scr_player_commands_move_all:
		    draw_sprite(spr_player_command_module_mouse_move_all, 0, _mouseX, _mouseY);
		break;
	}
}





