///scr_npc_commands_move(npc, arrivalScript)
    argument0.commandedMoveTo = true;
    
    argument0.direction360 = point_direction(argument0.x, argument0.y, mouse_x, mouse_y);
    
    with(argument0){
        scr_lifeform_get_face();
    }
    
    scr_npc_move_to(argument0, scr_room_get_grid_x(mouse_x), scr_room_get_grid_y(mouse_y), 
    argument1, argument0.reach, true, false);
