///scr_npc_move_to(npc, x, y, endscript, accuracy, walkThroughNPCs, allowIdle, moveSpeed)
///@param npc
///@param x
///@param y
///@param endscript
///@param accuracy
///@param walkThroughNPCs
///@param allowIdle
///@param moveSpeed

argument0.pathIndex = 0; 

if(!scr_npc_find_path(argument0, argument0.path, argument1, argument2)){
   return false;
}
argument0.moveToX = argument1;
argument0.moveToY = argument2;

//walk through NPCs
if(argument5){
    with(argument0){
        //phy_active = false;    
        walkThroughNPCs = true;
    }
}

if(!argument6){
    argument0.alarm[1] = -1;
}

argument0.moveToEndScript = argument3;
argument0.moveToAccuracy = argument4;

argument0.moveInputs = scr_npc_set_directions_by_offset;
argument0.state = argument0.moveState;
argument0.currentMoveSpeed = 1;
argument0.moveSpeed = argument7;

