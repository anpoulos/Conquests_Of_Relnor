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
		if(scr_misc_allegiance_are_enemies(global.player.allegiance, allegiance) && 
		point_in_triangle(x,y,_x1,_y1,_x2,_y2,_x3,_y3)){
			scr_linked_list_add(_possibleTargets, self);
			scr_linked_list_add(_possibleTargetsGUI, self);
		}
	}
	
	totalPossibleTargets = scr_linked_list_size(possibleTargets);
	
	hasCalculated = true;
}
else{
	if(totalPossibleTargets > 0 &&
	(global.player.triggers[TRIGGER_RIGHT] || 
	global.player.triggers[TRIGGER_LEFT] || 
	global.player.triggers[TRIGGER_UP] || 
	global.player.triggers[TRIGGER_DOWN])){
		selectedTarget = scr_linked_list_get_next(possibleTargets);
			
		if(global.player.virtualMouse != noone){
			global.player.virtualMouse.mouseX = selectedTarget.x;
			global.player.virtualMouse.mouseY = selectedTarget.y;
		}
			
	}
		
	if(global.player.triggers[TRIGGER_USE]){
		global.player.autoTarget = selectedTarget;
		instance_destroy(global.player.autoTargetUI);
	}
			
}