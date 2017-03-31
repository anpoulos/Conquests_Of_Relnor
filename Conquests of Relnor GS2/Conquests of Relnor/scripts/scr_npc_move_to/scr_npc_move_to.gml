///scr_npc_move_to(npc, x, y, endscript, accuracy, walkThroughNPCs, allowIdle, moveSpeed)
///@param npc 0
///@param x 1
///@param y 2
///@param endscript 3
///@param accuracy 4
///@param walkThroughNPCs 5
///@param allowIdle 6
///@param moveSpeed 7
///@param maxPathDistance 8

argument0.pathIndex = 0; 

if(!scr_npc_find_path(argument0, argument0.path, argument1, argument2)){
	path_clear_points(argument0.path);
	return false;
}

var _d = argument8;

//var _currentReduction = 10;
//var _distance = point_distance(argument0.x, argument0.y, argument1, argument2) - _currentReduction;
//while(path_get_length(argument0.path) > argument8 && _distance > 100){
//	//direction from npc to destined coords
//	var _direction = point_direction(argument0.x, argument0.y, argument1, argument2);
//	var _newX = argument0.x + dcos(_direction)*_distance;
//	var _newY = argument0.y - dsin(_direction)*_distance;
//	if(!scr_npc_find_path(argument0, argument0.path, _newX, _newY)){
//		path_clear_points(argument0.path);
//		return false;
//	}
//	_distance -= _currentReduction;
//}

//if(path_get_length(argument0.path) > argument8){
//	path_clear_points(argument0.path);
//	return false;
//}

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

