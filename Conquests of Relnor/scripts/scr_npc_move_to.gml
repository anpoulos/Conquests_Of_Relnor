///scr_npc_move_to(npc, x, y, endscript, accuracy, walkThroughNPCs, allowIdle)

//collisions off
if(!argument5){
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
