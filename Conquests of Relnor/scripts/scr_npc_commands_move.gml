///scr_npc_commands_move(npc, arrivalScript, destinationX, destinationY, ignoreLifeforms)
    argument0.commandedMoveTo = true;
    
    //argument0.direction360 = point_direction(argument0.x, argument0.y, argument2, argument3);
    
    //with(argument0){
    //    scr_lifeform_update_face();
    //}
    
    if(global.gamePaused){
        mp_grid_path(global.aiGrid, argument0.path, argument0.x, argument0.y, 
        argument2, argument3, true);
    }
        
    scr_npc_move_to(argument0,  argument2, argument3,
    argument1, MOVEMENT_ACCURACY, argument4, false, argument0.runSpeed);
