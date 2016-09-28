///scr_npc_move_to(npc, x, y, endscript, accuracy, walkThroughNPCs, allowIdle, moveSpeed)

argument0.pathIndex = 0; 

if(!scr_npc_find_path(argument0, argument1, argument2)){
    argument0.moveToX = 0;
    argument0.moveToY = 0;
    return false;
}

//walk through NPCs
if(argument5){
    with(argument0){
        phy_active = false;    
        walkThroughNPCs = true;
    }
}

if(!argument6){
    argument0.alarm[1] = -1;
}

argument0.moveToX = argument1;
argument0.moveToY = argument2;
argument0.moveToEndScript = argument3;
argument0.moveToAccuracy = argument4;

argument0.moveInputs = scr_npc_set_directions_by_offset;
argument0.state = argument0.moveState;
argument0.currentMoveSpeed = argument7;

