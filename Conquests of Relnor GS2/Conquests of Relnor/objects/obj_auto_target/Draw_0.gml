/// @description Insert description here
// You can write your code in this editor

if(hasCalculated){

	draw_set_alpha(0.5);
	depth = 0;
	draw_triangle_color(x1,y1,x2,y2,x,y,c_blue,c_blue,c_blue,false);
	draw_set_alpha(1.0);

	for(var i = 0; i < totalPossibleTargets; i++){
		var _target = scr_linked_list_get_next(possibleTargetsGUI);
		if(_target != noone){
			depth = _target.depth + 1;
			draw_set_color(c_blue);
			draw_circle(_target.x, _target.y, _target.size div 2, false);
		}		
	}
	
	if(selectedTarget != noone){
		depth = selectedTarget.depth + 1;
		draw_set_color(c_red);
		draw_circle(selectedTarget.x, selectedTarget.y, selectedTarget.size div 2, false);
	}

}


