/// @description Insert description here
// You can write your code in this editor

if(!hasCalculated){

	var _possibleTargets = possibleTargets;
	var _possibleTargetsGUI = possibleTargetsGUI;

	var _x1 = x1;
	var _y1 = y1;
	var _x2 = x2;
	var _y2 = y2;
	var _x3 = x;
	var _y3 = y;

	with(obj_npc_Parent){
		if(point_in_triangle(x,y,_x1,_y1,_x2,_y2,_x3,_y3)){
			scr_linked_list_add(_possibleTargets, self);
			scr_linked_list_add(_possibleTargetsGUI, self);
		}
	}
	
	totalPossibleTargets = scr_linked_list_size(possibleTargets);
	
	hasCalculated = true;
}