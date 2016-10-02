///scr_npc_commands_move(npc, arrivalScript, destinationX, destinationY, ignoreLifeforms)
    argument0.commandedMoveTo = true;
    
    //argument0.direction360 = point_direction(argument0.x, argument0.y, argument2, argument3);
    
    //with(argument0){
    //    scr_lifeform_update_face();
    //}
    
    if(global.gamePaused){
        scr_npc_find_path(argument0, argument0.path, argument1, argument2);
    }
        
    scr_npc_move_to(argument0,  argument2, argument3,
    argument1, MOVEMENT_ACCURACY, argument4, false, argument0.runSpeed);
